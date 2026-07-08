import random
import pandas as pd

from faker import Faker

from config import INPUT_DIR, NUM_CUSTOMERS

from faker_utils import get_phone, get_pan

fake = Faker("en_IN")


records = []

occupations = [
    "Software Engineer",
    "Doctor",
    "Teacher",
    "Lawyer",
    "Business",
    "Farmer",
    "Student",
    "Government Employee",
]

for customer_id in range(1, NUM_CUSTOMERS + 1):

    profile = fake.simple_profile()

    income = random.randint(300000, 4000000)

    records.append(
        {
            "customer_id": customer_id,
            "first_name": profile["name"].split()[0],
            "last_name": profile["name"].split()[-1],
            "gender": profile["sex"],
            "date_of_birth": profile["birthdate"],
            "email": profile["mail"],
            "phone": get_phone(),
            "pan_number": get_pan(),
            "occupation": random.choice(occupations),
            "annual_income": income,
            "city": fake.city(),
            "state": fake.state(),
            "country": "India",
            "customer_since": fake.date_between(
                start_date="-10y",
                end_date="-1y"
            ),
            "last_updated": fake.date_time_this_year(),
        }
    )

df = pd.DataFrame(records)

df.to_csv(
    INPUT_DIR / "customers.csv",
    index=False
)

print(df.head())
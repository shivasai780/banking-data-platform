from faker import Faker
import random

fake = Faker("en_IN")


def get_phone():
    return fake.msisdn()[:10]


def get_pan():
    letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    return (
        random.choice(letters)
        + random.choice(letters)
        + random.choice(letters)
        + random.choice(letters)
        + random.choice(letters)
        + str(random.randint(1000, 9999))
        + random.choice(letters)
    )
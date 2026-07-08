from pathlib import Path

# Root Folder
BASE_DIR = Path(__file__).resolve().parents[2]

INPUT_DIR = BASE_DIR / "data" / "input"

INPUT_DIR.mkdir(parents=True, exist_ok=True)

# Number of records

NUM_CUSTOMERS = 1000

MAX_ACCOUNTS_PER_CUSTOMER = 3

MAX_LOANS_PER_CUSTOMER = 2

MAX_CARDS_PER_CUSTOMER = 2

MAX_TRANSACTIONS_PER_ACCOUNT = 300
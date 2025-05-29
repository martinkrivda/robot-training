import os
from dotenv import load_dotenv

# Načte proměnné prostředí ze souboru .env
# Funkce load_dotenv() hledá soubor .env v aktuálním adresáři
# nebo v nadřazených adresářích.
load_dotenv(override=True)

# Získá hodnoty proměnných prostředí
VALIDUSER = os.getenv("VALIDUSER")
VALIDPASSWORD = os.getenv("VALIDPASSWORD")
USER = os.getenv("USER")
FILE_PATH = os.getenv("FILE_PATH")

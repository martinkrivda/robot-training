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
APP_INSTANCE_URL = os.getenv("APP_INSTANCE_URL")
COMPANY_ID = os.getenv("COMPANY_ID")
SIGNOFF_SCHEMA = os.getenv("SIGNOFF_SCHEMA")
DOWNLOAD_DIR = os.getenv("DOWNLOAD_DIR")
JIRA_URL = os.getenv("JIRA_URL")
JIRA_TOKEN = os.getenv("JIRA_TOKEN")
JIRA_PROJECT = os.getenv("JIRA_PROJECT")

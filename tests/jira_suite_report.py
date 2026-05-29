import os
import sys
import ast
import requests
from dotenv import load_dotenv

# =======================================================
# NAČTENÍ KONFIGURACE (ENV)
# =======================================================
load_dotenv()

TOKEN = os.getenv("JIRA_TOKEN")
PROJECT_KEY = os.getenv("JIRA_PROJECT")

# Pevné konfigurace pro projekt od admina
CLOUD_ID = "aa64adb2-9ca5-4a2c-b2fd-bc8493402790"
ZAKAZKA_ID = "10131"        # ID pro "01000 - ISS Europe BPE"

# =======================================================
# NAČTENÍ A OČIŠTĚNÍ VSTUPŮ Z ROBOT FRAMEWORKU
# =======================================================
failed_tests_raw = sys.argv[1] if len(sys.argv) > 1 else ""
screenshots_raw = sys.argv[2] if len(sys.argv) > 2 else ""
app_version_raw = sys.argv[3] if len(sys.argv) > 3 else "Neznámá verze"

# Dokonalé očištění verze od všech vnějších uvozovek
app_version = app_version_raw.strip('\'" ')

# Odstranění uvozovek, závorek a rozsekání textu podle oddělovače '||'
clean_failed_str = failed_tests_raw.strip('\'" []')
raw_parts = clean_failed_str.split('||')

# KLÍČOVÁ OPRAVA: .strip('|\'" ') vymaže i zbloudilé svislé čáry '|' a uvozovky
parts = [p.strip('|\'" ') for p in raw_parts if p.strip()]

# Bezpečné parsování seznamu screenshotů
screenshots_raw = screenshots_raw.strip()
if screenshots_raw.startswith('[') and screenshots_raw.endswith(']'):
    try:
        screenshots = ast.literal_eval(screenshots_raw)
    except Exception:
        screenshots = [s.strip('\'" ') for s in screenshots_raw.strip('[]').split('||') if s.strip()]
else:
    screenshots = [s.strip('\'" ') for s in screenshots_raw.split('||') if s.strip()]

# =======================================================
# SESTAVENÍ TEXTU PRO JIRU (SUMMARY & DESCRIPTION)
# =======================================================

# Titulek lístku s garantovanou jednou sadou uvozovek kolem verze
summary = f'Automatický report selhání testů ("{app_version}")'

# Základní hlavička popisu
description = f'Verze testované aplikace: "{app_version}"\n'
description += 'Testovací sada: "Tests"\n'
description += '=======================================================\n\n'

# Sestavení číslovaného seznamu podle nového formátu:
# 1. řádek: číslo. jméno.robot
# 2. řádek: jméno test case --> chyba
idx = 1
for i in range(0, len(parts), 3):
    if i + 2 < len(parts):
        suite_file = parts[i]
        test_name = parts[i+1]
        test_error = parts[i+2]

        description += f"{idx}. {suite_file}\n"
        description += f"{test_name} --> {test_error}\n\n"
        idx += 1

# =======================================================
# ODESLÁNÍ DO JIRA API (VYTVOŘENÍ TICKETU)
# =======================================================
create_url = f"https://api.atlassian.com/ex/jira/{CLOUD_ID}/rest/api/2/issue"

headers = {
    "Authorization": f"Bearer {TOKEN}",
    "Content-Type": "application/json"
}

payload = {
    "fields": {
        "project": {
            "key": PROJECT_KEY
        },
        "summary": summary,
        "description": description,
        "issuetype": {
            "name": "Estimate"
        },
        "customfield_10063": {
            "id": ZAKAZKA_ID
        },
        "customfield_10078": {
            "id": "10335"           # Typ: Chyba
        }
    }
}

response = requests.post(create_url, json=payload, headers=headers)

if response.status_code not in [200, 201]:
    raise Exception(f"Jira API Error při vytváření ticketu ({response.status_code}): {response.text}")

issue_key = response.json()["key"]
print(f"Created Jira issue: {issue_key}")

# =======================================================
# NAHRÁVÁNÍ SCREENSHOTŮ
# =======================================================
attach_url = f"https://api.atlassian.com/ex/jira/{CLOUD_ID}/rest/api/2/issue/{issue_key}/attachments"

attach_headers = {
    "Authorization": f"Bearer {TOKEN}",
    "X-Atlassian-Token": "no-check"
}

for screenshot in screenshots:
    screenshot_path = str(screenshot).strip('\'" ')
    if not screenshot_path:
        continue

    if os.path.exists(screenshot_path):
        filename = os.path.basename(screenshot_path)
        print(f"Nahrávám screenshot: {filename} z cesty: {screenshot_path}")

        with open(screenshot_path, "rb") as f:
            res = requests.post(
                attach_url,
                headers=attach_headers,
                files={"file": (filename, f, "image/png")}
            )

        if res.status_code not in [200, 201]:
            raise Exception(f"Jira API Error při nahrávání screenshotu {filename} ({res.status_code}): {res.text}")
        print(f"Screenshot {filename} úspěšně nahrán.")
    else:
        print(f"Upozornění: Soubor nebyl nalezen na cestě: {screenshot_path}")

print("All screenshots processed successfully.")

import logging
import sys
import json
from selenium import webdriver
from selenium.webdriver.remote.webdriver import WebDriver as RemoteWebDriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException

# Force UTF-8 encoding for stdout and stderr
sys.stdout.reconfigure(encoding='utf-8')
sys.stderr.reconfigure(encoding='utf-8')

# Configure logging with UTF-8 encoding
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler('save_states.log', encoding='utf-8'),
        logging.StreamHandler(sys.stdout)
    ]
)
logger = logging.getLogger(__name__)

def attach_to_existing_session(executor_url, session_id):
    try:
        from selenium.webdriver.chrome.options import Options
        options = Options()
        driver = RemoteWebDriver(command_executor=executor_url, options=options)
        driver.session_id = session_id
        logger.info(f"Attached to existing WebDriver session with ID: {session_id}")
        return driver
    except Exception as e:
        logger.error(f"Failed to attach to session: {e}")
        raise

def wait_for_element(driver, locator, timeout=20):
    try:
        logger.info(f"Waiting for element: {locator}")
        return WebDriverWait(driver, timeout).until(
            EC.visibility_of_element_located(locator)
        )
    except TimeoutException:
        logger.error(f"Element {locator} not found within {timeout} seconds")
        return None

def map_column_to_state(column_index, value):
    """Mapuje hodnoty sloupců na odpovídající stavy rádiových tlačítek."""
    value = value.strip()
    if column_index == 3:  # req_radio
        return "s_required" if value == "Ano" else "s_optional"
    elif column_index == 4:  # soreq_radio
        return "s_sorequired" if value == "Ano" else "s_sooptional"
    elif column_index == 5:  # vis_radio
        return "s_visible" if value == "Ano" else "s_invisible"
    elif column_index == 6:  # edit_radio
        return "s_editable" if value == "Ano" else "s_readonly"
    elif column_index == 8:  # source_radio
        return "s_source_csm" if value == "CSM" else "s_source_sap"
    return None

def save_states_to_file(all_initial_states):
    try:
        with open("initial_states.json", "w", encoding='utf-8') as f:
            json.dump(all_initial_states, f, indent=4, ensure_ascii=False)
        logger.info("Initial states saved to initial_states.json")
    except Exception as e:
        logger.error(f"Failed to save initial_states.json: {e}")

def main():
    logger.info("Starting save_states.py")
    try:
        with open("session_info.json", "r", encoding='utf-8') as f:
            session_data = json.load(f)
            executor_url = session_data.get('executor_url')
            session_id = session_data.get('session_id')
        if not executor_url or not session_id:
            logger.error("Invalid session_info.json: Missing executor_url or session_id")
            return
        logger.info(f"Loaded session info: executor_url={executor_url}, session_id={session_id}")
    except FileNotFoundError:
        logger.error("session_info.json not found")
        return
    except KeyError as e:
        logger.error(f"Invalid session_info.json format: {e}")
        return

    try:
        driver = attach_to_existing_session(executor_url, session_id)
    except Exception as e:
        logger.error(f"Failed to attach to existing session: {e}")
        return

    try:
        table = wait_for_element(driver, (By.ID, "ts_custom_fields_tbl"))
        if not table:
            logger.error("Table not found")
            return

        rows = driver.find_elements(By.XPATH, "//table[@id='ts_custom_fields_tbl']/tbody/tr")
        logger.info(f"Found {len(rows)} rows")

        # Start with empty states for new run
        all_initial_states = {}
        radio_groups = {
            "req_radio": 3,    # Sloupec 3
            "soreq_radio": 4,  # Sloupec 4
            "vis_radio": 5,    # Sloupec 5
            "edit_radio": 6,   # Sloupec 6
            "source_radio": 8  # Sloupec 8
        }

        for index, row in enumerate(rows, 1):
            try:
                # Načtení všech sloupců (<td>) v řádku
                columns = row.find_elements(By.TAG_NAME, "td")
                if len(columns) < 8:
                    logger.error(f"Row {index} has fewer than 8 columns, skipping")
                    continue

                # Název pole ze sloupce 1
                field_name = columns[0].text.strip()
                logger.info(f"Row {index} - Processing field: {field_name}")

                # Mapování hodnot sloupců na stavy
                row_states = {}
                for group, col_index in radio_groups.items():
                    col_value = columns[col_index - 1].text.strip()  # Sloupce jsou 1-based v popisu, ale 0-based v indexování
                    state = map_column_to_state(col_index, col_value)
                    if state:
                        row_states[group] = state
                        logger.info(f"Row {index} - {group}: {state}")
                    else:
                        logger.warning(f"Row {index} - Invalid value '{col_value}' for {group}")
                        row_states[group] = "s_optional" if group == "req_radio" else \
                                           "s_sooptional" if group == "soreq_radio" else \
                                           "s_invisible" if group == "vis_radio" else \
                                           "s_readonly" if group == "edit_radio" else \
                                           "s_source_csm"  # Výchozí hodnoty

                all_initial_states[f"row_{index}"] = row_states
                # Save to file after each row
                save_states_to_file(all_initial_states)

            except Exception as e:
                logger.error(f"Row {index} - Error processing row: {e}")
                continue

    except Exception as e:
        logger.error(f"Unexpected error: {e}")
        # Save whatever states were collected before the error
        if all_initial_states:
            save_states_to_file(all_initial_states)
    finally:
        logger.info("Finished, keeping WebDriver open for Robot")

if __name__ == "__main__":
    main()
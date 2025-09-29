import logging
import sys
import json
from selenium import webdriver
from selenium.webdriver.remote.webdriver import WebDriver as RemoteWebDriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException, StaleElementReferenceException
import time

# Force UTF-8 encoding for stdout and stderr
sys.stdout.reconfigure(encoding='utf-8')
sys.stderr.reconfigure(encoding='utf-8')

# Configure logging with UTF-8 encoding
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler('restore_states.log', encoding='utf-8'),
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

def wait_for_element_gone(driver, locator, timeout=20):
    try:
        logger.info(f"Waiting for element to disappear: {locator}")
        WebDriverWait(driver, timeout).until(
            EC.invisibility_of_element_located(locator)
        )
        logger.info(f"Element {locator} is no longer visible")
        return True
    except TimeoutException:
        logger.error(f"Element {locator} still visible after {timeout} seconds")
        return False

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

def get_radio_state(driver, input_id):
    try:
        input_element = driver.find_element(By.XPATH, f"//input[@id='{input_id}']")
        state = input_id if input_element.get_attribute("checked") == "checked" else None
        logger.info(f"Checked state for {input_id}: {state}")
        return state
    except Exception as e:
        logger.error(f"Failed to get state for {input_id}: {e}")
        return None

def click_radio_button(driver, label_for):
    try:
        label = wait_for_element(driver, (By.XPATH, f"//label[@for='{label_for}']"))
        if label:
            label.click()
            WebDriverWait(driver, 5).until(
                EC.presence_of_element_located((By.XPATH, f"//label[@for='{label_for}' and contains(@class, 'ui-state-active')]"))
            )
            logger.info(f"Clicked radio button: {label_for}")
    except Exception as e:
        logger.error(f"Failed to click radio button {label_for}: {e}")

def click_finish_button(driver):
    try:
        finish_button = wait_for_element(driver, (By.XPATH, "//div[@class='ui-dialog-buttonset']//button[contains(text(), 'Dokončit')]"))
        if finish_button:
            finish_button.click()
            logger.info("Clicked 'Dokončit' button")
            wait_for_element_gone(driver, (By.XPATH, "//div[@role='dialog']"))
    except Exception as e:
        logger.error(f"Failed to click 'Dokončit' button: {e}")

def restore_row_states(driver, row_index, row_states):
    radio_groups = {
        "req_radio": ["s_required", "s_optional"],
        "soreq_radio": ["s_sorequired", "s_sooptional"],
        "vis_radio": ["s_visible", "s_invisible"],
        "source_radio": ["s_source_csm", "s_source_sap"],
        "edit_radio": ["s_editable", "s_readonly"]
    }

    for group in radio_groups:
        current_state = None
        for input_id in radio_groups[group]:
            state = get_radio_state(driver, input_id)
            if state:
                current_state = state
                break
        initial_state = row_states.get(group)
        if current_state != initial_state:
            logger.info(f"Row {row_index + 1} - Restoring {group} to {initial_state}")
            click_radio_button(driver, initial_state)
        else:
            logger.info(f"Row {row_index + 1} - No change needed for {group}")

    click_finish_button(driver)

def main():
    logger.info("Starting restore_states.py")
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
        with open("initial_states.json", "r", encoding='utf-8') as f:
            all_initial_states = json.load(f)
        logger.info("Loaded initial states from initial_states.json")
    except FileNotFoundError:
        logger.error("initial_states.json not found")
        return
    except Exception as e:
        logger.error(f"Failed to load initial_states.json: {e}")
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

        radio_groups = {
            "req_radio": 3,    # Sloupec 3
            "soreq_radio": 4,  # Sloupec 4
            "vis_radio": 5,    # Sloupec 5
            "edit_radio": 6,   # Sloupec 6
            "source_radio": 8  # Sloupec 8
        }

        # Seznam řádků, které potřebují obnovu
        rows_to_restore = []

        # Procházení tabulky a porovnání stavů
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

                # Načtení aktuálních stavů z tabulky
                current_states = {}
                for group, col_index in radio_groups.items():
                    col_value = columns[col_index - 1].text.strip()  # Sloupce jsou 1-based v popisu, ale 0-based v indexování
                    state = map_column_to_state(col_index, col_value)
                    if state:
                        current_states[group] = state
                    else:
                        logger.warning(f"Row {index} - Invalid value '{col_value}' for {group}")
                        current_states[group] = "s_optional" if group == "req_radio" else \
                                               "s_sooptional" if group == "soreq_radio" else \
                                               "s_invisible" if group == "vis_radio" else \
                                               "s_readonly" if group == "edit_radio" else \
                                               "s_source_csm"  # Výchozí hodnoty

                # Porovnání s původními stavy
                initial_states = all_initial_states.get(f"row_{index}", {})
                if not initial_states:
                    logger.warning(f"Row {index} - No initial states found, skipping")
                    continue

                # Kontrola, zda se některý stav liší
                needs_restore = False
                for group in radio_groups:
                    if current_states.get(group) != initial_states.get(group):
                        needs_restore = True
                        logger.info(f"Row {index} - Difference found in {group}: current={current_states.get(group)}, initial={initial_states.get(group)}")
                        break

                if needs_restore:
                    rows_to_restore.append((index, initial_states))
                else:
                    logger.info(f"Row {index} - No changes needed")

            except Exception as e:
                logger.error(f"Row {index} - Error processing row: {e}")
                continue

        # Obnova pouze změněných řádků
        for index, row_states in rows_to_restore:
            try:
                row_locator = f"//table[@id='ts_custom_fields_tbl']/tbody/tr[{index}]"
                row = wait_for_element(driver, (By.XPATH, row_locator))
                if row:
                    row.click()
                    logger.info(f"Clicked on row {index} to select it")
                    time.sleep(1)  # Short delay to allow row highlighting
                    try:
                        WebDriverWait(driver, 5).until(
                            EC.presence_of_element_located((By.XPATH, f"{row_locator}[contains(@class, 'highlight')]"))
                        )
                        logger.info(f"Row {index} highlighted")
                    except TimeoutException:
                        logger.warning(f"Row {index} not highlighted, proceeding anyway")
                else:
                    logger.error(f"Row {index} not found")
                    continue

                edit_button = wait_for_element(driver, (By.ID, "ts_edit_custom_fields_btn"))
                if edit_button:
                    try:
                        edit_button.click()
                        logger.info(f"Clicked edit button for row {index}")

                        fieldset = wait_for_element(driver, (By.XPATH, "//fieldset[contains(@class, 'ui-widget-content')]"))
                        if fieldset:
                            logger.info(f"Fieldset opened for row {index}")
                            restore_row_states(driver, index - 1, row_states)  # index - 1 kvůli 0-based indexování
                        else:
                            logger.error(f"Fieldset not found for row {index}")
                    except StaleElementReferenceException:
                        logger.error(f"Stale element error for row {index}, retrying")
                        time.sleep(1)
                        continue
                else:
                    logger.error(f"Edit button not found for row {index}")

            except Exception as e:
                logger.error(f"Row {index} - Error restoring row: {e}")
                continue

        logger.info(f"Restored {len(rows_to_restore)} rows out of {len(rows)}")

    except Exception as e:
        logger.error(f"Unexpected error: {e}")
    finally:
        logger.info("Finished, keeping WebDriver open for Robot")

if __name__ == "__main__":
    main()

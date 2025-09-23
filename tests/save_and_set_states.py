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
import os

# Force UTF-8 encoding for stdout and stderr
sys.stdout.reconfigure(encoding='utf-8')
sys.stderr.reconfigure(encoding='utf-8')

# Configure logging with UTF-8 encoding
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler('save_and_set_states.log', encoding='utf-8'),
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

def get_radio_state(driver, input_id):
    try:
        # První pokus: kontrola ui-state-active na label
        label = driver.find_element(By.XPATH, f"//label[@for='{input_id}' and contains(@class, 'ui-state-active')]")
        if label:
            logger.info(f"Active state for {input_id} found via ui-state-active on label")
            return input_id
    except Exception:
        logger.info(f"No ui-state-active for label with for={input_id}")

    try:
        # Druhý pokus: kontrola checked na input
        input_element = driver.find_element(By.XPATH, f"//input[@id='{input_id}']")
        if input_element.get_attribute("checked") == "checked":
            logger.info(f"Active state for {input_id} found via checked attribute")
            return input_id
    except Exception:
        logger.info(f"No checked attribute for input with id={input_id}")

    # Logování HTML pro ladění
    try:
        radio_elements = driver.find_elements(By.XPATH, f"//input[@id='{input_id}'] | //label[@for='{input_id}']")
        for element in radio_elements:
            logger.info(f"HTML for {input_id}: {element.get_attribute('outerHTML')}")
    except Exception as e:
        logger.error(f"Failed to log HTML for {input_id}: {e}")

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

def get_field_name(driver):
    try:
        field_name_element = wait_for_element(driver, (By.XPATH, "//input[@id='s_field_name']"))
        if field_name_element:
            field_name = field_name_element.get_attribute("value").strip()
            logger.info(f"Field name in dialog: {field_name}")
            return field_name
        else:
            logger.warning("Field name element not found in dialog")
            return None
    except Exception as e:
        logger.error(f"Failed to get field name: {e}")
        return None

def save_and_set_states(driver, row_index):
    radio_groups = {
        "req_radio": ["s_required", "s_optional"],
        "soreq_radio": ["s_sorequired", "s_sooptional"],
        "vis_radio": ["s_visible", "s_invisible"],
        "source_radio": ["s_source_csm", "s_source_sap"],
        "edit_radio": ["s_editable", "s_readonly"]
    }

    # Čekání na načtení všech rádiových tlačítek
    try:
        WebDriverWait(driver, 10).until(
            EC.presence_of_all_elements_located((By.XPATH, "//input[@type='radio']"))
        )
        logger.info(f"Row {row_index + 1} - All radio buttons loaded")
    except TimeoutException:
        logger.error(f"Row {row_index + 1} - Radio buttons not loaded within 10 seconds")

    # Čtení původních stavů před změnou
    initial_states = {}
    for group, inputs in radio_groups.items():
        for input_id in inputs:
            state = get_radio_state(driver, input_id)
            if state:
                initial_states[group] = state
                break
        if group not in initial_states:
            initial_states[group] = inputs[1]  # Výchozí hodnota, pokud není žádný stav vybrán
            logger.info(f"Row {row_index + 1} - Default state for {group}: {initial_states[group]}")
        else:
            logger.info(f"Row {row_index + 1} - Initial state for {group}: {initial_states[group]}")

    # Logování názvu pole pro ověření správného řádku
    field_name = get_field_name(driver)
    logger.info(f"Row {row_index + 1} - Processing field: {field_name}")

    # Změna stavů až po uložení původních stavů
    click_radio_button(driver, "s_required")
    click_radio_button(driver, "s_sorequired")
    click_radio_button(driver, "s_visible")
    click_radio_button(driver, "s_source_sap")
    click_radio_button(driver, "s_editable")

    click_finish_button(driver)
    return initial_states

def save_states_to_file(all_initial_states):
    try:
        with open("initial_states.json", "w", encoding='utf-8') as f:
            json.dump(all_initial_states, f, indent=4, ensure_ascii=False)
        logger.info("Initial states saved to initial_states.json")
    except Exception as e:
        logger.error(f"Failed to save initial_states.json: {e}")

def main():
    logger.info("Starting save_and_set_states.py")
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

        # Start with empty states for new run (assuming initial_states.json is deleted by Robot Framework)
        all_initial_states = {}

        for index in range(len(rows)):
            row_locator = f"//table[@id='ts_custom_fields_tbl']/tbody/tr[{index + 1}]"
            row = wait_for_element(driver, (By.XPATH, row_locator))
            if row:
                row.click()
                logger.info(f"Clicked on row {index + 1} to select it")
                time.sleep(1)  # Short delay to allow row highlighting
                try:
                    WebDriverWait(driver, 5).until(
                        EC.presence_of_element_located((By.XPATH, f"{row_locator}[contains(@class, 'highlight')]"))
                    )
                    logger.info(f"Row {index + 1} highlighted")
                except TimeoutException:
                    logger.warning(f"Row {index + 1} not highlighted, proceeding anyway")
            else:
                logger.error(f"Row {index + 1} not found")
                continue

            edit_button = wait_for_element(driver, (By.ID, "ts_edit_custom_fields_btn"))
            if edit_button:
                try:
                    edit_button.click()
                    logger.info(f"Clicked edit button for row {index + 1}")

                    fieldset = wait_for_element(driver, (By.XPATH, "//fieldset[contains(@class, 'ui-widget-content')]"))
                    if fieldset:
                        logger.info(f"Fieldset opened for row {index + 1}")
                        row_states = save_and_set_states(driver, index)
                        all_initial_states[f"row_{index + 1}"] = row_states
                        # Save to file after each row
                        save_states_to_file(all_initial_states)
                    else:
                        logger.error(f"Fieldset not found for row {index + 1}")
                except StaleElementReferenceException:
                    logger.error(f"Stale element error for row {index + 1}, retrying")
                    time.sleep(1)
                    continue
            else:
                logger.error(f"Edit button not found for row {index + 1}")

    except Exception as e:
        logger.error(f"Unexpected error: {e}")
        # Save whatever states were collected before the error
        if all_initial_states:
            save_states_to_file(all_initial_states)
    finally:
        logger.info("Finished, keeping WebDriver open for Robot")

if __name__ == "__main__":
    main()

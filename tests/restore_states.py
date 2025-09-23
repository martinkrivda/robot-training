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

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler('restore_states.log'),
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

def restore_states(driver, row_index, row_states):
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
        with open("session_info.json", "r") as f:
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
        with open("initial_states.json", "r") as f:
            all_initial_states = json.load(f)
        logger.info("Loaded initial states from initial_states.json")

        table = wait_for_element(driver, (By.ID, "ts_custom_fields_tbl"))
        if not table:
            logger.error("Table not found")
            return

        rows = driver.find_elements(By.XPATH, "//table[@id='ts_custom_fields_tbl']/tbody/tr")
        logger.info(f"Found {len(rows)} rows")

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
                        row_states = all_initial_states.get(f"row_{index + 1}")
                        if row_states:
                            restore_states(driver, index, row_states)
                        else:
                            logger.error(f"No initial states found for row_{index + 1}")
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
    finally:
        logger.info("Finished, keeping WebDriver open for Robot")

if __name__ == "__main__":
    main()

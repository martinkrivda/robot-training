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
        logging.FileHandler('set_states.log', encoding='utf-8'),
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

def set_row_states(driver, row_index, target_states):
    # Čekání na načtení všech rádiových tlačítek
    try:
        WebDriverWait(driver, 10).until(
            EC.presence_of_all_elements_located((By.XPATH, "//input[@type='radio']"))
        )
        logger.info(f"Row {row_index + 1} - All radio buttons loaded")
    except TimeoutException:
        logger.error(f"Row {row_index + 1} - Radio buttons not loaded within 10 seconds")

    # Logování názvu pole pro ověření správného řádku
    field_name = get_field_name(driver)
    logger.info(f"Row {row_index + 1} - Processing field: {field_name}")

    # Nastavení rádiových tlačítek podle cílových stavů
    for group, target_state in target_states.items():
        inputs = ["s_required", "s_optional"] if group == "req_radio" else ["s_source_csm", "s_source_sap"]
        current_state = None
        for input_id in inputs:
            state = get_radio_state(driver, input_id)
            if state:
                current_state = state
                break
        if current_state != target_state:
            logger.info(f"Row {row_index + 1} - Setting {group} to {target_state}")
            click_radio_button(driver, target_state)
        else:
            logger.info(f"Row {row_index + 1} - No change needed for {group}")

    # Zavření dialogu
    click_finish_button(driver)

def main():
    logger.info("Starting set_states.py")
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

        # Seznam 19 vybraných názvů polí pro req_radio = s_required
        selected_fields = [
            "Cena",
            "Cena/m.j.",
            "Dodání do",
            "Druh smlouvy",
            "Jazyk smlouvy",
            "Komodita/služba",
            "m.j.",
            "Množství",
            "Oblast",
            "Platnost do",
            "Platnost od",
            "Povinnost zveřejnění",
            "Profitcentrum",
            "Předmět smlouvy",
            "Rozhodné právo",
            "Smluvní partner",
            "Typ smlouvy",
            "Účetní okruh",
            "Vlastní DIČ"
        ]

        # Procházení tabulky
        for index in range(len(rows)):
            try:
                row_locator = f"//table[@id='ts_custom_fields_tbl']/tbody/tr[{index + 1}]"
                columns = driver.find_elements(By.XPATH, f"{row_locator}/td")
                if len(columns) < 8:
                    logger.error(f"Row {index + 1} has fewer than 8 columns, skipping")
                    continue

                # Název pole ze sloupce 1 a hodnota druhého sloupce
                field_name = columns[0].text.strip()
                type_field = columns[1].text.strip() if len(columns) > 1 else ""
                logger.info(f"Row {index + 1} - Processing field: {field_name}, Type: {type_field}")

                # Speciální kontrola pro Profitcentrum
                is_selected_field = field_name in selected_fields
                if field_name == "Profitcentrum":
                    is_selected_field = is_selected_field and type_field == "Hlavička"

                # Aktuální hodnoty ve sloupcích 3 (req_radio) a 8 (source_radio)
                current_req_value = columns[2].text.strip()
                current_req_state = "s_required" if current_req_value == "Ano" else "s_optional"
                current_source_value = columns[7].text.strip() if len(columns) > 7 else ""
                current_source_state = "s_source_csm" if current_source_value == "CSM" else "s_source_sap"

                # Cílové stavy
                target_states = {}
                target_states["req_radio"] = "s_required" if is_selected_field else "s_optional"
                if is_selected_field and current_source_value == "SAP":
                    target_states["source_radio"] = "s_source_csm"

                # Pokud je třeba změnit některý stav, otevřeme dialog
                needs_change = current_req_state != target_states["req_radio"]
                if is_selected_field:
                    needs_change = needs_change or (current_source_value == "SAP")

                if needs_change:
                    logger.info(f"Row {index + 1} - Current states: req_radio={current_req_state}, source_radio={current_source_state}, Target states: {target_states}")
                    # Označení řádku
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

                    # Kliknutí na Upravit
                    edit_button = wait_for_element(driver, (By.ID, "ts_edit_custom_fields_btn"))
                    if edit_button:
                        edit_button.click()
                        logger.info(f"Clicked edit button for row {index + 1}")

                        fieldset = wait_for_element(driver, (By.XPATH, "//fieldset[contains(@class, 'ui-widget-content')]"))
                        if fieldset:
                            logger.info(f"Fieldset opened for row {index + 1}")
                            set_row_states(driver, index, target_states)
                        else:
                            logger.error(f"Fieldset not found for row {index + 1}")
                    else:
                        logger.error(f"Edit button not found for row {index + 1}")
                else:
                    logger.info(f"Row {index + 1} - No change needed for req_radio or source_radio")

            except Exception as e:
                logger.error(f"Row {index + 1} - Error processing row: {e}")
                continue

    except Exception as e:
        logger.error(f"Unexpected error: {e}")
    finally:
        logger.info("Finished, keeping WebDriver open for Robot")

if __name__ == "__main__":
    main()

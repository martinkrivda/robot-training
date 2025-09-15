from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException, StaleElementReferenceException
import json
import time

def wait_for_element(driver, locator, timeout=5):
    try:
        return WebDriverWait(driver, timeout).until(
            EC.visibility_of_element_located(locator)
        )
    except TimeoutException:
        print(f"Element {locator} not found within {timeout} seconds")
        return None

def wait_for_element_gone(driver, locator, timeout=5):
    try:
        WebDriverWait(driver, timeout).until(
            EC.invisibility_of_element_located(locator)
        )
        print(f"Element {locator} is no longer visible")
        return True
    except TimeoutException:
        print(f"Element {locator} still visible after {timeout} seconds")
        return False

def get_radio_state(driver, input_id):
    try:
        input_element = driver.find_element(By.XPATH, f"//input[@id='{input_id}']")
        return input_id if input_element.get_attribute("checked") == "checked" else None
    except:
        return None

def click_radio_button(driver, label_for):
    try:
        label = wait_for_element(driver, (By.XPATH, f"//label[@for='{label_for}']"))
        if label:
            label.click()
            WebDriverWait(driver, 5).until(
                EC.presence_of_element_located((By.XPATH, f"//label[@for='{label_for}' and contains(@class, 'ui-state-active')]"))
            )
            print(f"Clicked radio button: {label_for}")
    except Exception as e:
        print(f"Failed to click radio button {label_for}: {e}")

def click_finish_button(driver):
    try:
        finish_button = wait_for_element(driver, (By.XPATH, "//div[@class='ui-dialog-buttonset']//button[contains(text(), 'Dokončit')]"))
        if finish_button:
            finish_button.click()
            print("Clicked 'Dokončit' button")
            # Wait for dialog to close
            wait_for_element_gone(driver, (By.XPATH, "//div[@role='dialog']"))
    except Exception as e:
        print(f"Failed to click 'Dokončit' button: {e}")

def save_and_set_states(driver, row_index):
    radio_groups = {
        "req_radio": ["s_required", "s_optional"],
        "soreq_radio": ["s_sorequired", "s_sooptional"],
        "vis_radio": ["s_visible", "s_invisible"],
        "source_radio": ["s_source_csm", "s_source_sap"],
        "edit_radio": ["s_editable", "s_readonly"]
    }

    # Record initial states for this row
    initial_states = {}
    for group, inputs in radio_groups.items():
        for input_id in inputs:
            state = get_radio_state(driver, input_id)
            if state:
                initial_states[group] = state
                break
        if group not in initial_states:
            initial_states[group] = inputs[1]  # Default to second option if none checked
        print(f"Row {row_index + 1} - Initial state for {group}: {initial_states[group]}")

    # Change to "mandatory" options
    click_radio_button(driver, "s_required")
    click_radio_button(driver, "s_sorequired")
    click_radio_button(driver, "s_visible")
    click_radio_button(driver, "s_source_sap")
    click_radio_button(driver, "s_editable")

    # Save changes
    click_finish_button(driver)

    return initial_states

def main():
    # Initialize WebDriver
    driver = webdriver.Chrome()
    driver.get("https://example.com")  # Replace with actual URL

    try:
        # Wait for table to load
        table = wait_for_element(driver, (By.ID, "ts_custom_fields_tbl"))
        if not table:
            print("Table not found")
            return

        # Get all rows
        rows = driver.find_elements(By.XPATH, "//table[@id='ts_custom_fields_tbl']/tbody/tr")
        print(f"Found {len(rows)} rows")

        all_initial_states = {}  # Dictionary to store states for all rows

        for index in range(len(rows)):
            # Re-fetch rows to avoid stale element reference
            rows = driver.find_elements(By.XPATH, "//table[@id='ts_custom_fields_tbl']/tbody/tr")
            row = rows[index]
            print(f"Processing row {index + 1}")

            # Click edit button
            edit_button = wait_for_element(driver, (By.ID, "ts_edit_custom_fields_btn"))
            if edit_button:
                try:
                    edit_button.click()
                    print(f"Clicked edit button for row {index + 1}")

                    # Wait for fieldset to appear
                    fieldset = wait_for_element(driver, (By.XPATH, "//fieldset[contains(@class, 'ui-widget-content')]"))
                    if fieldset:
                        print(f"Fieldset opened for row {index + 1}")
                        row_states = save_and_set_states(driver, index)
                        all_initial_states[f"row_{index + 1}"] = row_states
                    else:
                        print(f"Fieldset not found for row {index + 1}")
                except StaleElementReferenceException:
                    print(f"Stale element error for row {index + 1}, retrying")
                    time.sleep(1)
                    continue
            else:
                print(f"Edit button not found for row {index + 1}")

        # Save all initial states to JSON file
        with open("initial_states.json", "w") as f:
            json.dump(all_initial_states, f, indent=4)
        print("Initial states saved to initial_states.json")

    finally:
        driver.quit()

if __name__ == "__main__":
    main()
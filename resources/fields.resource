*** Settings ***
Documentation       This is a resource file for fields.
...                 Keywords defined here can be used where this "fields.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Library             Collections
Library             Process
Variables           ../credentials.py
Resource            login.resource
Resource            fields_setup.resource


*** Variables ***
${Finish Button}                            //button[normalize-space(text())="Dokončit"]
${Id Administration and Configuration}      admin_config
${Delete Button}                            //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                 alert_area
${Alert Message}                            Vyplňte prosím všechna povinná pole!
${Timeout}                                  5s
${Id Fields}                                settings_custom_fields
${Id Fields Edit Button}                    ts_edit_custom_fields_btn
${Field Name}                               //tr[td[normalize-space(.)="Číslo výb.řízení"]]/td[1]
${Contract creation1}                       //label[@for="s_required"]
${Contract creation2}                       //label[@for="s_optional"]
${Sign-off1}                                //label[@for="s_sorequired"]
${Sign-off2}                                //label[@for="s_sooptional"]
${Visibility1}                              //label[@for="s_visible"]
${Visibility2}                              //label[@for="s_invisible"]
${Data source1}                             //label[@for="s_source_csm"]
${Data source2}                             //label[@for="s_source_sap"]
${Value from SAP1}                          //label[@for="s_editable"]
${Value from SAP2}                          //label[@for="s_readonly"]
${Id Tender Number}                         c_tender_number
${Tender Number}                            1234
${Create Contract}                          //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Number Sequence}                       c_number
${Close Button}                             xpath=//button[@title="Close"]
${Personal Space}                           //a[contains(@class, 'main_tabs') and @href="#tab_personal"]
${Settings}                                 //a[contains(@class, "main_tabs") and @href="#tab_settings"]
${Id Add Field}                             c_legalfield
${Id Confidentiality}                       c_confid
${Id Contract kind}                         c_kind
${Id Language}                              c_lang
${Create Contract File Button}              //button[normalize-space(.)='Vytvoření smluvní složky']
${Number Sequence}                          ISSTEST
${Field}                                    Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                          Přísně tajné
${Contract kind}                            Smlouva o úvěru - § 497 - 507
${Language}                                 Čeština
${Id Contract Subject}                      c_subject
${Contract Subject}                         TESTCONRACTDV
${Delete Contract}                          //a[@class="ui-corner-all" and @href="#contract_delete_file"]
${Contract Name Detail}                     //a[@id="tab_contract_contract"]
${Item Field Name}                          //tr[td[1][normalize-space()='Balení']]
${Contract Items}                           //a[@href='#tc_contract_items' and contains(@class, 'sub_tabs')]
${Id Add Item Button}                       tc_add_item_btn
${Id Packing}                               c_packing
${Id Unit Price}                            c_unit_price
${Id Commodity/service}                     c_commodity
${Commodity/service}                        Doprava
${Unit Price}                               1568
${Id Contract Items}                        settings_pl_items
${Id Item Packing}                          settings_item_packing
${Id Add Item Packing Button}               ts_add_item_packing_btn
${Disabled Checkbox}                        //input[@type="checkbox" and @id="s_disabled"]
${Id Edit Item Packing Button}              ts_edit_item_packing_btn
${Packing Name}                             //tr[td[text()="test"] and td[text()="autotest"]]
${Id Add Packing}                           s_field1
${Packing}                                  test
${Id Add Description}                       s_field2
${Description}                              autotest
${Select Packing}                           test autotest
${Contract Item}                            xpath=//table[@id='tc_contract_items_tbl']//tr[td[normalize-space(.)='12'] and td[normalize-space(.)='1 568,00']]
${Id Delete Contract Item Button}           tc_del_item_btn
${Id Proposal Lists}                        proposals
${Name2}                                    vod
${Name}                                     dvtest1
${Edited Date}                              12.07.2025
${Id VAT ID}                                c_vatid
${Id Contract Type}                         c_type
${Id Appl Law}                              c_appl_law
${Id Add Profit Center}                     c_profit_center
${Id Acc Area}                              c_acc_area
${Id Delivery To}                           c_delivery_to
${Id Unit}                                  c_unit
${Id Valid Until}                           c_valid_until
${Id Primary Responsible Person}            c_primary
${Id Secondary Responsible Person}          c_secondary
${Id Contract Status}                       c_status
${Id Add Contract Partners}                 c_partner
${Id Add Commodity/service}                 c_commodity
${Date}                                     03.07.2025
${Number}                                   12
${Id Quantity}                              c_quant
${Id Price}                                 c_price
${Please Wait}                              please_wait
${Id Add Contract Kind Button}              ts_add_contract_kind_btn
${Id Add Contract Kind}                     s_kind
${Contract Kind Name}                       dvtest2
${Contract Kind Name Path}                  xpath=//td[contains(normalize-space(.), "dvtest2")]
${Id Edit Contract Kind Button}             ts_edit_contract_kind_btn
${Contract Kind Checkbox}                   xpath=//input[@type="checkbox" and @name="s_kind_disabled"]
${Contract Kind Edited Name}                dvtestKindEdited
${Contract Kind Edited Name Path}           xpath=//td[contains(normalize-space(.), "dvtestKindEdited")]
${Id Add Field Button}                      ts_add_legal_field_btn
${Add Field}                                s_field
${Id Edit Field Button}                     ts_edit_legal_field_btn
${Field Checkbox}                           id=s_field_disabled
${Field Name Path}                          xpath=//td[contains(normalize-space(.), "dvtest")]
${Field Name2}                              dvtest
${Id Profit Center}                         settings_profcenter
${Id Edit Profit Center Button}             ts_edit_profcenter_btn
${Id Add Profit Center Button}              ts_add_profcenter_btn
${Profit Center Name}                       tes
${Contract Type Checkbox}                   xpath=//input[@type='checkbox' and @id='s_disabled']
${Id Add Contract Type}                     s_field1
${Id Add Contract Type Description}         s_field2
${Id Add Responsible}                       s_field3
${Timeout2}                                 1s
${Edited Name}                              dvtestEdited
${Id Field}                                 settings_legal_fields
@{FAILED_TESTS}                             @{EMPTY}
@{SCREENSHOTS}                              @{EMPTY}
${APP_VERSION}                              ${EMPTY}
${App Name}                                 id=app_name


*** Keywords ***
Go To Settings
    Wait Until Ready    ${Settings}
    Click Element    ${Settings}

Click On Administration
    Wait Until Ready    ${Id Administration and Configuration}
    Click Element    ${Id Administration and Configuration}

Click On Fields
    Wait Until Ready    ${Id Fields}
    Click Element    ${Id Fields}

# Go To Fields
#    Go To Settings
#    Click On Administration
#    Click On Fields

# Wait Until Ready
#    [Arguments]    ${locator}
#    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
#    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Check If Tender Number Is Not Visible
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Element Should Not Be Visible    ${Id Tender Number}
    Click Element    ${Close Button}

Change Tender Number To Invisible
    Click On Administration
    Click On Fields
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation1}
    Click Element    ${Contract creation2}
    Click Element    ${Sign-off2}
    Click Element    ${Visibility2}
    Click Element    ${Data source1}
    Click Element    ${Value from SAP2}
    Click Element    ${Finish Button}

Edit Fields
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation1}
    Click Element    ${Contract creation1}
    Click Element    ${Contract creation2}
    Click Element    ${Sign-off1}
    Click Element    ${Sign-off2}
    Click Element    ${Visibility1}
    Click Element    ${Visibility2}
    Click Element    ${Data source2}
    Click Element    ${Data source1}
    Click Element    ${Value from SAP1}
    Click Element    ${Value from SAP2}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}

Check If Tender Number Is Visible
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Element Should Be Visible    ${Id Tender Number}

Check If Tender Number Is Optional
    ${class}=    Get Element Attribute    ${Id Tender Number}    class
    Should Not Contain    ${class}    required
    Click Element    ${Close Button}

Add Required To Tender Number
    Go To Settings
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation1}
    Click Element    ${Contract creation1}
    Click Element    ${Finish Button}

Check If Tender Number Is Required
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    ${class}=    Get Element Attribute    ${Id Tender Number}    class
    Should Contain    ${class}    required

Edit Field Back To Normal
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Settings}
    Wait Until Element Is Not Visible    ${Please Wait}
    Go To Settings
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation2}
    Click Element    ${Contract creation2}
    Click Element    ${Sign-off2}
    Click Element    ${Visibility2}
    Click Element    ${Data source1}
    Click Element    ${Value from SAP2}
    Click Element    ${Finish Button}

Fill In Required Fields
    Wait Until Ready    ${Id Language}
    Select From List By Index    ${Id Number Sequence}    1
    Select From List By Index    ${Id Contract Type}    1
    Select From List By Label    ${Id Add Field}    ${Field Name2}
    Select From List By Index    ${Id Confidentiality}    1
    Select From List By Label    ${Id Contract kind}    ${Contract Kind Name}
    Select From List By Index    ${Id Language}    1
    Select From List By Index    ${Id Contract Status}    1
    Select From List By Index    ${Id Primary Responsible Person}    1
    Select From List By Index    ${Id Secondary Responsible Person}    1
    Select From List By Index    ${Id Appl Law}    1
    Input Text    ${Id Add Contract Partners}    ${Name2}
    Wait Until Element Is Visible    (//li[contains(@class,"ui-menu-item")])[1]
    Click Element    (//li[contains(@class,"ui-menu-item")])[1]
    Wait Until Ready    ${Id Language}
    Input Text    ${Id Add Profit Center}    ${Profit Center Name}
    Wait Until Element Is Visible    (//li[contains(@class,"ui-menu-item")])[1]
    Click Element    (//li[contains(@class,"ui-menu-item")])[1]
    Wait Until Ready    ${Id Language}
    Input Text    ${Id Valid Until}    ${Edited Date}
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Select From List By Index    ${Id VAT ID}    1
    Select From List By Index    ${Id Acc Area}    1

Try To Create Contract Without Required Tender Number
    Fill In Required Fields
    Click Button    ${Create Contract File Button}
    Element Should Be Visible    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Element    ${Close Button}

Create Contract With All Required
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Fill In Required Fields
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Input Text    ${Id Tender Number}    ${Tender Number}
    Click Button    ${Create Contract File Button}

Delete Contract
    Wait Until Ready    ${Id Add Item Button}
    Wait Until Ready    ${Delete Contract}
    Click Element    ${Delete Contract}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Edit Item Fields Invisible
    Go To Settings
    Wait Until Ready    ${Item Field Name}
    Click Element    ${Item Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation1}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Check If Packing Is Not Visible
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    Element Should Not Be Visible    ${Id Packing}
    Click Element    ${Close Button}

Edit Item Fields Visible
    Go To Settings
    Wait Until Ready    ${Item Field Name}
    Click Element    ${Item Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}

Check If Packing Is Visible
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    Element Should Be Visible    ${Id Packing}

Check If Packing Is Optional
    ${class}=    Get Element Attribute    ${Id Packing}    class
    Should Not Contain    ${class}    required
    Click Element    ${Close Button}

Add Required To Packing
    Go To Settings
    Wait Until Ready    ${Item Field Name}
    Click Element    ${Item Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation1}
    Click Element    ${Contract creation1}
    Click Element    ${Finish Button}

Check If Packing Is Required
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    ${class}=    Get Element Attribute    ${Id Packing}    class
    Should Contain    ${class}    required

Try To Create Contract Item Without Required Packing
    Input Text    ${Id Unit Price}    ${Unit Price}
    Input Text    ${Id Quantity}    ${Number}
    Input Text    ${Id Price}    ${Number}
    Select From List By Index    ${Id Add Commodity/service}    1
    Input Text    ${Id Delivery To}    ${Date}
    Select From List By Index    ${Id Unit}    1
    Click Element    ${Finish Button}
    Element Should Be Visible    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Element    ${Close Button}

Edit Item Field Back To Normal
    Go To Settings
    Wait Until Ready    ${Item Field Name}
    Click Element    ${Item Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation2}
    Click Element    ${Contract creation2}
    Click Element    ${Sign-off2}
    Click Element    ${Visibility2}
    Click Element    ${Data source1}
    Click Element    ${Value from SAP2}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Click Row Or Add Record
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible    ${Packing Name}    timeout=${Timeout}

    IF    ${row_exists}    Enable Packing    ELSE    Add Packing

Enable Packing
    Wait Until Ready    ${Packing Name}
    Click Element    ${Packing Name}
    Click Button    ${Id Edit Item Packing Button}
    Wait Until Ready    ${Disabled Checkbox}
    Unselect Checkbox    ${Disabled Checkbox}
    Click Element    ${Finish Button}

Add Packing
    Wait Until Ready    ${Id Add Item Packing Button}
    Click Button    ${Id Add Item Packing Button}
    Wait Until Ready    ${Id Add Packing}
    Input Text    ${Id Add Packing}    ${Packing}
    Input Text    ${Id Add Description}    ${Description}
    Click Element    ${Finish Button}

Field Setup
    Open Browser And Logged In
    Go To Header Main Data Fields
    Enable Fields Or Add Field
    Enable Contract Kind Or Add Contract Kind
    Go To Profit Center
    Enable Profit Center Or Add Profit Center
    Wait Until Ready    ${Id Contract Items}
    Click Element    ${Id Contract Items}
    Wait Until Ready    ${Id Item Packing}
    Click Element    ${Id Item Packing}
    Click Row Or Add Record

Create Contract Item With All Required
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    Input Text    ${Id Unit Price}    ${Unit Price}
    Input Text    ${Id Quantity}    ${Number}
    Input Text    ${Id Price}    ${Number}
    Select From List By Index    ${Id Add Commodity/service}    1
    Input Text    ${Id Delivery To}    ${Date}
    Select From List By Index    ${Id Unit}    1
    Select From List By Label    ${Id Packing}    ${Select Packing}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Unit Price}

Delete Contract Item
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Contract Item}
    Click Element    ${Contract Item}
    Click Button    ${Id Delete Contract Item Button}
    Wait Until Ready    ${Delete Button}
    Click Element    ${Delete Button}

Disable Packing Item
    Go To Settings
    Wait Until Ready    ${Id Proposal Lists}
    Click Element    ${Id Proposal Lists}
    Wait Until Ready    ${Id Contract Items}
    Click Element    ${Id Contract Items}
    Wait Until Ready    ${Id Item Packing}
    Click Element    ${Id Item Packing}
    Wait Until Ready    ${Packing Name}
    Click Element    ${Packing Name}
    Click Button    ${Id Edit Item Packing Button}
    Wait Until Ready    ${Disabled Checkbox}
    Select Checkbox    ${Disabled Checkbox}
    Click Element    ${Finish Button}

Add Contract Kind
    Wait Until Ready    ${Id Add Contract Kind Button}
    Click Button    ${Id Add Contract Kind Button}
    Wait Until Ready    ${Id Add Contract Kind}
    Input Text    ${Id Add Contract Kind}    ${Contract Kind Name}
    Click Element    ${Finish Button}

Enable Contract Kind
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Contract Kind Button}
    Wait Until Ready    ${Id Add Contract Kind}
    Unselect Checkbox    ${Contract Kind Checkbox}
    Click Element    ${Finish Button}

Enable Contract Kind Or Add Contract Kind
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Contract Kind
        ...    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Contract Kind
        ...    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Contract Kind

Go To Header Main Data Fields
    Go To Settings
    Wait Until Ready    ${Id Proposal Lists}
    Click Element    ${Id Proposal Lists}
    Wait Until Ready    ${Id Field}
    Click Element    ${Id Field}
    Wait Until Ready    ${Id Add Field Button}

Add Field In Header Main Data
    Wait Until Ready    ${Id Add Field Button}
    Click Button    ${Id Add Field Button}
    Wait Until Ready    ${Add Field}
    Input Text    ${Add Field}    ${Field Name2}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name2}"]
    Click Element    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name2}"]

Enable Field
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Field Button}
    Wait Until Ready    ${Add Field}
    Unselect Checkbox    ${Field Checkbox}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name2}"]
    Click Element    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name2}"]

Enable Fields Or Add Field
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name2}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Field    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Field    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name2}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Field In Header Main Data
    END

Go To Profit Center
    Wait Until Ready    ${Id Profit Center}
    Click Element    ${Id Profit Center}
    Wait Until Ready    ${Id Add Profit Center Button}

Enable Profit Center
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Profit Center Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Enable Profit Center Or Add Profit Center
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Profit Center Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Profit Center    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Profit Center    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Profit Center Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Profit Center

Add Profit Center
    Wait Until Ready    ${Id Add Profit Center Button}
    Click Button    ${Id Add Profit Center Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Profit Center Name}
    Input Text    ${Id Add Contract Type Description}    ${Profit Center Name}
    Input Text    ${Id Add Responsible}    ${Profit Center Name}
    Click Element    ${Finish Button}

Collect Failure Data
    IF    '${TEST STATUS}' == 'FAIL'
        # Bezpečné získání čistého názvu souboru (např. commenting_sch.robot)
        ${suite_file}=    Evaluate    os.path.basename(r"${SUITE_SOURCE}")    modules=os

        # Spojíme data pomocí robustního oddělovače |||
        ${test_with_error}=    Catenate    SEPARATOR=|||    ${suite_file}    ${TEST NAME}    ${TEST MESSAGE}
        Append To List    ${FAILED_TESTS}    ${test_with_error}

        # Uložení screenshotu do složky s logy
        ${screenshot}=    Set Variable    ${OUTPUT DIR}${/}${TEST NAME}.png
        Capture Page Screenshot    ${screenshot}
        Append To List    ${SCREENSHOTS}    ${screenshot}

        Set Global Variable    ${FAILED_TESTS}
        Set Global Variable    ${SCREENSHOTS}
    END

Create Jira Ticket If Needed
    ${fail_count}=    Get Length    ${FAILED_TESTS}

    IF    ${fail_count} > 0
        ${failed}=    Catenate    SEPARATOR=||    @{FAILED_TESTS}
        ${screens}=    Catenate    SEPARATOR=||    @{SCREENSHOTS}

        ${result}=    Run Process
        ...    ${EXECDIR}/venv/Scripts/python.exe
        ...    ${EXECDIR}/tests/jira_suite_report.py
        ...    "${failed}"
        ...    "${screens}"
        ...    "${APP_VERSION}"
        ...    stdout=STDOUT
        ...    stderr=STDOUT

        Should Be Equal As Integers    ${result.rc}    0
        ...    msg=Python skript selhal! Výpis: ${result.stdout}
    ELSE
        Log    No failures → Jira ticket not created
    END

Run Final Teardown
    Restore Original Fields State
    Create Jira Ticket If Needed

Init Setup
    ${FAILED_TESTS}=    Create List
    Set Global Variable    ${FAILED_TESTS}
    ${SCREENSHOTS}=    Create List
    Set Global Variable    ${SCREENSHOTS}

    Save and Set Fields
    Get App Version

Get App Version
    Open Browser And Logged In
    Wait Until Ready    ${App Name}
    ${version}=    Get Element Attribute    ${App Name}    title
    Set Global Variable    ${APP_VERSION}    ${version}

Check If Current Suite Failed
    # Vytvoříme unikátní název proměnné pro každý .robot soubor (např. ${commenting_sch_FAILED})
    # ${SUITE_NAME} je vestavěná proměnná Robotu, která obsahuje název aktuálního běžícího souboru
    ${suite_status_var}=    Set Variable    \${${SUITE_NAME}_FAILED}

    # Zkontrolujeme, zda tato proměnná už existuje a je nastavená na TRUE
    ${already_failed}=    Run Keyword And Return Status    Variable Should Exist    ${suite_status_var}

    IF    ${already_failed}
        ${status}=    Get Variable Value    ${suite_status_var}
        IF    ${status}
            Skip    Přeskočeno, protože předchozí test v sadě "${SUITE_NAME}" selhal.
        END
    END

Collect Failure Data And Track Status
    # 1. ZDE SE SPUSTÍ TVŮJ PŮVODNÍ KÓD PRO SBĚR DAT (SCREENSHOTY ATD.)
    Collect Failure Data

    # 2. NOVINKA: Pokud test selhal, označíme aktuální soubor (.robot) za pokažený
    IF    '${TEST STATUS}' == 'FAIL'
        # Vytvoříme globální proměnnou specifickou pro tento .robot soubor a nastavíme ji na TRUE
        Set Global Variable    \${${SUITE_NAME}_FAILED}    ${TRUE}
    END

*** Settings ***
Documentation       This is a resource file for dependencies.
...                 Keywords defined here can be used where this "dependencies.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                            //button[normalize-space(text())="Dokončit"]
${Close Button}                             xpath=//button[@title="Close"]
${Delete Button}                            //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                 alert_area
${Alert Message}                            Vyplňte prosím všechna povinná pole!
${Timeout}                                  5s
${Personal Space}                           //a[@class="main_tabs" and @href="#tab_personal"]
${Id Administration and Configuration}      admin_config
${Settings}                                 //a[@class="main_tabs" and @href="#tab_settings"]
${Id Dependencies}                          settings_custom_dependencies
${Id Master Field Add Button}               ts_add_dep_master_btn
${Id Select Master Field}                   s_master_field
${Master Field}                             Jazyk smlouvy
${Master Field2}                            Oblast
${Value Name}                               name=s_from
${Id Slave Field Add Button}                ts_add_dep_slave_btn
${Id Select Slave Field}                    s_slave_field
${Slave Field}                              Organizační jednotka
${Slave Field2}                             Typ smlouvy
${Optional}                                 //label[@for="s_optional"]
${Required}                                 //label[@for="s_required"]
${Id Master Field Edit Button}              ts_edit_dep_master_btn
${Id Slave Field Edit Button}               ts_edit_dep_slave_btn
${Id Primary Person}                        c_primary
${Id Number Sequence}                       c_number
${Create Contract}                          //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Contract Status}                       c_status
${Field}                                    Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                          Přísně tajné
${Contract kind}                            Smlouva o úvěru - § 497 - 507
${Language}                                 Čeština
${Id Add Field}                             c_legalfield
${Id Confidentiality}                       c_confid
${Id Contract kind}                         c_kind
${Id Type}                                  c_type
${Id Partner}                               c_partner
${Partner Test}                             test
${Partner List}                             xpath://ul[contains(@class, 'ui-autocomplete')]/li[1]
${Checkbox Valid Until}                     c_valid_indefinite
${Acc Area Button}                          c_acc_area_btn
${Get SAP Data Dialog}                      get_sap_data_dialog
${Acc Area Field}                           s_bukrs
${SAP Search Button}                        sap_search_btn
${Acc Area Name}                            SAP A.G.
${SAP Search OK Button}                     //button[normalize-space(.)='OK']
${Number Sequence}                          ISSTEST
${Id Language}                              c_lang
${Create Contract File Button}              //button[normalize-space(.)='Vytvoření smluvní složky']
${Id Contract Subject}                      c_subject
${Contract Subject}                         TESTCONRACTDV
${Delete Contract}                          //a[@class="ui-corner-all" and @href="#contract_delete_file"]
${Contract Name Detail}                     //a[@id="tab_contract_contract"]
${Id Slave Field Delete Button}             ts_del_dep_slave_btn
${Id Master Field Delete Button}            ts_del_dep_master_btn
${Please Wait}                              please_wait
${Selected Value}                           ${EMPTY}
${Selected Value 2}                         ${EMPTY}
${Id VAT ID}                                c_vatid
${Id Contract Type}                         c_type
${Id Appl Law}                              c_appl_law
${Id Add Profit Center}                     c_profit_center
${Id Acc Area}                              c_acc_area
${Id Delivery To}                           c_delivery_to
${Id Unit}                                  c_unit
${Id Primary Responsible Person}            c_primary
${Id Secondary Responsible Person}          c_secondary
${Id Add Contract Partners}                 c_partner
${Id Valid Until}                           c_valid_until
${Name}                                     dvtest1
${Name2}                                    vod
${Edited Date}                              12.07.2025
${Id Org Unit}                              c_orgunit
${Id Add Contract Kind Button}              ts_add_contract_kind_btn
${Id Add Contract Kind}                     s_kind
${Contract Kind Name}                       dvtest2
${Contract Kind Name Path}                  xpath=//td[contains(normalize-space(.), "dvtest2")]
${Id Edit Contract Kind Button}             ts_edit_contract_kind_btn
${Contract Kind Checkbox}                   xpath=//input[@type="checkbox" and @name="s_kind_disabled"]
${Contract Kind Edited Name}                dvtestKindEdited
${Contract Kind Edited Name Path}           xpath=//td[contains(normalize-space(.), "dvtestKindEdited")]
${Id Field}                                 settings_legal_fields
${Id Add Field Button}                      ts_add_legal_field_btn
${Add Field}                                s_field
${Id Edit Field Button}                     ts_edit_legal_field_btn
${Field Checkbox}                           id=s_field_disabled
${Field Name Path}                          xpath=//td[contains(normalize-space(.), "dvtest")]
${Field Name}                               dvtest
${Id Proposal Lists}                        proposals
${Id Profit Center}                         settings_profcenter
${Id Edit Profit Center Button}             ts_edit_profcenter_btn
${Id Add Profit Center Button}              ts_add_profcenter_btn
${Profit Center Name}                       test
${Contract Type Checkbox}                   xpath=//input[@type='checkbox' and @id='s_disabled']
${Id Add Contract Type}                     s_field1
${Id Add Contract Type Description}         s_field2
${Id Add Responsible}                       s_field3
${Timeout2}                                 1s
${Edited Name}                              dvtestEdited


*** Keywords ***
Go To Settings
    Wait Until Ready    ${Settings}
    Click Element    ${Settings}

Click On Administration
    Wait Until Ready    ${Id Administration and Configuration}
    Click Element    ${Id Administration and Configuration}

Click On Dependencies
    Wait Until Ready    ${Id Dependencies}
    Click Element    ${Id Dependencies}

Go To Dependencies
    Go To Settings
    Click On Administration
    Click On Dependencies

Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Dependencies Setup
    Open Browser And Logged In
    Go To Header Main Data Fields
    Enable Fields Or Add Field
    Enable Contract Kind Or Add Contract Kind
    Go To Profit Center
    Enable Profit Center Or Add Profit Center
    Go To Dependencies

Add Master Field
    Wait Until Ready    ${Id Master Field Add Button}
    Click Button    ${Id Master Field Add Button}
    Wait Until Ready    ${Id Select Master Field}
    Select From List By Label    ${Id Select Master Field}    ${Master Field2}
    Wait Until Ready    ${Value Name}
    Select From List By Index    ${Value Name}    0
    ${Selected Label}=    Get Selected List Label    ${Value Name}
    Set Suite Variable    ${Selected Value}    ${Selected Label}
    Click Element    ${Finish Button}

Edit Master Field
    Wait Until Ready    //*[@id="ts_dep_masters_tbl"]//td[text()="${Selected Value}"]
    Click Element    //*[@id="ts_dep_masters_tbl"]//td[text()="${Selected Value}"]
    Click Button    ${Id Master Field Edit Button}
    Wait Until Ready    ${Id Select Master Field}
    Select From List By Label    ${Id Select Master Field}    ${Master Field}
    Wait Until Ready    ${Value Name}
    Select From List By Index    ${Value Name}    1
    ${Selected Label 2}=    Get Selected List Label    ${Value Name}
    Set Suite Variable    ${Selected Value 2}    ${Selected Label 2}
    Click Element    ${Finish Button}

Delete Master Field
    Wait Until Ready    //*[@id="ts_dep_masters_tbl"]//td[text()="${Selected Value 2}"]
    Click Element    //*[@id="ts_dep_masters_tbl"]//td[text()="${Selected Value 2}"]
    Click Button    ${Id Master Field Delete Button}
    Wait Until Ready    ${Delete Button}
    Click Element    ${Delete Button}

Add Slave Field
    Wait Until Ready    //*[@id="ts_dep_masters_tbl"]//td[text()="${Selected Value}"]
    Click Element    //*[@id="ts_dep_masters_tbl"]//td[text()="${Selected Value}"]
    Click Button    ${Id Slave Field Add Button}
    Wait Until Ready    ${Id Select Slave Field}
    Select From List By Label    ${Id Select Slave Field}    ${Slave Field2}
    Click Element    ${Optional}
    Click Element    ${Finish Button}

Edit Slave Field
    Wait Until Ready    //*[@id="ts_dep_masters_tbl"]//td[text()="${Selected Value 2}"]
    Click Element    //*[@id="ts_dep_masters_tbl"]//td[text()="${Selected Value 2}"]
    Wait Until Ready    //*[@id="ts_dep_slaves_tbl"]//td[text()="${Slave Field2}"]
    Click Element    //*[@id="ts_dep_slaves_tbl"]//td[text()="${Slave Field2}"]
    Click Button    ${Id Slave Field Edit Button}
    Wait Until Ready    ${Id Select Slave Field}
    Select From List By Label    ${Id Select Slave Field}    ${Slave Field}
    Click Element    ${Required}
    Click Element    ${Finish Button}

Delete Slave Field
    Wait Until Ready    //*[@id="ts_dep_masters_tbl"]//td[text()="${Selected Value 2}"]
    Click Element    //*[@id="ts_dep_masters_tbl"]//td[text()="${Selected Value 2}"]
    Wait Until Ready    //*[@id="ts_dep_slaves_tbl"]//td[text()="${Slave Field}"]
    Click Element    //*[@id="ts_dep_slaves_tbl"]//td[text()="${Slave Field}"]
    Click Button    ${Id Slave Field Delete Button}
    Wait Until Ready    ${Delete Button}
    Click Element    ${Delete Button}

Check If Org Unit Is Optional
    Wait Until Ready    ${Id Master Field Add Button}
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    ${class}=    Get Element Attribute    id=c_orgunit    class
    Should Not Contain    ${class}    required

Check If Org Unit Is Required
    Select From List By Label    ${Id Language}    ${Selected Value 2}
    ${class}=    Get Element Attribute    id=c_orgunit    class
    Should Contain    ${class}    required

Try To Create Contract Without Required Org Unit
    Fill In Required Fields
    Click Button    ${Create Contract File Button}
    Element Should Be Visible    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Element    ${Close Button}

Fill In Required Fields
    Wait Until Ready    ${Id Language}
    Select From List By Index    ${Id Number Sequence}    1
    Select From List By Index    ${Id Contract Type}    1
    Select From List By Label    ${Id Add Field}    ${Field Name}
    Select From List By Index    ${Id Confidentiality}    1
    Select From List By Label    ${Id Contract kind}    ${Contract Kind Name}
    Select From List By Label    ${Id Language}    ${Selected Value 2}
    Select From List By Index    ${Id Contract Status}    1
    Select From List By Index    ${Id Primary Responsible Person}    1
    Select From List By Index    ${Id Secondary Responsible Person}    1
    Select From List By Index    ${Id Appl Law}    1
    Input Text    ${Id Add Contract Partners}    ${Name2}
    Wait Until Element Is Visible    (//li[contains(@class,"ui-menu-item")])[1]
    Click Element    (//li[contains(@class,"ui-menu-item")])[1]
    Wait Until Ready    ${Id Language}
    Input Text    ${Id Add Profit Center}    ${Name}
    Wait Until Element Is Visible    (//li[contains(@class,"ui-menu-item")])[1]
    Click Element    (//li[contains(@class,"ui-menu-item")])[1]
    Wait Until Ready    ${Id Language}
    Input Text    ${Id Valid Until}    ${Edited Date}
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Select From List By Index    ${Id VAT ID}    1
    Fill In Acc Area

Fill In Acc Area
    ${is_button_present}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    ${Acc Area Button}
    ...    timeout=2s
    IF    ${is_button_present}
        Fill In Acc Area From SAP
        Log    Vyhledání přes SAP
    ELSE
        Select From List By Index    ${Id Acc Area}    1
        Log    Vyhledání v CSM
    END

Fill In Acc Area From SAP
    Click Element    ${Acc Area Button}
    Wait Until Ready    ${Get SAP Data Dialog}
    Input Text    ${Acc Area Field}    1
    Click Element    ${SAP Search Button}
    Wait Until Ready    xpath=//table[@id="sap_search_results_tbl"]//td[normalize-space(.)="${Acc Area Name}"]
    Click Element    xpath=//table[@id="sap_search_results_tbl"]//td[normalize-space(.)="${Acc Area Name}"]
    Click Button    ${SAP Search OK Button}

Create Contract With All Required
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Fill In Required Fields
    Select From List By Index    ${Id Org Unit}    1
    Click Button    ${Create Contract File Button}

Delete Contract
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Element Is Not Visible    ${Please Wait}
    Sleep    1
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Wait Until Ready    ${Delete Contract}
    Click Element    ${Delete Contract}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Delete Dependencies
    Go To Settings
    Delete Slave Field
    Delete Master Field

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
    Input Text    ${Add Field}    ${Field Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name}"]
    Click Element    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name}"]

Enable Field
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Field Button}
    Wait Until Ready    ${Add Field}
    Unselect Checkbox    ${Field Checkbox}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name}"]
    Click Element    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name}"]

Enable Fields Or Add Field
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Field    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Field    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Field Name}"]
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

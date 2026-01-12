*** Settings ***
Documentation       This is a resource file for header aux data.
...                 Keywords defined here can be used where this "haux_data.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                        //button[normalize-space(text())="Dokončit"]
${Close Button}                         xpath=//button[@title="Close"]
${Delete Button}                        //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                             alert_area
${Alert Message}                        Vyplňte prosím všechna povinná pole!
${Timeout}                              5s
${Timeout2}                             1s
${Personal Space}                       //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                             //a[@class="main_tabs" and @href="#tab_settings"]
${Id Header Aux Data}                   settings_pl_head_aux
${Id Original Storage}                  settings_storage
${Name}                                 dvtest1
${Name Path}                            xpath=//td[contains(normalize-space(.), "dvtest1")]
${Edited Name}                          dvtestEdited
${Edited Name Path}                     xpath=//td[contains(normalize-space(.), "dvtestEdited")]
${Name2}                                dvtestKind
${Name2 Path}                           xpath=//td[contains(normalize-space(.), "dvtestKind")]
${Edited Name2}                         dvtestKindEdited
${Edited Name2 Path}                    xpath=//td[contains(normalize-space(.), "dvtestKindEdited")]
${Name3}                                DV
${Name3 Path}                           xpath=//td[contains(normalize-space(.), "DV")]
${Edited Name3}                         DVE
${Edited Name3 Path}                    xpath=//td[contains(normalize-space(.), "DVE")]
${Name4}                                DVE dvtestEdited
${Id Add Original Storage Button}       ts_add_storage_btn
${Id Edit Original Storage Button}      ts_edit_storage_btn
${Id Add Field1}                        s_field1
${Id Add Field2}                        s_field2
${Id Add Field3}                        s_field3
${Checkbox}                             xpath=//input[@type='checkbox' and @id='s_disabled']
${Create Contract}                      //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Number Sequence}                   c_number
${Id Contract Status}                   c_status
${Field}                                Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                      Přísně tajné
${Contract kind}                        Smlouva o úvěru - § 497 - 507
${Language}                             Čeština
${Id Field}                             c_legalfield
${Id Confidentiality}                   c_confid
${Id Contract kind}                     c_kind
${Number Sequence}                      ISSTEST
${Id Language}                          c_lang
${Value}                                Ve zpracování
${Id Contract Subject}                  c_subject
${Contract Subject}                     TESTCONRACTDV
${Other Data Path}                      xpath=//a[normalize-space(.)="Další data"]
${Id Add Original Storage}              c_storage
${Create Contract File Button}          //button[normalize-space(.)='Vytvoření smluvní složky']
${Id Add Document Button}               tc_add_document_btn
${Delete Contract}                      xpath=//li[@class="cm_item ui-corner-all"]//a[contains(@href, "#contract_delete_file")]
${Id Keywords}                          settings_keywords
${Id Edit Keywords Button}              ts_edit_keywords_btn
${Id Add Keywords Button}               ts_add_keywords_btn
${Id Add Keywords}                      c_keyword_ms
${Id Document Type}                     settings_doc_types
${Id Edit Document Type Button}         ts_edit_doc_type_btn
${Id Add Document Type Button}          ts_add_doc_type_btn
${Id Add Document Type Name}            s_doc_type
${Document Type Additional}             xpath=//label[@for="s_is_other"]
${Document Type Main}                   xpath=//label[@for="s_is_main"]
${Id Document Type Checkbox}            s_doc_type_disabled
${Id Add Keywords0}                     xpath=//input[@id="ui-multiselect-1-c_keyword-option-0"]
${Check All}                            xpath=//div[contains(@class,"ui-multiselect-menu") and contains(@style,"display: block")]//span[text()="Vybrat vše"]
${Uncheck All}                          xpath=//div[contains(@class,"ui-multiselect-menu") and contains(@style,"display: block")]//span[text()="Zrušit vše"]
${Id Contract Relations}                settings_relations
${Id Edit Contract Relations Button}    ts_edit_relations_btn
${Id Add Contract Relations Button}     ts_add_relations_btn
${Relation role1}                       Hlavní smlouva
${Relation role2}                       Dodatek ke smlouvě
${Id Payment Interval}                  settings_interval
${Id Edit Payment Interval Button}      ts_edit_interval_btn
${Id Add Payment Interval Button}       ts_add_interval_btn
${Id Add Payment Interval}              c_payment_interval
${Id Business Area}                     settings_bus_area
${Id Edit Business Area Button}         ts_edit_bus_area_btn
${Id Add Business Area Button}          ts_add_bus_area_btn
${Id Add Business Area}                 c_bus_area
${Id Purchase Org}                      settings_purch_org
${Id Edit Purchase Org Button}          ts_edit_purch_org_btn
${Id Add Purchase Org Button}           ts_add_purch_org_btn
${Id Add Purchase Org}                  c_purch_org
${Id Purchase Group}                    settings_purch_group
${Id Edit Purchase Group Button}        ts_edit_purch_group_btn
${Id Add Purchase Group Button}         ts_add_purch_group_btn
${Id Add Purchase Group}                c_purch_grp
${Id Sales Group}                       settings_sales_group
${Id Edit Sales Group Button}           ts_edit_sales_group_btn
${Id Add Sales Group Button}            ts_add_sales_group_btn
${Id Add Sales Group}                   c_sales_grp
${Id Sales Office}                      settings_sales_office
${Id Edit Sales Office Button}          ts_edit_sales_office_btn
${Id Add Sales Office Button}           ts_add_sales_office_btn
${Id Add Sales Office}                  c_sales_off
${Id Shipping Condition}                settings_ship_cond
${Id Edit Shipping Condition Button}    ts_edit_ship_cond_btn
${Id Add Shipping Condition Button}     ts_add_ship_cond_btn
${Id Add Shipping Condition}            c_ship_cond
${Id Invoicing date}                    settings_inv_date
${Id Edit Invoicing date Button}        ts_edit_inv_date_btn
${Id Add Invoicing date Button}         ts_add_inv_date_btn
${Id Add Invoicing date}                c_invoicing_date
${File Path}                            ${EXECDIR}/template_test.docx
${Input File}                           xpath=//input[@type="file" and @name="qqfile"]
${Id Add Document Type}                 doc_type
${Contract Relations}                   xpath=//a[@href="#tc_contract_relations" and contains(@class, "sub_tabs")]
${Add Contract Relations Button}        tc_add_relation_btn
${Id Contract Relations From}           c_relation_from
${Search Contract Relations Button}     rel_search_btn
${Id Contract Relations To}             c_relation_to
${Search Button}                        xpath=//button[@type="button" and contains(@class, "ui-button") and normalize-space(.)="Hledání"]
${Contract}                             css=#search_contract_relation_tbl tbody tr.odd td.sorting_1
${Please Wait}                          please_wait
${Id VAT ID}                            c_vatid
${Id Contract Type}                     c_type
${Id Appl Law}                          c_appl_law
${Id Profit Center}                     c_profit_center
${Id Acc Area}                          c_acc_area
${Id Delivery To}                       c_delivery_to
${Id Unit}                              c_unit
${Id Valid Until}                       c_valid_until
${Id Primary Responsible Person}        c_primary
${Id Secondary Responsible Person}      c_secondary
${Id Add Contract Partners}             c_partner
${Edited Date}                          12.07.2025
${Name5}                                vod

*** Keywords ***
Go To Settings
    Wait Until Ready    ${Settings}
    Click Element    ${Settings}

Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Haux Setup
    Open Browser And Logged In
    Go To Settings
    Wait Until Ready    ${Id Header Aux Data}
    Click Element    ${Id Header Aux Data}

Fill In Required Fields
    Wait Until Ready    ${Id Language}
    Select From List By Index    ${Id Number Sequence}    1
    Select From List By Index    ${Id Contract Type}    1
    Select From List By Index    ${Id Field}    1
    Select From List By Index    ${Id Confidentiality}    1
    Select From List By Index    ${Id Contract kind}    1
    Select From List By Index    ${Id Language}    1
    Select From List By Index    ${Id Contract Status}    1
    Select From List By Index    ${Id Primary Responsible Person}    1
    Select From List By Index    ${Id Secondary Responsible Person}    1
    Select From List By Index    ${Id Appl Law}    1
    Input Text    ${Id Add Contract Partners}    ${Name5}
    Wait Until Element Is Visible    (//li[contains(@class,"ui-menu-item")])[1]
    Click Element    (//li[contains(@class,"ui-menu-item")])[1]
    Wait Until Ready    ${Id Language}
    Input Text    ${Id Profit Center}    ${Name}
    Wait Until Element Is Visible    (//li[contains(@class,"ui-menu-item")])[1]
    Click Element    (//li[contains(@class,"ui-menu-item")])[1]
    Wait Until Ready    ${Id Language}
    Input Text    ${Id Valid Until}    ${Edited Date}
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Select From List By Index    ${Id VAT ID}    1
    Select From List By Index    ${Id Acc Area}    1

Check Created Contract Other Data
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Fill In Required Fields
    Click Element    ${Other Data Path}
    Select From List By Label    ${Id Add Original Storage}    ${Edited Name}
    Click Element    ${Id Add Keywords}
    Wait Until Element Is Visible    ${Check All}    timeout=10s
    Click Element    ${Check All}
    Wait Until Element Is Visible    ${Uncheck All}    timeout=10s
    Click Element    ${Uncheck All}
    Click Element    ${Id Add Keywords0}
    Select From List By Label    ${Id Add Payment Interval}    ${Edited Name}
    Select From List By Label    ${Id Add Business Area}    ${Name4}
    Select From List By Label    ${Id Add Purchase Org}    ${Name4}
    Select From List By Label    ${Id Add Purchase Group}    ${Name4}
    Select From List By Label    ${Id Add Sales Group}    ${Name4}
    Select From List By Label    ${Id Add Sales Office}    ${Name4}
    Select From List By Label    ${Id Add Shipping Condition}    ${Name4}
    Select From List By Label    ${Id Add Invoicing date}    ${Name4}
    Click Button    ${Create Contract File Button}

Delete Contract
    Wait Until Ready    ${Add Contract Relations Button}
    Wait Until Ready    ${Delete Contract}
    Click Element    ${Delete Contract}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Go To Original Storage
    Wait Until Ready    ${Id Original Storage}
    Click Element    ${Id Original Storage}
    Wait Until Ready    ${Id Add Original Storage Button}

Enable Original Storage
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Original Storage
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Original Storage    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Original Storage    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Original Storage
    END

Add Original Storage
    Wait Until Ready    ${Id Add Original Storage Button}
    Click Button    ${Id Add Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${Name}"]

Edit Original Storage
    Wait Until Ready    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Original Storage Button}
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Original Storage
    Go To Settings
    Go To Original Storage
    Wait Until Ready    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Original Storage Button}
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Keywords
    Wait Until Ready    ${Id Keywords}
    Click Element    ${Id Keywords}
    Wait Until Ready    ${Id Add Keywords Button}

Enable Keywords
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Keywords Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Keywords
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_keywords_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_keywords_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Keywords    xpath=//table[@id="ts_keywords_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Keywords    xpath=//table[@id="ts_keywords_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Keywords

Add Keywords
    Wait Until Ready    ${Id Add Keywords Button}
    Click Button    ${Id Add Keywords Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_keywords_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_keywords_tbl"]//td[normalize-space(.)="${Name}"]

Edit Keywords
    Wait Until Ready    xpath=//table[@id="ts_keywords_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_keywords_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Keywords Button}
    Click Button    ${Id Edit Keywords Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Keywords
    Go To Keywords
    Wait Until Ready    xpath=//table[@id="ts_keywords_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_keywords_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Keywords Button}
    Click Button    ${Id Edit Keywords Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Document Type
    Wait Until Ready    ${Id Document Type}
    Click Element    ${Id Document Type}
    Wait Until Ready    ${Id Add Document Type Button}

Enable Document Type
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Document Type Button}
    Wait Until Ready    ${Id Add Document Type Name}
    Input Text    ${Id Add Document Type Name}    ${Name}
    Unselect Checkbox    ${Id Document Type Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Document Type
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_doc_types_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_doc_types_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Document Type    xpath=//table[@id="ts_doc_types_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Document Type    xpath=//table[@id="ts_doc_types_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Document Type

Add Document Type
    Wait Until Ready    ${Id Add Document Type Button}
    Click Button    ${Id Add Document Type Button}
    Wait Until Ready    ${Id Add Document Type Name}
    Input Text    ${Id Add Document Type Name}    ${Name}
    Click Element    ${Document Type Additional}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_doc_types_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_doc_types_tbl"]//td[normalize-space(.)="${Name}"]

Edit Document Type
    Wait Until Ready    xpath=//table[@id="ts_doc_types_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_doc_types_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Document Type Button}
    Click Button    ${Id Edit Document Type Button}
    Wait Until Ready    ${Id Add Document Type Name}
    Input Text    ${Id Add Document Type Name}    ${Edited Name}
    Click Element    ${Document Type Main}
    Click Element    ${Finish Button}

Disable Document Type
    Go To Document Type
    Wait Until Ready    xpath=//table[@id="ts_doc_types_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_doc_types_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Document Type Button}
    Click Button    ${Id Edit Document Type Button}
    Wait Until Ready    ${Id Add Document Type Name}
    Input Text    ${Id Add Document Type Name}    ${Name}
    Click Element    ${Document Type Additional}
    Select Checkbox    ${Id Document Type Checkbox}
    Click Element    ${Finish Button}

Go To Contract Relations
    Wait Until Ready    ${Id Contract Relations}
    Click Element    ${Id Contract Relations}
    Wait Until Ready    ${Id Add Contract Relations Button}

Enable Contract Relations
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Contract Relations Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Select From List By Label    ${Id Add Field2}    ${Relation role2}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Contract Relations
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_relations_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_relations_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Contract Relations    xpath=//table[@id="ts_relations_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Contract Relations    xpath=//table[@id="ts_relations_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Contract Relations
    END

Add Contract Relations
    Wait Until Ready    ${Id Add Contract Relations Button}
    Click Button    ${Id Add Contract Relations Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Select From List By Label    ${Id Add Field2}    ${Relation role2}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_relations_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_relations_tbl"]//td[normalize-space(.)="${Name}"]

Edit Contract Relations
    Wait Until Ready    xpath=//table[@id="ts_relations_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_relations_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Contract Relations Button}
    Click Button    ${Id Edit Contract Relations Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name}
    Select From List By Label    ${Id Add Field2}    ${Relation role1}
    Click Element    ${Finish Button}

Disable Contract Relations
    Go To Contract Relations
    Wait Until Ready    xpath=//table[@id="ts_relations_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_relations_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Contract Relations Button}
    Click Button    ${Id Edit Contract Relations Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Select From List By Label    ${Id Add Field2}    ${Relation role2}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Payment Interval
    Wait Until Ready    ${Id Payment Interval}
    Click Element    ${Id Payment Interval}
    Wait Until Ready    ${Id Add Payment Interval Button}

Enable Payment Interval
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Payment Interval Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Payment Interval
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Payment Interval    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Payment Interval    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Payment Interval
    END

Add Payment Interval
    Wait Until Ready    ${Id Add Payment Interval Button}
    Click Button    ${Id Add Payment Interval Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${Name}"]

Edit Payment Interval
    Wait Until Ready    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Payment Interval Button}
    Click Button    ${Id Edit Payment Interval Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Payment Interval
    Go To Payment Interval
    Wait Until Ready    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Payment Interval Button}
    Click Button    ${Id Edit Payment Interval Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Business Area
    Wait Until Ready    ${Id Business Area}
    Click Element    ${Id Business Area}
    Wait Until Ready    ${Id Add Business Area Button}

Enable Business Area
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Business Area Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Business Area
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_bus_area_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_bus_area_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Business Area    xpath=//table[@id="ts_bus_area_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Business Area    xpath=//table[@id="ts_bus_area_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Business Area

Add Business Area
    Wait Until Ready    ${Id Add Business Area Button}
    Click Button    ${Id Add Business Area Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_bus_area_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_bus_area_tbl"]//td[normalize-space(.)="${Name}"]

Edit Business Area
    Wait Until Ready    xpath=//table[@id="ts_bus_area_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_bus_area_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Business Area Button}
    Click Button    ${Id Edit Business Area Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name3}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Business Area
    Go To Business Area
    Wait Until Ready    xpath=//table[@id="ts_bus_area_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_bus_area_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Business Area Button}
    Click Button    ${Id Edit Business Area Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Purchase Org
    Wait Until Ready    ${Id Purchase Org}
    Click Element    ${Id Purchase Org}
    Wait Until Ready    ${Id Add Purchase Org Button}

Enable Purchase Org
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Purchase Org Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Purchase Org
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_purch_org_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_purch_org_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Purchase Org    xpath=//table[@id="ts_purch_org_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Purchase Org    xpath=//table[@id="ts_purch_org_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Purchase Org

Add Purchase Org
    Wait Until Ready    ${Id Add Purchase Org Button}
    Click Button    ${Id Add Purchase Org Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_purch_org_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_purch_org_tbl"]//td[normalize-space(.)="${Name}"]

Edit Purchase Org
    Wait Until Ready    xpath=//table[@id="ts_purch_org_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_purch_org_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Purchase Org Button}
    Click Button    ${Id Edit Purchase Org Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name3}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Purchase Org
    Go To Purchase Org
    Wait Until Ready    xpath=//table[@id="ts_purch_org_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_purch_org_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Purchase Org Button}
    Click Button    ${Id Edit Purchase Org Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Purchase Group
    Wait Until Ready    ${Id Purchase Group}
    Click Element    ${Id Purchase Group}
    Wait Until Ready    ${Id Add Purchase Group Button}

Enable Purchase Group
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Purchase Group Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Purchase Group
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_purch_group_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_purch_group_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Purchase Group    xpath=//table[@id="ts_purch_group_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Purchase Group    xpath=//table[@id="ts_purch_group_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Purchase Group

Add Purchase Group
    Wait Until Ready    ${Id Add Purchase Group Button}
    Click Button    ${Id Add Purchase Group Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_purch_group_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_purch_group_tbl"]//td[normalize-space(.)="${Name}"]

Edit Purchase Group
    Wait Until Ready    xpath=//table[@id="ts_purch_group_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_purch_group_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Purchase Group Button}
    Click Button    ${Id Edit Purchase Group Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name3}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Purchase Group
    Go To Purchase Group
    Wait Until Ready    xpath=//table[@id="ts_purch_group_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_purch_group_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Purchase Group Button}
    Click Button    ${Id Edit Purchase Group Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Sales Group
    Wait Until Ready    ${Id Sales Group}
    Click Element    ${Id Sales Group}
    Wait Until Ready    ${Id Add Sales Group Button}

Enable Sales Group
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Sales Group Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Sales Group
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_sales_group_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_sales_group_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Sales Group    xpath=//table[@id="ts_sales_group_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Sales Group    xpath=//table[@id="ts_sales_group_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Sales Group

Add Sales Group
    Wait Until Ready    ${Id Add Sales Group Button}
    Click Button    ${Id Add Sales Group Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_sales_group_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_sales_group_tbl"]//td[normalize-space(.)="${Name}"]

Edit Sales Group
    Wait Until Ready    xpath=//table[@id="ts_sales_group_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_sales_group_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Sales Group Button}
    Click Button    ${Id Edit Sales Group Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name3}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Sales Group
    Go To Sales Group
    Wait Until Ready    xpath=//table[@id="ts_sales_group_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_sales_group_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Sales Group Button}
    Click Button    ${Id Edit Sales Group Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Sales Office
    Wait Until Ready    ${Id Sales Office}
    Click Element    ${Id Sales Office}
    Wait Until Ready    ${Id Add Sales Office Button}

Enable Sales Office
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Sales Office Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Sales Office
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_sales_office_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_sales_office_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Sales Office    xpath=//table[@id="ts_sales_office_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Sales Office    xpath=//table[@id="ts_sales_office_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Sales Office

Add Sales Office
    Wait Until Ready    ${Id Add Sales Office Button}
    Click Button    ${Id Add Sales Office Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_sales_office_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_sales_office_tbl"]//td[normalize-space(.)="${Name}"]

Edit Sales Office
    Wait Until Ready    xpath=//table[@id="ts_sales_office_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_sales_office_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Sales Office Button}
    Click Button    ${Id Edit Sales Office Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name3}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Sales Office
    Go To Sales Office
    Wait Until Ready    xpath=//table[@id="ts_sales_office_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_sales_office_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Sales Office Button}
    Click Button    ${Id Edit Sales Office Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Shipping Condition
    Wait Until Ready    ${Id Shipping Condition}
    Click Element    ${Id Shipping Condition}
    Wait Until Ready    ${Id Add Shipping Condition Button}

Enable Shipping Condition
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Shipping Condition Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Shipping Condition
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_ship_cond_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_ship_cond_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Shipping Condition    xpath=//table[@id="ts_ship_cond_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Shipping Condition    xpath=//table[@id="ts_ship_cond_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Shipping Condition
    END

Add Shipping Condition
    Wait Until Ready    ${Id Add Shipping Condition Button}
    Click Button    ${Id Add Shipping Condition Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_ship_cond_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_ship_cond_tbl"]//td[normalize-space(.)="${Name}"]

Edit Shipping Condition
    Wait Until Ready    xpath=//table[@id="ts_ship_cond_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_ship_cond_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Shipping Condition Button}
    Click Button    ${Id Edit Shipping Condition Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name3}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Shipping Condition
    Go To Shipping Condition
    Wait Until Ready    xpath=//table[@id="ts_ship_cond_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_ship_cond_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Shipping Condition Button}
    Click Button    ${Id Edit Shipping Condition Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Invoicing date
    Wait Until Ready    ${Id Invoicing date}
    Click Element    ${Id Invoicing date}
    Wait Until Ready    ${Id Add Invoicing date Button}

Enable Invoicing date
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Invoicing date Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Invoicing date
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Invoicing date    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Invoicing date    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Invoicing date

Add Invoicing date
    Wait Until Ready    ${Id Add Invoicing date Button}
    Click Button    ${Id Add Invoicing date Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${Name}"]

Edit Invoicing date
    Wait Until Ready    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Invoicing date Button}
    Click Button    ${Id Edit Invoicing date Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name3}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Invoicing date
    Go To Invoicing date
    Wait Until Ready    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Invoicing date Button}
    Click Button    ${Id Edit Invoicing date Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name3}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Check Created Contract Document
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Create Contract}
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Wait Until Element Is Not Visible    ${Please Wait}
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Double Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Wait Until Ready    ${Id Add Document Button}
    Click Button    ${Id Add Document Button}
    Wait Until Ready    ${Id Add Document Type}
    Select From List By Label    ${Id Add Document Type}    ${Edited Name}
    Click Element    ${Close Button}
    Wait Until Ready    ${Id Add Document Button}

Check Created Contract Relations
    Wait Until Ready    ${Contract Relations}
    Click Element    ${Contract Relations}
    Wait Until Ready    ${Add Contract Relations Button}
    Click Button    ${Add Contract Relations Button}
    Wait Until Ready    ${Id Contract Relations From}
    Select From List By Label    ${Id Contract Relations From}    ${Edited Name}
    Select From List By Label    ${Id Contract Relations To}    ${Edited Name}
    Click Element    ${Search Contract Relations Button}
    Wait Until Ready    ${Search Button}
    Click Element    ${Search Button}
    Wait Until Element Is Visible    ${Contract}    timeout=5s
    Click Element    ${Contract}
    Double Click Element    ${Contract}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Contract Relations From}
    Wait Until Ready    ${Add Contract Relations Button}
    Element Should Contain    xpath=//table[@id="tc_contract_relations_tbl"]//td    ${Edited Name}

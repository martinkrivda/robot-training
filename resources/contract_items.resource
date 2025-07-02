*** Settings ***
Documentation       This is a resource file for contract items.
...                 Keywords defined here can be used where this "contract_items.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                                //button[normalize-space(text())="Dokončit"]
${Close Button}                                 xpath=//button[@title="Close"]
${Delete Button}                                //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                     alert_area
${Alert Message}                                Vyplňte prosím všechna povinná pole!
${Timeout}                                      5s
${Timeout2}                                     1s
${Personal Space}                               //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                                     //a[@class="main_tabs" and @href="#tab_settings"]
${Id Contract Items}                            settings_pl_items
${Name}                                         dvtest1
${Edited Name}                                  dvtestEdited
${Id Commodity/service}                         settings_contract_items
${Id Edit Commodity/service Button}             ts_edit_contract_items_btn
${Id Add Commodity/service Button}              ts_add_contract_items_btn
${Id Add Invoicing date}                        c_commodity
${Id Number Sequence}                           c_number
${Id Contract Status}                           c_status
${Field}                                        Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                              Přísně tajné
${Contract kind}                                Smlouva o úvěru - § 497 - 507
${Language}                                     Čeština
${Id Field}                                     c_legalfield
${Id Confidentiality}                           c_confid
${Id Contract kind}                             c_kind
${Number Sequence}                              ISSTEST
${Id Language}                                  c_lang
${Value}                                        Ve zpracování
${Id Contract Subject}                          c_subject
${Contract Subject}                             TESTCONRACTDV
${Create Contract File Button}                  //button[normalize-space(.)='Vytvoření smluvní složky']
${Delete Contract}                              xpath=//li[@class="cm_item ui-corner-all"]//a[contains(@href, "#contract_delete_file")]
${Create Contract}                              //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Add Field1}                                s_field1
${Id Add Field2}                                s_field2
${Id Add Field3}                                s_field3
${Checkbox}                                     xpath=//input[@type='checkbox' and @id='s_disabled']
${Please Wait}                                  please_wait
${Id Add Document Button}                       tc_add_document_btn
${Contract Items}                               xpath=//a[@href="#tc_contract_items" and contains(@class, "sub_tabs")]
${Id Add Item Button}                           tc_add_item_btn
${Id Unit Price}                                c_unit_price
${Unit Price}                                   1,69
${Id Item type}                                 settings_item_type
${Id Edit Item type Button}                     ts_edit_item_type_btn
${Id Add Item type Button}                      ts_add_item_type_btn
${Id Add Item type}                             c_item_type
${Id Administration and Configuration}          admin_config
${Id Fields}                                    settings_custom_fields
${Field Name}                                   //tr[td[normalize-space(.)='Typ položky']]
${Field Name2}                                  //tr[td[normalize-space(.)='Typ přiřazení účtu']]
${Visibility1}                                  //label[@for="s_visible"]
${Visibility2}                                  //label[@for="s_invisible"]
${Id Fields Edit Button}                        ts_edit_custom_fields_btn
${Id Proposal lists}                            ui-id-14
${Name2}                                        DV
${Edited Name2}                                 DVE
${Name3}                                        DVE dvtestEdited
${Edited Name3}                                 V dvtestEdited
${Name4}                                        D
${Edited Name4}                                 V
${Id Account Assignment Type}                   settings_item_acc_ass_type
${Id Edit Account Assignment Type Button}       ts_edit_item_acc_ass_type_btn
${Id Add Account Assignment Type Button}        ts_add_item_acc_ass_type_btn
${Id Add Account Assignment Type}               c_acc_ass_type


*** Keywords ***
Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Go To Settings
    Wait Until Ready    ${Settings}
    Click Element    ${Settings}

Go To Fields
    Go To Settings
    Click On Administration
    Wait Until Ready    ${Id Fields}
    Click Element    ${Id Fields}

Click On Administration
    Wait Until Ready    ${Id Administration and Configuration}
    Click Element    ${Id Administration and Configuration}

Contract Items Setup
    Open Browser And Logged In
    Go To Fields
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}
    Wait Until Ready    ${Field Name2}
    Click Element    ${Field Name2}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Element    ${Id Proposal lists}
    Wait Until Ready    ${Id Contract Items}
    Click Element    ${Id Contract Items}

Set Item Type Back To Invisible
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Account Assignment Type Back To Invisible
    Wait Until Ready    ${Field Name2}
    Click Element    ${Field Name2}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Create Contract
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Select From List By Label    ${Id Field}    ${Field}
    Select From List By Label    ${Id Confidentiality}    ${Confidentiality}
    Select From List By Label    ${Id Contract kind}    ${Contract kind}
    Select From List By Label    ${Id Language}    ${Language}
    Select From List By Label    ${Id Contract Status}    ${Value}
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Click Button    ${Create Contract File Button}

Check Created Items
    Create Contract
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Create Contract}
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Double Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    Input Text    ${Id Unit Price}    ${Unit Price}
    Select From List By Label    ${Id Add Invoicing date}    ${Edited Name}
    Select From List By Label    ${Id Add Item type}    ${Name3}
    Select From List By Label    ${Id Add Account Assignment Type}    ${Edited Name3}
    Click Element    ${Finish Button}

Delete Contract
    Wait Until Ready    ${Id Add Item Button}
    Wait Until Ready    ${Delete Contract}
    Click Element    ${Delete Contract}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Go To Commodity/service
    Wait Until Ready    ${Id Commodity/service}
    Click Element    ${Id Commodity/service}
    Wait Until Ready    ${Id Add Commodity/service Button}

Enable Commodity/service
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Commodity/service Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Commodity/service
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Commodity/service    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Commodity/service    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Commodity/service
    END

Add Commodity/service
    Wait Until Ready    ${Id Add Commodity/service Button}
    Click Button    ${Id Add Commodity/service Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]

Edit Commodity/service
    Wait Until Ready    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Commodity/service Button}
    Click Button    ${Id Edit Commodity/service Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Commodity/service
    Go To Settings
    Go To Commodity/service
    Wait Until Ready    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Commodity/service Button}
    Click Button    ${Id Edit Commodity/service Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Item type
    Wait Until Ready    ${Id Item type}
    Click Element    ${Id Item type}
    Wait Until Ready    ${Id Add Item type Button}

Enable Item type
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Item type
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Item type    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Item type    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Item type

Add Item type
    Wait Until Ready    ${Id Add Item type Button}
    Click Button    ${Id Add Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]

Edit Item type
    Wait Until Ready    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Item type Button}
    Click Button    ${Id Edit Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Item type
    Go To Item type
    Wait Until Ready    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Item type Button}
    Click Button    ${Id Edit Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Account Assignment Type
    Wait Until Ready    ${Id Account Assignment Type}
    Click Element    ${Id Account Assignment Type}
    Wait Until Ready    ${Id Add Account Assignment Type Button}

Enable Account Assignment Type
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Account Assignment Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name4}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Account Assignment Type
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Account Assignment Type
        ...    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Account Assignment Type
        ...    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Account Assignment Type
    END

Add Account Assignment Type
    Wait Until Ready    ${Id Add Account Assignment Type Button}
    Click Button    ${Id Add Account Assignment Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name4}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]

Edit Account Assignment Type
    Wait Until Ready    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Account Assignment Type Button}
    Click Button    ${Id Edit Account Assignment Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name4}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Account Assignment Type
    Go To Account Assignment Type
    Wait Until Ready    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Account Assignment Type Button}
    Click Button    ${Id Edit Account Assignment Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name4}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

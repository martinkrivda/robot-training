*** Settings ***
Documentation       This is a resource file for header aux data.
...                 Keywords defined here can be used where this "haux_data.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                                                //button[normalize-space(text())="Dokončit"]
${Close Button}                                                 //span[contains(@class, "ui-icon-closethick")]/..
${Delete Button}                                                //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                                     alert_area
${Alert Message}                                                Vyplňte prosím všechna povinná pole!
${Timeout}                                                      5s
${Timeout2}                                                     1s
${Personal Space}                                               //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                                                     //a[@class="main_tabs" and @href="#tab_settings"]
${Id Header Aux Data}                                           settings_pl_head_aux
${Id Original Storage}                                          settings_storage
${Name}                                                         dvtest1
${Name Path}                                                    xpath=//td[text()="dvtest1"]
${Edited Name}                                                  dvtestEdited
${Edited Name Path}                                             xpath=//td[text()="dvtestEdited"]
${Name2}                                                        dvtestKind
${Name2 Path}                                                   xpath=//td[contains(normalize-space(.), "dvtestKind")]
${Edited Name2}                                                 dvtestKindEdited
${Edited Name2 Path}                                            xpath=//tr[td[normalize-space(text())="dvtestEdited"]]
${Id Add Original Storage Button}                               ts_add_storage_btn
${Id Edit Original Storage Button}                              ts_edit_storage_btn
${Id Add Field1}                                                s_field1
${Id Add Field2}                                                s_field2
${Id Add Field3}                                                s_field3
${Checkbox}                                                     xpath=//input[@type='checkbox' and @id='s_disabled']
${Create Contract}                                              //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Number Sequence}                                           c_number
${Id Contract Status}                                           c_status
${Field}                                                        Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                                              Přísně tajné
${Contract kind}                                                Smlouva o úvěru - § 497 - 507
${Language}                                                     Čeština
${Id Field}                                                     c_legalfield
${Id Confidentiality}                                           c_confid
${Id Contract kind}                                             c_kind
${Number Sequence}                                              ISSTEST
${Id Language}                                                  c_lang
${Value}                                                        Ve zpracování
${Id Contract Subject}                                          c_subject
${Contract Subject}                                             TESTCONRACTDV
${Other Data Path}                                              xpath=//a[normalize-space(.)="Další data"]
${Id Add Original Storage}                                      c_storage
${Create Contract File Button}                                  //button[normalize-space(.)='Vytvoření smluvní složky']
${Id Add Document Button}                                       tc_add_document_btn
${Delete Contract}                                              //a[@class="ui-corner-all" and @href="#contract_delete_file"]

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
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Select From List By Label    ${Id Field}    ${Field}
    Select From List By Label    ${Id Confidentiality}    ${Confidentiality}
    Select From List By Label    ${Id Contract kind}    ${Contract kind}
    Select From List By Label    ${Id Language}    ${Language}
    Select From List By Label    ${Id Contract Status}    ${Value}
    Input Text    ${Id Contract Subject}    ${Contract Subject}

Check Created Contract Other Data
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Fill In Required Fields
    Click Element    ${Other Data Path}
    Select From List By Label    ${Id Add Original Storage}    ${Edited Name}
    Click Button    ${Create Contract File Button}

Delete Contract
    Wait Until Ready    ${Id Add Document Button}
    Wait Until Ready    ${Delete Contract}
    Click Element    ${Delete Contract}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Go To Original Storage
    Wait Until Ready    ${Id Original Storage}
    Click Element    ${Id Original Storage}
    Wait Until Ready    ${Id Add Original Storage Button}

Handle Original Storage
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Original Storage
    ${edited_exists}=    Run Keyword And Return Status    Element Should Be Visible    ${Edited Name Path}    timeout=${Timeout2}
    ${unedited_exists}=  Run Keyword And Return Status    Element Should Be Visible    ${Name Path}    timeout=${Timeout2}

    Run Keyword If    ${edited_exists}
    ...    Handle Original Storage    ${Edited Name Path}
    Run Keyword If    ${unedited_exists} and not ${edited_exists}
    ...    Handle Original Storage    ${Name Path}
    Run Keyword If    not ${edited_exists} and not ${unedited_exists}
    ...    Add Original Storage

Add Original Storage
    Wait Until Ready    ${Id Add Original Storage Button}
    Click Button    ${Id Add Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    # Click Element    ${Finish Button}
    # Wait Until Ready    ${Name Path}
    # Click Element    ${Name Path}

Enable Original Storage
    Wait Until Ready    ${Name Path}
    Click Element    ${Name Path}
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Checkbox}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Edit Original Storage
    Wait Until Ready    ${Name Path}
    Click Element    ${Name Path}
    Wait Until Ready    ${Id Edit Original Storage Button}
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}     ${Edited Name}
    Click Element    ${Finish Button}

Disable Original Storage
    Go To Settings
    Go To Original Storage
    Sleep    5
    Wait Until Ready    ${Edited Name Path}
    Click Element    ${Edited Name Path}
    Wait Until Ready    ${Id Edit Original Storage Button}
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}     ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

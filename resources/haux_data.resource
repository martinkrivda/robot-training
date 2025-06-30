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
${Delete Contract}                      xpath=//a[@href="#contract_delete_file"]
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
    Click Element    ${Id Add Keywords}
    Wait Until Element Is Visible    ${Check All}    timeout=10s
    Click Element    ${Check All}
    Wait Until Element Is Visible    ${Uncheck All}    timeout=10s
    Click Element    ${Uncheck All}
    Click Element    ${Id Add Keywords0}
    Click Button    ${Create Contract File Button}

Delete Contract
    Wait Until Ready    ${Create Contract}
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Click Element    //tr[td[contains(., "${Contract Subject}")]]
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
    ...    ${Edited Name Path}
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    ${Name Path}
    ...    timeout=${Timeout2}

    IF    ${edited_exists}    Enable Original Storage    ${Edited Name Path}
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Original Storage    ${Name Path}
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Original Storage
    END

Add Original Storage
    Wait Until Ready    ${Id Add Original Storage Button}
    Click Button    ${Id Add Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    # Click Element    ${Finish Button}
    # Wait Until Ready    ${Name Path}
    # Click Element    ${Name Path}

Edit Original Storage
    Wait Until Ready    ${Name Path}
    Click Element    ${Name Path}
    Wait Until Ready    ${Id Edit Original Storage Button}
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Original Storage
    Go To Settings
    Go To Original Storage
    Wait Until Ready    ${Edited Name Path}
    Click Element    ${Edited Name Path}
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
    ...    ${Edited Name Path}
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    ${Name Path}
    ...    timeout=${Timeout2}

    IF    ${edited_exists}    Enable Keywords    ${Edited Name Path}
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Keywords    ${Name Path}
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Keywords

Add Keywords
    Wait Until Ready    ${Id Add Keywords Button}
    Click Button    ${Id Add Keywords Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    # Click Element    ${Finish Button}
    # Wait Until Ready    ${Name Path}
    # Click Element    ${Name Path}

Edit Keywords
    Wait Until Ready    ${Name Path}
    Click Element    ${Name Path}
    Wait Until Ready    ${Id Edit Keywords Button}
    Click Button    ${Id Edit Keywords Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Keywords
    Go To Keywords
    Wait Until Ready    ${Edited Name Path}
    Click Element    ${Edited Name Path}
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
    ...    ${Edited Name Path}
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    ${Name Path}
    ...    timeout=${Timeout2}

    IF    ${edited_exists}    Enable Document Type    ${Edited Name Path}
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Document Type    ${Name Path}
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Document Type

Add Document Type
    Wait Until Ready    ${Id Add Document Type Button}
    Click Button    ${Id Add Document Type Button}
    Wait Until Ready    ${Id Add Document Type Name}
    Input Text    ${Id Add Document Type Name}    ${Name}
    Click Element    ${Document Type Additional}
    # Click Element    ${Finish Button}
    # Wait Until Ready    ${Name Path}
    # Click Element    ${Name Path}

Edit Document Type
    Wait Until Ready    ${Name Path}
    Click Element    ${Name Path}
    Wait Until Ready    ${Id Edit Document Type Button}
    Click Button    ${Id Edit Document Type Button}
    Wait Until Ready    ${Id Add Document Type Name}
    Input Text    ${Id Add Document Type Name}    ${Edited Name}
    Click Element    ${Document Type Main}
    Click Element    ${Finish Button}

Disable Document Type
    Go To Document Type
    Wait Until Ready    ${Edited Name Path}
    Click Element    ${Edited Name Path}
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
    Click Button    ${Id Edit Document Type Button}
    Wait Until Ready    ${Id Add Document Type Name}
    Input Text    ${Id Add Document Type Name}    ${Name}
    Unselect Checkbox    ${Id Document Type Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Contract Relations
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    ${Edited Name Path}
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    ${Name Path}
    ...    timeout=${Timeout2}

    IF    ${edited_exists}    Enable Contract Relations    ${Edited Name Path}
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Contract Relations    ${Name Path}
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
    # Click Element    ${Finish Button}
    # Wait Until Ready    ${Name Path}
    # Click Element    ${Name Path}

Edit Contract Relations
    Wait Until Ready    ${Name Path}
    Click Element    ${Name Path}
    Wait Until Ready    ${Id Edit Contract Relations Button}
    Click Button    ${Id Edit Contract Relations Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name}
    Select From List By Label    ${Id Add Field2}    ${Relation role1}
    Click Element    ${Finish Button}

Disable Contract Relations
    Go To Document Type
    Wait Until Ready    ${Edited Name Path}
    Click Element    ${Edited Name Path}
    Wait Until Ready    ${Id Edit Contract Relations Button}
    Click Button    ${Id Edit Contract Relations Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Select From List By Label    ${Id Add Field2}    ${Relation role2}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

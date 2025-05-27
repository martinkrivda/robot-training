*** Settings ***
Documentation       This is a resource file for header main data.
...                 Keywords defined here can be used where this "hmain_data.resource" is loaded.

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
${Personal Space}                                               //a[@class="main_tabs" and @href="#tab_personal"]
${Id Administration and Configuration}                          admin_config
${Settings}                                                     //a[@class="main_tabs" and @href="#tab_settings"]
${Id Fields}                                                    settings_custom_fields
${Id Fields Edit Button}                                        ts_edit_custom_fields_btn
${Field Name}                                                   //tr[td[normalize-space(.)='Druh smlouvy SAP']]
${Field Name2}                                                  //tr[td[normalize-space(.)='Účetní okruh']]
${Visibility1}                                                  //label[@for="s_visible"]
${Visibility2}                                                  //label[@for="s_invisible"]
${Data source1}                                                 //label[@for="s_source_csm"]
${Data source2}                                                 //label[@for="s_source_sap"]
${Id Proposal Lists}                                            proposals
${Id Add Templates Button}                                      ts_add_template_btn
${Id Edit Templates Button}                                     ts_edit_template_btn
${Id Delete Templates Button}                                   ts_del_template_btn
${Input File}                                                   xpath=//input[@type="file" and @name="qqfile"]
${Add File}                                                     C:/Users/domin/Prax/robot-training/Template test dv.docx
${Id Add Template Name}                                         templ_name
${Name}                                                         dvtest1
${Edited Name}                                                  dvtestEdited
${Id Edit Name}                                                 s_template
${Template kind}                                                Vzor smlouvy
${Id Field}                                                     settings_legal_fields
${Id Add Field Button}                                          ts_add_legal_field_btn
${Add Field}                                                    s_field
${Id Edit Field Button}                                         ts_edit_legal_field_btn
${Field Checkbox}                                               id=s_field_disabled
${Field Name Path}                                              xpath=//td[text()="dvtest1"]
${Id Add Contract Kind Button}                                  ts_add_contract_kind_btn
${Id Add Contract Kind}                                         s_kind
${Contract Kind Name}                                           dvtestKind
${Contract Kind Name Path}                                      xpath=//td[text()="dvtestKind"]
${Id Edit Contract Kind Button}                                 ts_edit_contract_kind_btn
${Contract Kind Checkbox}                                       xpath=//input[@type="checkbox" and @name="s_kind_disabled"]
${Contract Kind Edited Name}                                    dvtestKindEdited
${Contract Kind Edited Name Path}                               xpath=//td[text()="dvtestKindEdited"]
${Create Contract}                                              //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Number Sequence}                                           c_number
${Id Confidentiality}                                           c_confid
${Id Contract kind}                                             c_kind
${Id Language}                                                  c_lang
${Id Field Contract}                                            c_legalfield
${Create Contract File Button}                                  //button[normalize-space(.)='Vytvoření smluvní složky']
${Number Sequence}                                              ISSTEST
${Field}                                                        Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                                              Přísně tajné
${Contract kind}                                                Smlouva o úvěru - § 497 - 507
${Language}                                                     Čeština
${Id Contract Subject}                                          c_subject
${Contract Subject}                                             TESTCONRACTDV
${Contract Name Detail}                                         //a[@id="tab_contract_contract"]
${Id Add Document Button}                                       tc_add_document_btn
${Id Create Document From Template Button}                      doc_create_from_template
${Id Select Template}                                           doc_templ
${Delete Contract}                                              //a[@class="ui-corner-all" and @href="#contract_delete_file"]
${Id Templates}                                                 settings_templates
${Id Delete Template Button}                                    ts_del_template_btn
${Edited Name Path}                                             xpath=//td[text()="dvtestEdited"]
${Upper Close Button}                                           xpath=//div[contains(@class, 'ui-dialog') and .//span[@class='ui-dialog-title' and normalize-space(.)='Vytvoření dok. ze vzoru']]//button[@title='Close' and contains(@class, 'ui-dialog-titlebar-close')]
${Id Contract Type}                                             settings_contract_type
${Id Add Contract Type Button}                                  ts_add_contract_type_btn
${Id Add Contract Type}                                         s_field1
${Add Contract Type}                                            DV
${Add Contract Type Edited}                                     DVE
${Id Add Contract Type Description}                             s_field2
${Id Edit Contract Type Button}                                 ts_edit_contract_type_btn
${Contract Type Checkbox}                                       xpath=//input[@type='checkbox' and @id='s_disabled']
${Id Create Contract Type}                                      c_type
${Id SAP}                                                       settings_sap_contract_kind

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

Go To Fields
    Go To Settings
    Click On Administration
    Click On Fields

Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Field Setup
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

Add Template
    Wait Until Ready    ${Id Proposal Lists}
    Click Element    ${Id Proposal Lists}
    Wait Until Ready    ${Id Add Templates Button}
    Click Button    ${Id Add Templates Button}
    Wait Until Ready    ${Finish Button}
    Choose File    ${Input File}    ${Add File}
    Input Text    ${Id Add Template Name}    ${Name}
    Click Element    ${Finish Button}

Edit Template
    Wait Until Element Is Not Visible    //div[contains(@class, "ui-dialog-titlebar")]    timeout=${Timeout}
    Wait Until Ready    //tr[td[1][text()="${Name}"] and td[2][text()="${Template kind}"]]
    Click Element    //tr[td[1][text()="${Name}"] and td[2][text()="${Template kind}"]]
    Wait Until Ready    ${Id Edit Templates Button}
    Click Button    ${Id Edit Templates Button}
    Wait Until Ready    ${Id Edit Name}
    Input Text    ${Id Edit Name}    ${Edited Name}
    Click Element    ${Finish Button}

Add Field In Header Main Data
    Wait Until Ready    ${Id Add Field Button}
    Click Button    ${Id Add Field Button}
    Wait Until Ready    ${Add Field}
    Input Text    ${Add Field}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Field Name Path}
    Click Element    ${Field Name Path}

Enable Field
    Wait Until Ready    ${Field Name Path}
    Click Element    ${Field Name Path}
    Click Button    ${Id Edit Field Button}
    Wait Until Ready    ${Field Checkbox}
    Unselect Checkbox    ${Field Checkbox}
    Click Element    ${Finish Button}

Enable Fields Or Add Field
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible    ${Field Name Path}    timeout=${Timeout}

    Run Keyword If    ${row_exists}
    ...    Enable Field
    ...    ELSE
    ...    Add Field In Header Main Data

Go To Header Main Data Fields
    Wait Until Ready    ${Id Field}
    Click Element    ${Id Field}

Edit Field
    Wait Until Ready    ${Field Name Path}
    Click Element    ${Field Name Path}
    Click Button    ${Id Edit Field Button}
    Wait Until Ready    ${Add Field}
    Input Text    ${Add Field}     ${Edited Name}
    Click Element    ${Finish Button}

Add Contract Kind
    Wait Until Ready    ${Id Add Contract Kind Button}
    Click Button    ${Id Add Contract Kind Button}
    Wait Until Ready    ${Id Add Contract Kind}
    Input Text    ${Id Add Contract Kind}    ${Contract Kind Name}
    Click Element    ${Finish Button}

Enable Contract Kind
    Wait Until Ready    ${Contract Kind Name Path}
    Click Element    ${Contract Kind Name Path}
    Click Button   ${Id Edit Contract Kind Button}
    Wait Until Ready    ${Contract Kind Checkbox}
    Unselect Checkbox    ${Contract Kind Checkbox}
    Click Element    ${Finish Button}

Enable Contract Kind Or Add Contract Kind
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible    ${Contract Kind Name Path}    timeout=${Timeout}

    Run Keyword If    ${row_exists}
    ...    Enable Contract Kind
    ...    ELSE
    ...    Add Contract Kind

Edit Contract Kind
    Wait Until Ready    ${Contract Kind Name Path}
    Click Element    ${Contract Kind Name Path}
    Wait Until Ready    ${Id Edit Contract Kind Button}
    Click Button    ${Id Edit Contract Kind Button}
    Wait Until Ready    ${Id Add Contract Kind}
    Input Text    ${Id Add Contract Kind}    ${Contract Kind Edited Name}
    Click Element    ${Finish Button}


Fill In Required Fields
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Select From List By Label    ${Id Confidentiality}    ${Confidentiality}
    Select From List By Label    ${Id Language}    ${Language}

Check Created Contract Data
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Field Contract}
    Fill In Required Fields
    Select From List By Label    ${Id Field Contract}    ${Edited Name}
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Select From List By Label    ${Id Contract kind}    ${Contract Kind Edited Name}
    Select From List By Label    ${Id Create Contract Type}    ${Edited Name}
    Click Button    ${Create Contract File Button}

Check Created Template
    Wait Until Ready    ${Settings}
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Wait Until Ready    ${Id Add Document Button}
    Click Button    ${Id Add Document Button}
    Wait Until Ready    ${Id Create Document From Template Button}
    Click Button    ${Id Create Document From Template Button}
    Wait Until Ready    ${Id Select Template}
    Select From List By Label    ${Id Select Template}    ${Edited Name}
    Click Element    ${Upper Close Button}
    Wait Until Ready    ${Id Create Document From Template Button}
    Click Element    ${Close Button}

Delete Contract
    Wait Until Ready    ${Id Add Document Button}
    Wait Until Ready    ${Delete Contract}
    Click Element    ${Delete Contract}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Delete Template
    Go To Settings
    Wait Until Ready    ${Id Templates}
    Click Element    ${Id Templates}
    Wait Until Ready    //tr[td[1][text()="${Edited Name}"] and td[2][text()="${Template kind}"]]
    Click Element    //tr[td[1][text()="${Edited Name}"] and td[2][text()="${Template kind}"]]
    Click Button    ${Id Delete Template Button}
    Wait Until Ready    ${Delete Button}
    Click Element    ${Delete Button}

Disable Fields
    Wait Until Ready    ${Id Field}
    Click Element    ${Id Field}
    Wait Until Ready    ${Edited Name Path}
    Click Element    ${Edited Name Path}
    Click Button    ${Id Edit Field Button}
    Wait Until Ready    ${Add Field}
    Input Text    ${Add Field}     ${Name}
    Select Checkbox    ${Field Checkbox}
    Click Element    ${Finish Button}

Disable Contract Kind
    Wait Until Ready    ${Contract Kind Edited Name Path}
    Click Element    ${Contract Kind Edited Name Path}
    Click Button   ${Id Edit Contract Kind Button}
    Wait Until Ready    ${Id Add Contract Kind}
    Input Text    ${Id Add Contract Kind}    ${Contract Kind Name}
    Wait Until Ready    ${Contract Kind Checkbox}
    Select Checkbox    ${Contract Kind Checkbox}
    Click Element    ${Finish Button}

Go To Contract Type
    Wait Until Ready    ${Id Contract Type}
    Click Element    ${Id Contract Type}

Add Contract Type
    Wait Until Ready    ${Id Add Contract Type Button}
    Click Button    ${Id Add Contract Type Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Click Element    ${Finish Button}

Enable Contract Type
    Click Element    ${Field Name Path}
    Wait Until Ready    ${Id Edit Contract Type Button}
    Click Button    ${Id Edit Contract Type Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Enable Contract Type Or Add Contract Type
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible    ${Field Name Path}    timeout=${Timeout}

    Run Keyword If    ${row_exists}
    ...    Enable Contract Type
    ...    ELSE
    ...    Add Contract Type

Edit Contract Type
    Wait Until Ready    ${Field Name Path}
    Click Element    ${Field Name Path}
    Wait Until Ready    ${Id Edit Contract Type Button}
    Click Button    ${Id Edit Contract Type Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type Edited}
    Input Text    ${Id Add Contract Type Description}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Contract Type
    Wait Until Ready    ${Id Contract Type}
    Click Element    ${Id Contract Type}
    Wait Until Ready    ${Edited Name Path}
    Click Element    ${Edited Name Path}
    Wait Until Ready    ${Id Edit Contract Type Button}
    Click Button    ${Id Edit Contract Type Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

SAP contract kind
    Wait Until Ready    ${Id SAP}
    Click Element    ${Id SAP}

*** Settings ***
Documentation       This is a resource file for header main data.
...                 Keywords defined here can be used where this "hmain_data.resource" is loaded.

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
${Personal Space}                               //a[@class="main_tabs" and @href="#tab_personal"]
${Id Administration and Configuration}          admin_config
${Settings}                                     //a[@class="main_tabs" and @href="#tab_settings"]
${Id Fields}                                    settings_custom_fields
${Id Fields Edit Button}                        ts_edit_custom_fields_btn
${Field Name}                                   //tr[td[normalize-space(.)='Druh smlouvy SAP']]
${Field Name2}                                  //tr[td[normalize-space(.)='Účetní okruh']]
${Visibility1}                                  //label[@for="s_visible"]
${Visibility2}                                  //label[@for="s_invisible"]
${Data source1}                                 //label[@for="s_source_csm"]
${Data source2}                                 //label[@for="s_source_sap"]
${Id Proposal Lists}                            proposals
${Id Add Templates Button}                      ts_add_template_btn
${Id Edit Templates Button}                     ts_edit_template_btn
${Id Delete Templates Button}                   ts_del_template_btn
${Input File}                                   xpath=//input[@type="file" and @name="qqfile"]
${Id Add Template Name}                         templ_name
${Name}                                         dvtest1
${Edited Name}                                  dvtestEdited
${Id Edit Name}                                 s_template
${Template kind}                                Vzor smlouvy
${Id Field}                                     settings_legal_fields
${Id Add Field Button}                          ts_add_legal_field_btn
${Add Field}                                    s_field
${Id Edit Field Button}                         ts_edit_legal_field_btn
${Field Checkbox}                               id=s_field_disabled
${Field Name Path}                              xpath=//td[contains(normalize-space(.), "dvtest1")]
${Id Add Contract Kind Button}                  ts_add_contract_kind_btn
${Id Add Contract Kind}                         s_kind
${Contract Kind Name}                           dvtestKind
${Contract Kind Name Path}                      xpath=//td[contains(normalize-space(.), "dvtestKind")]
${Id Edit Contract Kind Button}                 ts_edit_contract_kind_btn
${Contract Kind Checkbox}                       xpath=//input[@type="checkbox" and @name="s_kind_disabled"]
${Contract Kind Edited Name}                    dvtestKindEdited
${Contract Kind Edited Name Path}               xpath=//td[contains(normalize-space(.), "dvtestKindEdited")]
${Create Contract}                              //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Number Sequence}                           c_number
${Id Contract kind}                             c_kind
${Id Select Language}                           c_lang
${Id Field Contract}                            c_legalfield
${Create Contract File Button}                  //button[normalize-space(.)='Vytvoření smluvní složky']
${Number Sequence}                              ISSTEST
${Field}                                        Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                              Přísně tajné
${Contract kind}                                Smlouva o úvěru - § 497 - 507
${Language}                                     Čeština
${Id Contract Subject}                          c_subject
${Contract Subject}                             TESTCONRACTDV
${Contract Name Detail}                         //a[@id="tab_contract_contract"]
${Id Add Document Button}                       tc_add_document_btn
${Id Create Document From Template Button}      doc_create_from_template
${Id Select Template}                           doc_templ
${Delete Contract}                              //a[@class="ui-corner-all" and @href="#contract_delete_file"]
${Id Templates}                                 settings_templates
${Id Delete Template Button}                    ts_del_template_btn
${Edited Name Path}                             xpath=//td[contains(normalize-space(.), "dvtestEdited")]
${Upper Close Button}                           xpath=//div[contains(@class, 'ui-dialog') and .//span[@class='ui-dialog-title' and normalize-space(.)='Vytvoření dok. ze vzoru']]//button[@title='Close' and contains(@class, 'ui-dialog-titlebar-close')]
${Id Contract Type}                             settings_contract_type
${Id Add Contract Type Button}                  ts_add_contract_type_btn
${Id Add Contract Type}                         s_field1
${Add Contract Type}                            DV
${Add Contract Type Edited}                     DVE
${Id Add Contract Type Description}             s_field2
${Id Edit Contract Type Button}                 ts_edit_contract_type_btn
${Contract Type Checkbox}                       xpath=//input[@type='checkbox' and @id='s_disabled']
${Id Create Contract Type}                      c_type
${Id SAP}                                       settings_sap_contract_kind
${Id Edit SAP Button}                           ts_edit_sap_contract_kind_btn
${Id Add SAP Button}                            ts_add_sap_contract_kind_btn
${Id Select SAP}                                c_sap_doctype
${Id Accounting Area}                           settings_acc_area
${Id Edit Accounting Area Button}               ts_edit_acc_area_btn
${Id Add Accounting Area Button}                ts_add_acc_area_btn
${Id Select Accounting Area}                    c_acc_area
${Select Accounting Area}                       DVE - dvtestEdited
${Id Profit Center}                             settings_profcenter
${Id Edit Profit Center Button}                 ts_edit_profcenter_btn
${Id Add Profit Center Button}                  ts_add_profcenter_btn
${Id Add Responsible}                           s_field3
${Responsible}                                  testdv
${Edited Responsible}                           testdve
${Id Select Profit Centrum}                     c_profit_center
${Id Contract Status}                           settings_contract_status
${Id Edit Contract Status Button}               ts_edit_contract_status_btn
${Id Add Contract Status Button}                ts_add_contract_status_btn
${Id Select Contract Status}                    c_status
${Id Partner Roles}                             settings_partner_roles
${Id Edit Partner Roles Button}                 ts_edit_partner_role_btn
${Id Add Partner Roles Button}                  ts_add_partner_role_btn
${Id Add Partner Roles}                         s_role
${Id Add Partner Type}                          s_type
${Add Partner Type1}                            Odběratel
${Add Partner Type2}                            Dodavatel
${Id Select Partner Role}                       c_part_role
${Select Partner Role}                          dvtestEdited (dodavatel)
${Partner Role Checkbox}                        xpath=//input[@type='checkbox' and @id='s_role_disabled']
${Id Confidentiality level}                     settings_conf
${Id Edit Confidentiality level Button}         ts_edit_conf_btn
${Id Add Confidentiality level Button}          ts_add_conf_btn
${Id Select Confidentiality level}              c_confid
${Id Internal Partner}                          settings_int_partners
${Id Add Internal Partner Button}               ts_add_int_partner_btn
${Id Edit Internal Partner Button}              ts_edit_int_partner_btn
${Id Add Internal Partner}                      s_intpart
${Id Select Internal Partner}                   c_intpart
${Internal Partner Checkbox}                    xpath=//input[@type="checkbox" and @name="s_intpart_disabled"]
${Id Add Organization Button}                   ts_add_org_unit_btn
${Id Edit Organization Button}                  ts_edit_org_unit_btn
${Id Add Organization Unit}                     s_org_unit
${Id Select Organization Unit}                  c_orgunit
${Organization Unit Checkbox}                   xpath=//input[@type='checkbox' and @name='s_org_unit_disabled']
${Id Business Case}                             settings_business_case
${Id Add Business Case Button}                  ts_add_business_case_btn
${Id Edit Business Case Button}                 ts_edit_business_case_btn
${Id Select Business Case}                      c_buscase
${Id Sequences}                                 settings_sequences
${Id Add Sequences Button}                      ts_add_sequence_btn
${Id Edit Sequences Button}                     ts_edit_sequence_btn
${Id Delete Sequences Button}                   ts_del_sequence_btn
${Id Add Sequence}                              s_sequence
${Id Contract Language}                         settings_language
${Id Add Contract Language Button}              ts_add_language_btn
${Id Edit Contract Language Button}             ts_edit_language_btn
${Id VAT ID}                                    settings_vatid
${Id Add VAT ID Button}                         ts_add_vatid_btn
${Id Edit VAT ID Button}                        ts_edit_vatid_btn
${Id Select VAT ID}                             c_part_vatid
${Id Bank Account}                              settings_bank_account
${Id Add Bank Account Button}                   ts_add_bank_account_btn
${Id Edit Bank Account Button}                  ts_edit_bank_account_btn
${Id Select Bank Account}                       c_account
${Id Applicable Law}                            settings_appl_law
${Id Add Applicable Law Button}                 ts_add_appl_law_btn
${Id Edit Applicable Law Button}                ts_edit_appl_law_btn
${Id Select Applicable Law}                     c_appl_law
${File Path}                                    ${EXECDIR}/template_test.docx


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
    Choose File    ${Input File}    ${File Path}
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
    Wait Until Ready    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Name}"]

Enable Field
    Wait Until Ready    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Name}"]
    Click Button    ${Id Edit Field Button}
    Wait Until Ready    ${Field Checkbox}
    Unselect Checkbox    ${Field Checkbox}
    Click Element    ${Finish Button}

Enable Fields Or Add Field
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Field    ELSE    Add Field In Header Main Data

Go To Header Main Data Fields
    Wait Until Ready    ${Id Field}
    Click Element    ${Id Field}

Edit Field
    Wait Until Ready    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Name}"]
    Click Button    ${Id Edit Field Button}
    Wait Until Ready    ${Add Field}
    Input Text    ${Add Field}    ${Edited Name}
    Click Element    ${Finish Button}

Add Contract Kind
    Wait Until Ready    ${Id Add Contract Kind Button}
    Click Button    ${Id Add Contract Kind Button}
    Wait Until Ready    ${Id Add Contract Kind}
    Input Text    ${Id Add Contract Kind}    ${Contract Kind Name}
    Click Element    ${Finish Button}

Enable Contract Kind
    Wait Until Ready    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Name}"]
    Click Element    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Name}"]
    Click Button    ${Id Edit Contract Kind Button}
    Wait Until Ready    ${Contract Kind Checkbox}
    Unselect Checkbox    ${Contract Kind Checkbox}
    Click Element    ${Finish Button}

Enable Contract Kind Or Add Contract Kind
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Contract Kind    ELSE    Add Contract Kind

Edit Contract Kind
    Wait Until Ready    ${Id Add Contract Kind Button}
    Wait Until Ready    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Name}"]
    Click Element    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Name}"]
    Wait Until Ready    ${Id Edit Contract Kind Button}
    Click Button    ${Id Edit Contract Kind Button}
    Wait Until Ready    ${Id Add Contract Kind}
    Input Text    ${Id Add Contract Kind}    ${Contract Kind Edited Name}
    Click Element    ${Finish Button}

Check Created Contract Data
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Field Contract}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Select From List By Label    ${Id Field Contract}    ${Edited Name}
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Select From List By Label    ${Id Contract kind}    ${Contract Kind Edited Name}
    Select From List By Label    ${Id Create Contract Type}    ${Edited Name}
    Select From List By Label    ${Id Select SAP}    ${Edited Name}
    Select From List By Label    ${Id Select Accounting Area}    ${Select Accounting Area}
    Select From List By Label    ${Id Select Contract Status}    ${Edited Name}
    Select From List By Label    ${Id Select Partner Role}    ${Select Partner Role}
    Select From List By Label    ${Id Select Internal Partner}    ${Edited Name}
    Select From List By Label    ${Id Select Confidentiality level}    ${Edited Name}
    Select From List By Label    ${Id Select Organization Unit}    ${Contract Kind Edited Name}
    Select From List By Label    ${Id Select Business Case}    ${Edited Name}
    Select From List By Label    ${Id Select Language}    ${Edited Name}
    Select From List By Label    ${Id Select Applicable Law}    ${Edited Name}
    # Select From List By Label    ${Id Select Bank Account}    ${Edited Name}
    # Select From List By Label    ${Id Select VAT ID}    ${Edited Name}
    Input Text    ${Id Select Profit Centrum}    ${Edited Name}
    Wait Until Page Contains Element
    ...    //ul[contains(@class,'ui-autocomplete')]//li[contains(., '${Edited Name}')]
    ...    5s
    Click Element    xpath=//ul[contains(@class,'ui-autocomplete')]//li[contains(., '${Edited Name}')]
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

Delete Contractt
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
    Wait Until Ready    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_legal_fields_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Button    ${Id Edit Field Button}
    Wait Until Ready    ${Add Field}
    Input Text    ${Add Field}    ${Name}
    Select Checkbox    ${Field Checkbox}
    Click Element    ${Finish Button}

Disable Contract Kind
    Wait Until Ready
    ...    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Edited Name}"]
    Click Element
    ...    xpath=//table[@id="ts_contract_kinds_tbl"]//td[normalize-space(.)="${Contract Kind Edited Name}"]
    Click Button    ${Id Edit Contract Kind Button}
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
    Wait Until Ready    xpath=//table[@id="ts_contract_type_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_contract_type_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Contract Type Button}
    Click Button    ${Id Edit Contract Type Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Enable Contract Type Or Add Contract Type
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_contract_type_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Contract Type    ELSE    Add Contract Type

Edit Contract Type
    Wait Until Ready    xpath=//table[@id="ts_contract_type_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_contract_type_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Contract Type Button}
    Click Button    ${Id Edit Contract Type Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type Edited}
    Input Text    ${Id Add Contract Type Description}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Contract Type
    Wait Until Ready    ${Id Contract Type}
    Click Element    ${Id Contract Type}
    Wait Until Ready    xpath=//table[@id="ts_contract_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_contract_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Contract Type Button}
    Click Button    ${Id Edit Contract Type Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To SAP Contract Kind
    Wait Until Ready    ${Id SAP}
    Click Element    ${Id SAP}

Enable Sap Or Add Sap
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_sap_contract_kind_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Sap    ELSE    Add Sap

Enable Sap
    Wait Until Ready    xpath=//table[@id="ts_sap_contract_kind_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_sap_contract_kind_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit SAP Button}
    Click Button    ${Id Edit SAP Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Sap
    Wait Until Ready    ${Id Add SAP Button}
    Click Button    ${Id Add SAP Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Click Element    ${Finish Button}

Edit Sap
    Wait Until Ready    xpath=//table[@id="ts_sap_contract_kind_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_sap_contract_kind_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit SAP Button}
    Click Button    ${Id Edit SAP Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type Edited}
    Input Text    ${Id Add Contract Type Description}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Sap
    Go To SAP Contract Kind
    Wait Until Ready    xpath=//table[@id="ts_sap_contract_kind_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_sap_contract_kind_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit SAP Button}
    Click Button    ${Id Edit SAP Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Accounting area
    Wait Until Ready    ${Id Accounting Area}
    Click Element    ${Id Accounting Area}

Enable Accounting area Or Add Accounting area
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_acc_area_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Accounting area    ELSE    Add Accounting area

Enable Accounting area
    Wait Until Ready    xpath=//table[@id="ts_acc_area_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_acc_area_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Accounting Area Button}
    Click Button    ${Id Edit Accounting Area Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Accounting area
    Wait Until Ready    ${Id Add Accounting Area Button}
    Click Button    ${Id Add Accounting Area Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Click Element    ${Finish Button}

Edit Accounting area
    Wait Until Ready    xpath=//table[@id="ts_acc_area_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_acc_area_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Accounting Area Button}
    Click Button    ${Id Edit Accounting Area Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type Edited}
    Input Text    ${Id Add Contract Type Description}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Accounting area
    Go To Accounting area
    Wait Until Ready    xpath=//table[@id="ts_acc_area_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_acc_area_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Accounting Area Button}
    Click Button    ${Id Edit Accounting Area Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Profit Center
    Wait Until Ready    ${Id Profit Center}
    Click Element    ${Id Profit Center}

Enable Profit Center Or Add Profit Center
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Profit Center    ELSE    Add Profit Center

Enable Profit Center
    Wait Until Ready    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Profit Center Button}
    Click Button    ${Id Edit Profit Center Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Profit Center
    Wait Until Ready    ${Id Add Profit Center Button}
    Click Button    ${Id Add Profit Center Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Input Text    ${Id Add Responsible}    ${Responsible}
    Click Element    ${Finish Button}

Edit Profit Centrum
    Wait Until Ready    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Profit Center Button}
    Click Button    ${Id Edit Profit Center Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type Edited}
    Input Text    ${Id Add Contract Type Description}    ${Edited Name}
    Input Text    ${Id Add Responsible}    ${Edited Responsible}
    Click Element    ${Finish Button}

Disable Profit Centrum
    Go To Profit Center
    Wait Until Ready    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_profcenter_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Profit Center Button}
    Click Button    ${Id Edit Profit Center Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Add Contract Type}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Input Text    ${Id Add Responsible}    ${Responsible}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Contract Status
    Wait Until Ready    ${Id Contract Status}
    Click Element    ${Id Contract Status}

Enable Contract Status Or Add Contract Status
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_contract_status_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Contract Status    ELSE    Add Contract Status

Enable Contract Status
    Wait Until Ready    xpath=//table[@id="ts_contract_status_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_contract_status_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Contract Status Button}
    Click Button    ${Id Edit Contract Status Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Contract Status
    Wait Until Ready    ${Id Add Contract Status Button}
    Click Button    ${Id Add Contract Status Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Click Element    ${Finish Button}

Edit Contract Status
    Wait Until Ready    xpath=//table[@id="ts_contract_status_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_contract_status_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Contract Status Button}
    Click Button    ${Id Edit Contract Status Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Contract Status
    Go To Contract Status
    Wait Until Ready    xpath=//table[@id="ts_contract_status_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_contract_status_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Contract Status Button}
    Click Button    ${Id Edit Contract Status Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Partner Role
    Wait Until Ready    ${Id Partner Roles}
    Click Element    ${Id Partner Roles}

Enable Parner Role Or Add Partner Role
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_partner_roles_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Partner Role    ELSE    Add Partner Role

Enable Partner Role
    Wait Until Ready    xpath=//table[@id="ts_partner_roles_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_partner_roles_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Partner Roles Button}
    Click Button    ${Id Edit Partner Roles Button}
    Wait Until Ready    ${Partner Role Checkbox}
    Unselect Checkbox    ${Partner Role Checkbox}
    Click Element    ${Finish Button}

Add Partner Role
    Wait Until Ready    ${Id Add Partner Roles Button}
    Click Button    ${Id Add Partner Roles Button}
    Wait Until Ready    ${Id Add Partner Roles}
    Input Text    ${Id Add Partner Roles}    ${Name}
    Select From List By Label    ${Id Add Partner Type}    ${Add Partner Type1}
    Click Element    ${Finish Button}

Edit Partner Role
    Wait Until Ready    xpath=//table[@id="ts_partner_roles_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_partner_roles_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Partner Roles Button}
    Click Button    ${Id Edit Partner Roles Button}
    Wait Until Ready    ${Id Add Partner Roles}
    Input Text    ${Id Add Partner Roles}    ${Edited Name}
    Select From List By Label    ${Id Add Partner Type}    ${Add Partner Type2}
    Click Element    ${Finish Button}

Disable Partner Role
    Go To Partner Role
    Wait Until Ready    xpath=//table[@id="ts_partner_roles_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_partner_roles_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Partner Roles Button}
    Click Button    ${Id Edit Partner Roles Button}
    Wait Until Ready    ${Id Add Partner Roles}
    Input Text    ${Id Add Partner Roles}    ${Name}
    Select From List By Label    ${Id Add Partner Type}    ${Add Partner Type1}
    Select Checkbox    ${Partner Role Checkbox}
    Click Element    ${Finish Button}

Go To Confidentiality level
    Wait Until Ready    ${Id Confidentiality level}
    Click Element    ${Id Confidentiality level}

Enable Confidentiality level Or Add Confidentiality level
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_conf_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Confidentiality level
    ELSE
        Add Confidentiality level
    END

Enable Confidentiality level
    Wait Until Ready    xpath=//table[@id="ts_conf_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_conf_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Confidentiality level Button}
    Click Button    ${Id Edit Confidentiality level Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Confidentiality level
    Wait Until Ready    ${Id Add Confidentiality level Button}
    Click Button    ${Id Add Confidentiality level Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Click Element    ${Finish Button}

Edit Confidentiality level
    Wait Until Ready    xpath=//table[@id="ts_conf_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_conf_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Confidentiality level Button}
    Click Button    ${Id Edit Confidentiality level Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Confidentiality level
    Go To Confidentiality level
    Wait Until Ready    xpath=//table[@id="ts_conf_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_conf_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Confidentiality level Button}
    Click Button    ${Id Edit Confidentiality level Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Internal Partner
    Wait Until Ready    ${Id Internal Partner}
    Click Element    ${Id Internal Partner}

Enable Internal Partner Or Add Internal Partner
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_int_partners_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Internal Partner
    ELSE
        Add Internal Partner
    END

Enable Internal Partner
    Wait Until Ready    xpath=//table[@id="ts_int_partners_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_int_partners_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Internal Partner Button}
    Click Button    ${Id Edit Internal Partner Button}
    Wait Until Ready    ${Internal Partner Checkbox}
    Unselect Checkbox    ${Internal Partner Checkbox}
    Click Element    ${Finish Button}

Add Internal Partner
    Wait Until Ready    ${Id Add Internal Partner Button}
    Click Button    ${Id Add Internal Partner Button}
    Wait Until Ready    ${Id Add Internal Partner}
    Input Text    ${Id Add Internal Partner}    ${Name}
    Click Element    ${Finish Button}

Edit Internal Partner
    Wait Until Ready    xpath=//table[@id="ts_int_partners_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_int_partners_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Internal Partner Button}
    Click Button    ${Id Edit Internal Partner Button}
    Wait Until Ready    ${Id Add Internal Partner}
    Input Text    ${Id Add Internal Partner}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Internal Partner
    Go To Internal Partner
    Wait Until Ready    xpath=//table[@id="ts_int_partners_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_int_partners_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Internal Partner Button}
    Click Button    ${Id Edit Internal Partner Button}
    Wait Until Ready    ${Id Add Internal Partner}
    Input Text    ${Id Add Internal Partner}    ${Name}
    Select Checkbox    ${Internal Partner Checkbox}
    Click Element    ${Finish Button}

Enable Organization Unit Or Add Organization Unit
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_org_units_tbl"]//td[normalize-space(.)="${Contract kind Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Organization Unit
    ELSE
        Add Organization Unit
    END

Enable Organization Unit
    Wait Until Ready    xpath=//table[@id="ts_org_units_tbl"]//td[normalize-space(.)="${Contract kind Name}"]
    Click Element    xpath=//table[@id="ts_org_units_tbl"]//td[normalize-space(.)="${Contract kind Name}"]
    Wait Until Ready    ${Id Edit Organization Button}
    Click Button    ${Id Edit Organization Button}
    Wait Until Ready    ${Organization Unit Checkbox}
    Unselect Checkbox    ${Organization Unit Checkbox}
    Click Element    ${Finish Button}

Add Organization Unit
    Wait Until Ready    ${Id Add Organization Button}
    Click Button    ${Id Add Organization Button}
    Wait Until Ready    ${Id Add Organization Unit}
    Input Text    ${Id Add Organization Unit}    ${Contract Kind Name}
    Click Element    ${Finish Button}

Edit Organization Unit
    Wait Until Ready    ${Id Edit Organization Button}
    Wait Until Ready    xpath=//table[@id="ts_org_units_tbl"]//td[normalize-space(.)="${Contract kind Name}"]
    Click Element    xpath=//table[@id="ts_org_units_tbl"]//td[normalize-space(.)="${Contract kind Name}"]
    Wait Until Ready    ${Id Edit Organization Button}
    Click Button    ${Id Edit Organization Button}
    Wait Until Ready    ${Id Add Organization Unit}
    Input Text    ${Id Add Organization Unit}    ${Contract Kind Edited Name}
    Click Element    ${Finish Button}

Disable Organization Unit
    Wait Until Ready    xpath=//table[@id="ts_org_units_tbl"]//td[normalize-space(.)="${Contract kind Edited Name}"]
    Click Element    xpath=//table[@id="ts_org_units_tbl"]//td[normalize-space(.)="${Contract kind Edited Name}"]
    Wait Until Ready    ${Id Edit Organization Button}
    Click Button    ${Id Edit Organization Button}
    Wait Until Ready    ${Id Add Organization Unit}
    Input Text    ${Id Add Organization Unit}    ${Contract Kind Name}
    Select Checkbox    ${Organization Unit Checkbox}
    Click Element    ${Finish Button}

Go To Business Case
    Wait Until Ready    ${Id Business Case}
    Click Element    ${Id Business Case}

Enable Business Case Or Add Business Case
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_business_case_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Business Case    ELSE    Add Business Case

Enable Business Case
    Wait Until Ready    xpath=//table[@id="ts_business_case_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_business_case_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Business Case Button}
    Click Button    ${Id Edit Business Case Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Business Case
    Wait Until Ready    ${Id Add Business Case Button}
    Click Button    ${Id Add Business Case Button}
    Wait Until Ready    ${Id Add Contract Type Description}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Click Element    ${Finish Button}

Edit Business Case
    Wait Until Ready    xpath=//table[@id="ts_business_case_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_business_case_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Business Case Button}
    Click Button    ${Id Edit Business Case Button}
    Wait Until Ready    ${Id Add Contract Type Description}
    Input Text    ${Id Add Contract Type Description}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Business Case
    Go To Business Case
    Wait Until Ready    xpath=//table[@id="ts_business_case_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_business_case_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Business Case Button}
    Click Button    ${Id Edit Business Case Button}
    Wait Until Ready    ${Id Add Contract Type Description}
    Input Text    ${Id Add Contract Type Description}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Contract Language
    Wait Until Ready    ${Id Contract Language}
    Click Element    ${Id Contract Language}

Enable Contract Language Or Add Contract Language
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_language_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Contract Language
    ELSE
        Add Contract Language
    END

Enable Contract Language
    Wait Until Ready    xpath=//table[@id="ts_language_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_language_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Contract Language Button}
    Click Button    ${Id Edit Contract Language Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Contract Language
    Wait Until Ready    ${Id Add Contract Language Button}
    Click Button    ${Id Add Contract Language Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Click Element    ${Finish Button}

Edit Contract Language
    Wait Until Ready    ${Id Edit Contract Language Button}
    Wait Until Ready    xpath=//table[@id="ts_language_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_language_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Contract Language Button}
    Click Button    ${Id Edit Contract Language Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Contract Language
    Go To Contract Language
    Wait Until Ready    xpath=//table[@id="ts_language_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_language_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Contract Language Button}
    Click Button    ${Id Edit Contract Language Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To VAT ID
    Wait Until Ready    ${Id VAT ID}
    Click Element    ${Id VAT ID}

Enable VAT ID Or Add VAD ID
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable VAT ID    ELSE    Add VAT ID

Enable VAT ID
    Wait Until Ready    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit VAT ID Button}
    Click Button    ${Id Edit VAT ID Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add VAT ID
    Wait Until Ready    ${Id Add VAT ID Button}
    Click Button    ${Id Add VAT ID Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Click Element    ${Finish Button}

Edit VAT ID
    Wait Until Ready    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit VAT ID Button}
    Click Button    ${Id Edit VAT ID Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Edited Name}
    Click Element    ${Finish Button}

Disable VAT ID
    Go To VAT ID
    Wait Until Ready    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit VAT ID Button}
    Click Button    ${Id Edit VAT ID Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Bank Account
    Wait Until Ready    ${Id Bank Account}
    Click Element    ${Id Bank Account}

Enable Bank Account Or Add Bank Account
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Bank Account    ELSE    Add Bank Account

Enable Bank Account
    Wait Until Ready    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Bank Account Button}
    Click Button    ${Id Edit Bank Account Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Bank Account
    Wait Until Ready    ${Id Add Bank Account Button}
    Click Button    ${Id Add Bank Account Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Click Element    ${Finish Button}

Edit Bank Account
    Wait Until Ready    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Bank Account Button}
    Click Button    ${Id Edit Bank Account Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Bank Account
    Go To Bank Account
    Wait Until Ready    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Bank Account Button}
    Click Button    ${Id Edit Bank Account Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Applicable Law
    Wait Until Ready    ${Id Applicable Law}
    Click Element    ${Id Applicable Law}

Enable Applicable Law Or Add Applicable Law
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}    Enable Applicable Law    ELSE    Add Applicable Law

Enable Applicable Law
    Wait Until Ready    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Applicable Law Button}
    Click Button    ${Id Edit Applicable Law Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Applicable Law
    Wait Until Ready    ${Id Add Applicable Law Button}
    Click Button    ${Id Add Applicable Law Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Click Element    ${Finish Button}

Edit Applicable Law
    Wait Until Ready    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Applicable Law Button}
    Click Button    ${Id Edit Applicable Law Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Applicable Law
    Go To Applicable Law
    Wait Until Ready    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Applicable Law Button}
    Click Button    ${Id Edit Applicable Law Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${Name}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Set SAP Visibility Back to Invisible
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Accounting area Visibility Back to Invisible
    Wait Until Ready    ${Id Fields Edit Button}
    Wait Until Ready    ${Field Name2}
    Click Element    ${Field Name2}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

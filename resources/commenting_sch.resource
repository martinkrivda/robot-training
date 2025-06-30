*** Settings ***
Documentation       This is a resource file for commenting schemas.
...                 Keywords defined here can be used where this "commenting_sch.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Commenting Schema Name}                                       dvtest1
${Commenting Schema Edited Name}                                dvtestEdited
${Commenting Schema Edit Field}                                 Občanské právo
${Commenting Schema Edit Document type}                         ISRS Originál
${Add User1}                                                    Švadlena, Michal (isseutester02)
${User1}                                                        Michal Švadlena (isseutester02)
${Add User2}                                                    Vodárek, Dominik (dominik.vodarek@stajrendejov.cz)
${User2}                                                        Dominik Vodárek (dominik.vodarek@stajrendejov.cz)
${Finish Button}                                                //button[normalize-space(text())="Dokončit"]
${Id Administration and Configuration}                          admin_config
${Id Settings}                                                  settings_comm_schemas
${Id Commenting Schema Add Button}                              ts_add_comm_schema_btn
${Id Add Commenting Schema}                                     s_schema
${Id Commenting Schema Edit Button}                             ts_edit_comm_schema_btn
${Id Commenting Schema Edit Field}                              add_comm_mand_field_select
${Id Commenting Schema Edit Document Type}                      add_comm_mand_doc_type_select
${Id Commenting Schema Edit Applicable Law}                     add_comm_mand_appl_law_select_ms
${Id Commenting Schema Edit Applicable Law Select0}             xpath=//input[@id="ui-multiselect-1-add_comm_mand_appl_law_select-option-0"]
${Id Commenting Schema Edit Applicable Law Select1}             xpath=//input[@id="ui-multiselect-1-add_comm_mand_appl_law_select-option-1"]
${Id Commenting Schema Edit Applicable Law Add Button}          u_add_comm_mand
${Id Commenting Schema Edit Applicable Law Delete Button}       u_delete_comm_mand
${Id Commenting Schema Delete Button}                           ts_del_comm_schema_btn
${Delete Button}                                                //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Add User Button}                                           ts_add_comm_schemauser_btn
${Id Add Commenting Schema User}                                s_username
${Id Edit User Button}                                          ts_edit_comm_schemauser_btn
${Id Edit User Required Checkbox}                               s_req
${Id Alert}                                                     alert_area
${Alert Message}                                                Vyplňte prosím všechna povinná pole!
${Timeout}                                                      5s
${Settings}                                                     //a[@class="main_tabs" and @href="#tab_settings"]
${Select All}                                                   xpath=//a[span[text()="Vybrat vše"]]
${Select None}                                                  //a[@class="ui-multiselect-none"]
${Id Delete Commenting Schema User}                             ts_del_comm_schemauser_btn
${Close Button}                                                 //button[@title='Close']


*** Keywords ***
# ToDo: Change name to id
# ToDo: Wait until ready ????

Go To Settings
    Click Element    ${Settings}

Click On Administration
    Wait Until Ready    ${Id Administration and Configuration}
    Click Element    ${Id Administration and Configuration}

Click On Commenting Schemas
    Wait Until Ready    ${Id Settings}
    Click Element    ${Id Settings}

Go To Commenting Schemas
    Open Browser And Logged In
    Go To Settings
    Click On Administration
    Click On Commenting Schemas

Add Commenting Schemas
    Wait Until Ready    ${Id Commenting Schema Add Button}
    Click Button    ${Id Commenting Schema Add Button}
    Wait Until Ready    ${Id Add Commenting Schema}
    Input Text    ${Id Add Commenting Schema}    ${Commenting Schema Name}
    Click Button    ${Finish Button}

Edit Commenting Schema
    Wait Until Ready    //td[normalize-space(text())="${Commenting Schema Name}"]
    Click Element    //td[normalize-space(text())="${Commenting Schema Name}"]
    Click Button    ${Id Commenting Schema Edit Button}
    Wait Until Ready    ${Id Add Commenting Schema}
    Input Text    ${Id Add Commenting Schema}    ${Commenting Schema Edited Name}
    Select From List By Label    ${Id Commenting Schema Edit Field}    ${Commenting Schema Edit Field}
    Select From List By Label    ${Id Commenting Schema Edit Document Type}    ${Commenting Schema Edit Document type}
    Wait Until Element Contains
    ...    ${Id Commenting Schema Edit Document Type}
    ...    ${Commenting Schema Edit Document type}
    Click Element    ${Id Commenting Schema Edit Applicable Law}
    Wait Until Element Is Visible
    ...    xpath=//div[contains(@class,"ui-multiselect-menu") and contains(@style,"display: block")]//span[text()="Vybrat vše"]
    ...    timeout=10s
    Click Element
    ...    xpath=//div[contains(@class,"ui-multiselect-menu") and contains(@style,"display: block")]//span[text()="Vybrat vše"]
    Wait Until Element Is Visible
    ...    xpath=//div[contains(@class,"ui-multiselect-menu") and contains(@style,"display: block")]//span[text()="Zrušit vše"]
    Click Element
    ...    xpath=//div[contains(@class,"ui-multiselect-menu") and contains(@style,"display: block")]//span[text()="Zrušit vše"]
    Wait Until Element Is Visible    ${Id Commenting Schema Edit Applicable Law Select0}
    Wait Until Ready    ${Id Commenting Schema Edit Applicable Law Select0}
    Click Element    ${Id Commenting Schema Edit Applicable Law Select0}
    Click Element    ${Id Commenting Schema Edit Applicable Law Select1}
    Click Element    ${Id Commenting Schema Edit Applicable Law Select0}
    Click Button    ${Id Commenting Schema Edit Applicable Law Add Button}
    Wait Until Ready
    ...    xpath=//tr[td[normalize-space(.)="${Commenting Schema Edit Field}"] and td[normalize-space(.)="${Commenting Schema Edit Document type}"] and td[normalize-space(.)="České"]]
    Click Element
    ...    xpath=//tr[td[normalize-space(text())="${Commenting Schema Edit Field}"] and td[normalize-space(text())="${Commenting Schema Edit Document type}"] and td[normalize-space(text())="České"]]
    Click Button    ${Id Commenting Schema Edit Applicable Law Delete Button}
    Click Button    ${Finish Button}

Delete Commenting Schema
    Wait Until Ready
    ...    xpath=//*[@id="ts_comm_schemas_tbl_wrapper"]//td[contains(normalize-space(.), "${Commenting Schema Edited Name}")]
    Click Element
    ...    xpath=//*[@id="ts_comm_schemas_tbl_wrapper"]//td[contains(normalize-space(.), "${Commenting Schema Edited Name}")]
    Click Button    ${Id Commenting Schema Delete Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Add User
    Wait Until Ready
    ...    xpath=//*[@id="ts_comm_schemas_tbl_wrapper"]//td[contains(normalize-space(.), "${Commenting Schema Edited Name}")]
    Click Element
    ...    xpath=//*[@id="ts_comm_schemas_tbl_wrapper"]//td[contains(normalize-space(.), "${Commenting Schema Edited Name}")]
    Click Button    ${Id Add User Button}
    Wait Until Ready    ${Id Add Commenting Schema User}
    Select From List By Label    ${Id Add Commenting Schema User}    ${Add User1}
    Select Checkbox    ${Id Edit User Required Checkbox}
    Click Button    ${Finish Button}

Edit User
    Wait Until Ready    xpath=//td[normalize-space(.)="${User1}"]
    Click Element    xpath=//td[normalize-space(.)="${User1}"]
    Click Button    ${Id Edit User Button}
    Wait Until Ready    ${Id Add Commenting Schema User}
    Select From List By Label    ${Id Add Commenting Schema User}    ${Add User2}
    Unselect Checkbox    ${Id Edit User Required Checkbox}
    Click Button    ${Finish Button}

Delete User
    Wait Until Ready    //td[normalize-space(text())='${User2}']
    Click Element    //td[normalize-space(text())='${User2}']
    Click Button    ${Id Delete Commenting Schema User}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Add Empty Commenting Schema
    Wait Until Ready    ${Id Commenting Schema Add Button}
    Click Button    ${Id Commenting Schema Add Button}
    Wait Until Ready    ${Finish Button}
    Click Button    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Wait Until Ready    ${Close Button}
    Click Button    ${Close Button}

Add Empty Commenting Schema User
    Wait Until Ready    //td[normalize-space(text())="${Commenting Schema Name}"]
    Click Element    //td[normalize-space(text())="${Commenting Schema Name}"]
    Wait Until Ready    ${Id Add User Button}
    Click Button    ${Id Add User Button}
    Wait Until Ready    ${Finish Button}
    Click Button    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Wait Until Ready    ${Close Button}
    Click Button    ${Close Button}

Delete Commenting Schema User Test
    Wait Until Ready    //td[normalize-space(text())="${Commenting Schema Name}"]
    Click Element    //td[normalize-space(text())="${Commenting Schema Name}"]
    Click Button    ${Id Commenting Schema Delete Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Delete Test Data If Exists
    [Arguments]    ${commenting_name}
    ${exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//*[@id="ts_comm_schemas_tbl_wrapper"]//td[contains(normalize-space(.), "${commenting_name}")]
    ...    timeout=1s
    IF    ${exists}    Delete Test Data    ${commenting_name}

Delete Test Data
    [Arguments]    ${commenting_name}
    Click Element
    ...    xpath=//*[@id="ts_comm_schemas_tbl_wrapper"]//td[contains(normalize-space(.), "${commenting_name}")]
    Click Button    ${Id Commenting Schema Delete Button}
    Wait Until Ready    xpath=${Delete Button}
    Click Button    xpath=${Delete Button}

Prepare Test
    Go To Commenting Schemas
    Delete Test Data If Exists    ${Commenting Schema Name}
    Delete Test Data If Exists    ${Commenting Schema Edited Name}

Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

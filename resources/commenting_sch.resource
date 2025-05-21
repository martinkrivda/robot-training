*** Settings ***
Documentation    This is a resource file for commenting schemas.
...              Keywords defined here can be used where this "commenting_sch.resource" is loaded.
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../credentials.py
Resource    login.resource

*** Variables ***
${Commenting Schema Name}    dvtest1
${Commenting Schema Edited Name}    dvtestEdited
${Commenting Schema Edit Field}    Občanské právo
${Commenting Schema Edit Document type}    ISRS Originál
${Add User1}    Švadlena, Michal (isseutester02)
${User1}    Michal Švadlena (isseutester02)
${Add User2}    Vodárek, Dominik (dominik.vodarek@stajrendejov.cz)
${User2}    Dominik Vodárek (dominik.vodarek@stajrendejov.cz)
${Finish Button}    //button[normalize-space(text())="Dokončit"]
${Id Administration and Configuration}    admin_config
${Id Settings}    settings_comm_schemas
${Id Commenting Schema Add Button}    ts_add_comm_schema_btn
${Id Add Commenting Schema}    s_schema
${Id Commenting Schema Edit Button}    ts_edit_comm_schema_btn
${Id Commenting Schema Edit Field}    add_comm_mand_field_select
${Id Commenting Schema Edit Document Type}    add_comm_mand_doc_type_select
${Id Commenting Schema Edit Applicable Law}    add_comm_mand_appl_law_select_ms
${Id Commenting Schema Edit Applicable Law Select0}    ui-multiselect-0-add_comm_mand_appl_law_select-option-0
${Id Commenting Schema Edit Applicable Law Select1}    ui-multiselect-0-add_comm_mand_appl_law_select-option-1
${Id Commenting Schema Edit Applicable Law Add Button}    u_add_comm_mand
${Id Commenting Schema Edit Applicable Law Delete Button}    u_delete_comm_mand
${Id Commenting Schema Delete Button}    ts_del_comm_schema_btn
${Delete Button}    //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Add User Button}    ts_add_comm_schemauser_btn
${Id Add Commenting Schema User}    s_username
${Id Edit User Button}    ts_edit_comm_schemauser_btn
${Id Edit User Required Checkbox}    s_req
${Id Alert}    alert_area
${Alert Message}    Vyplňte prosím všechna povinná pole!

*** Keywords ***

# ToDo: Change name to id

Go To Settings
    Click Element    //a[@class="main_tabs" and @href="#tab_settings"]

Click On Administration
    Wait Until Element Is Visible    ${Id Administration and Configuration}    timeout=5s
    Click Element    ${Id Administration and Configuration}

Click On Commenting Schemas
    Wait Until Element Is Visible    ${Id Settings}    timeout=5s
    Click Element    ${Id Settings}

Go To Commenting Schemas
    Open Browser And Logged In
    Go To Settings
    Click On Administration
    Click On Commenting Schemas

Add Commenting Schemas
    Wait Until Element Is Visible    ${Id Commenting Schema Add Button}    timeout=5s
    Click Button    ${Id Commenting Schema Add Button}
    Wait Until Element Is Visible    ${Id Add Commenting Schema}    timeout=5s
    Click Element    ${Id Add Commenting Schema}
    Input Text    ${Id Add Commenting Schema}    ${Commenting Schema Name}
    Click Button    ${Finish Button}

Edit Commenting Schema
    Click Element    //td[normalize-space(text())="${Commenting Schema Name}"]
    Click Button    ${Id Commenting Schema Edit Button}
    Wait Until Element Is Visible    ${Id Add Commenting Schema}    timeout=5s
    Click Element    ${Id Add Commenting Schema}
    Input Text    ${Id Add Commenting Schema}    ${Commenting Schema Edited Name}
    Select From List By Label    ${Id Commenting Schema Edit Field}    ${Commenting Schema Edit Field}
    Select From List By Label    ${Id Commenting Schema Edit Document Type}    ${Commenting Schema Edit Document type}
    Wait Until Element Contains    ${Id Commenting Schema Edit Document Type}    ${Commenting Schema Edit Document type}
    Click Button    ${Id Commenting Schema Edit Applicable Law}
    Wait Until Element Is Visible    xpath=//a[@class="ui-multiselect-all"]    timeout=5s
    Click Element    xpath=//a[@class="ui-multiselect-all"]
    Click Element    xpath=//a[@class="ui-multiselect-none"]
    Wait Until Element Is Visible    ${Id Commenting Schema Edit Applicable Law Select0}    5s
    Click Element    ${Id Commenting Schema Edit Applicable Law Select0}
    Click Element    ${Id Commenting Schema Edit Applicable Law Select1}
    Click Element    ${Id Commenting Schema Edit Applicable Law Select0}
    Click Button    ${Id Commenting Schema Edit Applicable Law Add Button}
    Wait Until Element Is Visible    xpath=//tr[td[normalize-space(.)="${Commenting Schema Edit Field}"] and td[normalize-space(.)="${Commenting Schema Edit Document type}"] and td[normalize-space(.)="České"]]
    Click Element    xpath=//tr[td[normalize-space(text())="${Commenting Schema Edit Field}"] and td[normalize-space(text())="${Commenting Schema Edit Document type}"] and td[normalize-space(text())="České"]]
    Click Button    ${Id Commenting Schema Edit Applicable Law Delete Button}
    Click Button    ${Finish Button}

Delete Commenting Schema
    Click Element    //td[normalize-space(text())="${Commenting Schema Edited Name}"]
    Click Button    ${Id Commenting Schema Delete Button}
    Wait Until Element Is Visible    ${Delete Button}    timeout=5s
    Click Button    ${Delete Button}

Add User
    Click Element    //td[normalize-space(text())="${Commenting Schema Edited Name}"]
    Click Button    ${Id Add User Button}
    Wait Until Element Is Visible    ${Id Add Commenting Schema User}    timeout=5s
    Select From List By Label    ${Id Add Commenting Schema User}    ${Add User1}
    Select Checkbox    ${Id Edit User Required Checkbox}
    Click Button    ${Finish Button}

Edit User
    Click Element    xpath=//td[normalize-space(.)="${User1}"]
    Click Button    ${Id Edit User Button}
    Wait Until Element Is Visible    ${Id Add Commenting Schema User}    timeout=5s
    Select From List By Label    ${Id Add Commenting Schema User}    ${Add User2}
    Unselect Checkbox    ${Id Edit User Required Checkbox}
    Click Button    ${Finish Button}

Delete User
    Click Element    //td[normalize-space(text())='${User2}']
    Click Button    ts_del_comm_schemauser_btn
    Wait Until Element Is Visible    ${Delete Button}    timeout=5s
    Click Button    ${Delete Button}

Add Empty Commenting Schema
    Wait Until Element Is Visible    ${Id Commenting Schema Add Button}    timeout=5s
    Click Button    ${Id Commenting Schema Add Button}
    Wait Until Element Is Visible    ${Finish Button}    timeout=5s
    Click Button    ${Finish Button}
    Wait Until Element Is Visible    ${Id Alert}    5s
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty Commenting Schema User
    Wait Until Element Is Visible    ${Id Add User Button}    timeout=5s
    Click Button    ${Id Add User Button}
    Wait Until Element Is Visible    ${Finish Button}    timeout=5s
    Click Button    ${Finish Button}
    Wait Until Element Is Visible    ${Id Alert}    5s
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Delete Commenting Schema User Test
    Click Element    //td[normalize-space(text())="${Commenting Schema Name}"]
    Click Button    ${Id Commenting Schema Delete Button}
    Wait Until Element Is Visible    ${Delete Button}    timeout=5s
    Click Button    ${Delete Button}

Delete Test Data If Exists
    [Arguments]    ${commenting_name}
    ${exists}=    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=//td[normalize-space(text())="${commenting_name}"]    timeout=3s
    Run Keyword If    ${exists}    Delete Test Data    ${commenting_name}

Delete Test Data
    [Arguments]    ${commenting_name}
    Click Element    xpath=//td[normalize-space(text())="${commenting_name}"]
    Click Button    ${Id Commenting Schema Delete Button}
    Wait Until Element Is Visible    xpath=${Delete Button}    timeout=5s
    Click Button    xpath=${Delete Button}
    Sleep    1

Prepare Test
    Go To Commenting Schemas
    Delete Test Data If Exists    ${Commenting Schema Name}
    Delete Test Data If Exists    ${Commenting Schema Edited Name}

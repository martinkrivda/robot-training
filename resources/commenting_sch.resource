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

*** Keywords ***

# ToDo: Change name to id

Go To Settings
    Click Element    //a[@class="main_tabs" and @href="#tab_settings"]

Click On Administration
    Wait Until Element Is Visible    id=admin_config    timeout=5s
    Click Element    id=admin_config

Click On Commenting Schemas
    Wait Until Element Is Visible    id=settings_comm_schemas    timeout=5s
    Click Element    id=settings_comm_schemas

Go To Commenting Schemas
    Open Browser And Logged In
    Go To Settings
    Click On Administration
    Click On Commenting Schemas

Add Commenting Schemas
    Wait Until Element Is Visible    id=ts_add_comm_schema_btn    timeout=5s
    Click Button    id=ts_add_comm_schema_btn
    Wait Until Element Is Visible    id=s_schema    timeout=5s
    Click Element    id=s_schema
    Input Text    id=s_schema    ${Commenting Schema Name}
    Click Button    //button[normalize-space(text())="Dokončit"]

Edit Commenting Schema
    Click Element    //td[normalize-space(text())="${Commenting Schema Name}"]
    Click Button    id=ts_edit_comm_schema_btn
    Wait Until Element Is Visible    id=s_schema    timeout=5s
    Click Element    id=s_schema
    Input Text    id=s_schema    ${Commenting Schema Edited Name}
    Select From List By Label    id=add_comm_mand_field_select    ${Commenting Schema Edit Field}
    Select From List By Label    id=add_comm_mand_doc_type_select    ${Commenting Schema Edit Document type}
    Wait Until Element Contains    id=add_comm_mand_doc_type_select    ${Commenting Schema Edit Document type}
    Click Button    id=add_comm_mand_appl_law_select_ms
    Wait Until Element Is Visible    xpath=//a[@class="ui-multiselect-all"]    timeout=5s
    Click Element    xpath=//a[@class="ui-multiselect-all"]
    Click Element    xpath=//a[@class="ui-multiselect-none"]
    Wait Until Element Is Visible    id=ui-multiselect-0-add_comm_mand_appl_law_select-option-0    5s
    Click Element    id=ui-multiselect-0-add_comm_mand_appl_law_select-option-0
    Click Element    id=ui-multiselect-0-add_comm_mand_appl_law_select-option-1
    Click Element    id=ui-multiselect-0-add_comm_mand_appl_law_select-option-0
    Click Button    id=u_add_comm_mand
    Wait Until Element Is Visible    xpath=//tr[td[normalize-space(.)="${Commenting Schema Edit Field}"] and td[normalize-space(.)="${Commenting Schema Edit Document type}"] and td[normalize-space(.)="České"]]
    Click Element    xpath=//tr[td[normalize-space(text())="${Commenting Schema Edit Field}"] and td[normalize-space(text())="${Commenting Schema Edit Document type}"] and td[normalize-space(text())="České"]]
    Click Button    id=u_delete_comm_mand
    Click Button    //button[normalize-space(text())="Dokončit"]

Delete Commenting Schema
    Click Element    //td[normalize-space(text())="${Commenting Schema Edited Name}"]
    Click Button    id=ts_del_comm_schema_btn
    Wait Until Element Is Visible    //button[normalize-space(.)="Odstranit" and not(@id)]    timeout=5s
    Click Button    //button[normalize-space(.)="Odstranit" and not(@id)]

Add User
    Click Element    //td[normalize-space(text())="${Commenting Schema Edited Name}"]
    Click Button    ts_add_comm_schemauser_btn
    Wait Until Element Is Visible    id=s_username    timeout=5s
    Select From List By Label    id=s_username    ${Add User1}
    Select Checkbox    id=s_req
    Click Button    //button[normalize-space(text())="Dokončit"]

Edit User
    Click Element    xpath=//td[normalize-space(.)="${User1}"]
    Click Button    ts_edit_comm_schemauser_btn
    Wait Until Element Is Visible    id=s_username    timeout=5s
    Select From List By Label    id=s_username    ${Add User2}
    Unselect Checkbox    id=s_req
    Click Button    //button[normalize-space(text())="Dokončit"]

Delete User
    Click Element    //td[normalize-space(text())='${User2}']
    Click Button    ts_del_comm_schemauser_btn
    Wait Until Element Is Visible    //button[normalize-space(.)="Odstranit" and not(@id)]    timeout=5s
    Click Button    //button[normalize-space(.)="Odstranit" and not(@id)]

Add Empty Commenting Schema
    Wait Until Element Is Visible    id=ts_add_comm_schema_btn    timeout=5s
    Click Button    id=ts_add_comm_schema_btn
    Wait Until Element Is Visible    //button[normalize-space(text())="Dokončit"]    timeout=5s
    Click Button    //button[normalize-space(text())="Dokončit"]
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty Commenting Schema User
    Wait Until Element Is Visible    id=ts_add_comm_schemauser_btn    timeout=5s
    Click Button    id=ts_add_comm_schemauser_btn
    Wait Until Element Is Visible    //button[normalize-space(text())="Dokončit"]    timeout=5s
    Click Button    //button[normalize-space(text())="Dokončit"]
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Delete Commenting Schema User Test
    Click Element    //td[normalize-space(text())="${Commenting Schema Name}"]
    Click Button    id=ts_del_comm_schema_btn
    Wait Until Element Is Visible    //button[normalize-space(.)="Odstranit" and not(@id)]    timeout=5s
    Click Button    //button[normalize-space(.)="Odstranit" and not(@id)]

*** Settings ***
Documentation    This is a resource file for signoff schemas.
...              Keywords defined here can be used where this "signoff_sch.resource" is loaded.
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../credentials.py
Resource    login.resource

*** Variables ***
${SignOff Schema Name}    dvtest1
${SignOff Schema Edited Name}    dvtestEdited
${SignOff Schema Logic1}    Jeden schvaluje
${SignOff Schema Logic2}    Všichni schvalují
${SignOff Schema Level1}    1
${SignOff Schema Level2}    2
${Add User1}    Švadlena, Michal
${User1}    Michal Švadlena
${Add User2}    Vodárek, Dominik

*** Keywords ***

# ToDo: Change name to id

Go To Settings
    Click Element    //a[@class="main_tabs" and @href="#tab_settings"]

Click On Administration
    Wait Until Element Is Visible    id=admin_config    timeout=5s
    Click Element    id=admin_config

Click On SignOff Schemas
    Wait Until Element Is Visible    id=settings_schemas    timeout=5s
    Click Element    id=settings_schemas

Go To SignOff Schemas
    Open Browser And Logged In
    Go To Settings
    Click On Administration
    Click On SignOff Schemas

Add SignOff Schema
    Wait Until Element Is Visible    id=ts_add_schema_btn    timeout=5s
    Click Button    id=ts_add_schema_btn
    Wait Until Element Is Visible    id=s_schema    timeout=5s
    Click Element    id=s_schema
    Input Text    id=s_schema    ${SignOff Schema Name}
    Click Element    id=s_levels
    Input Text    id=s_levels    ${SignOff Schema Level1}
    Click Button    //button[normalize-space(text())="Dokončit"]

Edit SignOff Schema
    Click Element    //td[normalize-space(text())="${SignOff Schema Name}"]
    Click Button    id=ts_edit_schema_btn
    Wait Until Element Is Visible    id=s_schema    timeout=5s
    Click Element    id=s_schema
    Input Text    id=s_schema    ${SignOff Schema Edited Name}
    Click Element    id=s_levels
    Input Text    id=s_levels    ${SignOff Schema Level2}
    Click Button    //button[normalize-space(text())="Dokončit"]

Delete SignOff Schema
    Click Element    //td[normalize-space(text())="${SignOff Schema Edited Name}"]
    Click Button    id=ts_del_schema_btn
    Wait Until Element Is Visible    //button[normalize-space(.)="Odstranit" and not(@id)]    timeout=5s
    Click Button    //button[normalize-space(.)="Odstranit" and not(@id)]

Add User
    Click Element    //td[normalize-space(text())="${SignOff Schema Edited Name}"]
    Click Button    ts_add_schemauser_btn
    Wait Until Element Is Visible    id=s_username    timeout=5s
    Select From List By Label    id=s_username     ${Add User1}
    Wait Until Element Is Visible    id=s_level    timeout=5s
    Select From List By Label    id=s_level  ${SignOff Schema Level1}
    Wait Until Element Is Visible    id=s_logic    timeout=5s
    Select From List By Label    id=s_logic    ${SignOff Schema Logic2}
    Click Button    //button[normalize-space(text())="Dokončit"]

Edit User
    Click Element    //td[normalize-space(text())='${User1}']
    Click Button    ts_edit_schemauser_btn
    Wait Until Element Is Visible    id=s_level    timeout=5s
    Select From List By Label    id=s_level  ${SignOff Schema Level2}
    Wait Until Element Is Visible    id=s_logic    timeout=5s
    Select From List By Label    id=s_logic    ${SignOff Schema Logic1}
    Click Button    //button[normalize-space(text())="Dokončit"]

Delete User
    Click Element    //td[normalize-space(text())='${User1}']
    Click Button    ts_del_schemauser_btn
    Wait Until Element Is Visible    //button[normalize-space(.)="Odstranit" and not(@id)]    timeout=5s
    Click Button    //button[normalize-space(.)="Odstranit" and not(@id)]

Add Empty SignOff Schema And Levels
    Wait Until Element Is Visible    id=ts_add_schema_btn    timeout=5s
    Click Button    id=ts_add_schema_btn
    Wait Until Element Is Visible    //button[normalize-space(text())="Dokončit"]    timeout=5s
    Click Button    //button[normalize-space(text())="Dokončit"]
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty SignOff Schema
    Wait Until Element Is Visible    id=ts_add_schema_btn    timeout=5s
    Click Button    id=ts_add_schema_btn
    Wait Until Element Is Visible    id=s_levels    timeout=5s
    Click Element    id=s_levels
    Input Text    id=s_levels    ${SignOff Schema Level1}
    Click Button    //button[normalize-space(text())="Dokončit"]
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty SignOff Levels
     Wait Until Element Is Visible    id=ts_add_schema_btn    timeout=5s
    Click Button    id=ts_add_schema_btn
    Wait Until Element Is Visible    id=s_schema    timeout=5s
    Click Element    id=s_schema
    Input Text    id=s_schema    ${SignOff Schema Name}
    Click Button    //button[normalize-space(text())="Dokončit"]
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty Schema User And Levels
    Wait Until Element Is Visible    id=ts_add_schemauser_btn    timeout=5s
    Click Button    id=ts_add_schemauser_btn
    Wait Until Element Is Visible    //button[normalize-space(text())="Dokončit"]    timeout=5s
    Click Button    //button[normalize-space(text())="Dokončit"]
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty Schema Levels
    Wait Until Element Is Visible    id=ts_add_schemauser_btn    timeout=5s
    Click Button    id=ts_add_schemauser_btn
    Wait Until Element Is Visible    id=s_username    timeout=5s
    Select From List By Label    id=s_username    Vodárek, Dominik
    Wait Until Element Is Visible    //button[normalize-space(text())="Dokončit"]    timeout=5s
    Click Button    //button[normalize-space(text())="Dokončit"]
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty Schema User
    Wait Until Element Is Visible    id=ts_add_schemauser_btn    timeout=5s
    Click Button    id=ts_add_schemauser_btn
    Wait Until Element Is Visible    id=s_level    timeout=5s
    Select From List By Label    id=s_level  ${SignOff Schema Level1}
    Wait Until Element Is Visible    //button[normalize-space(text())="Dokončit"]    timeout=5s
    Click Button    //button[normalize-space(text())="Dokončit"]
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Delete SignOff Schema User Test
    Click Element    //td[normalize-space(text())="${SignOff Schema Name}"]
    Click Button    id=ts_del_schema_btn
    Wait Until Element Is Visible    //button[normalize-space(.)="Odstranit" and not(@id)]    timeout=5s
    Click Button    //button[normalize-space(.)="Odstranit" and not(@id)]

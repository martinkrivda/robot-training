*** Settings ***
Documentation    This is a resource file for signoff schemas.
...              Keywords defined here can be used where this "signoff_sch.resource" is loaded.
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../credentials.py
Resource    login.resource

*** Variables ***
${SignOff Schema Name}                                          dvtest1
${SignOff Schema Edited Name}                                   dvtestEdited
${SignOff Schema Logic1}                                        Jeden schvaluje
${SignOff Schema Logic2}                                        Všichni schvalují
${SignOff Schema Level1}                                        1
${SignOff Schema Level2}                                        2
${Add User1}                                                    Švadlena, Michal
${User1}                                                        Michal Švadlena
${Add User2}                                                    Vodárek, Dominik
${Settings}                                                     //a[@class="main_tabs" and @href="#tab_settings"]
${Id Administration and Configuration}                          admin_config
${Id SignOff Schemas}                                           settings_schemas
${Id Add SignOff Schemas}                                       ts_add_schema_btn
${Id Add Schemas}                                               s_schema
${Id Add Levels}                                                s_levels
${Delete Button}                                                //button[normalize-space(.)="Odstranit" and not(@id)]
${Finish Button}                                                //button[normalize-space(text())="Dokončit"]
${Id Edit SignOff Button}                                       ts_edit_schema_btn


*** Keywords ***

# ToDo: Change name to id

Go To Settings
    Click Element    ${Settings}

Click On Administration
    Wait Until Element Is Visible    ${Id Administration and Configuration}    timeout=5s
    Click Element    ${Id Administration and Configuration}

Click On SignOff Schemas
    Wait Until Element Is Visible    ${Id SignOff Schemas}    timeout=5s
    Click Element    ${Id SignOff Schemas}

Go To SignOff Schemas
    Open Browser And Logged In
    Go To Settings
    Click On Administration
    Click On SignOff Schemas

Add SignOff Schema
    Wait Until Element Is Visible    ${Id Add SignOff Schemas}    timeout=5s
    Click Button    ${Id Add SignOff Schemas}
    Wait Until Element Is Visible    ${Id Add Schemas}    timeout=5s
    Click Element    ${Id Add Schemas}
    Input Text    ${Id Add Schemas}    ${SignOff Schema Name}
    Click Element    ${Id Add Levels}
    Input Text    ${Id Add Levels}    ${SignOff Schema Level1}
    Click Button    ${Finish Button}

Edit SignOff Schema
    Wait Until Element Is Visible    //td[normalize-space(text())="${SignOff Schema Name}"]
    Click Element    //td[normalize-space(text())="${SignOff Schema Name}"]
    Click Button    ${Id Edit SignOff Button}
    Wait Until Element Is Visible    ${Id Add Schemas}    timeout=5s
    Click Element    ${Id Add Schemas}
    Input Text    ${Id Add Schemas}    ${SignOff Schema Edited Name}
    Click Element    ${Id Add Levels}
    Input Text    ${Id Add Levels}    ${SignOff Schema Level2}
    Click Button    ${Finish Button}

Delete SignOff Schema
    Click Element    //td[normalize-space(text())="${SignOff Schema Edited Name}"]
    Click Button    id=ts_del_schema_btn
    Wait Until Element Is Visible    ${Delete Button}    timeout=5s
    Click Button    ${Delete Button}

Add User
    Click Element    //td[normalize-space(text())="${SignOff Schema Edited Name}"]
    Click Button    ts_add_schemauser_btn
    Wait Until Element Is Visible    id=s_username    timeout=5s
    Select From List By Label    id=s_username     ${Add User1}
    Wait Until Element Is Visible    id=s_level    timeout=5s
    Select From List By Label    id=s_level  ${SignOff Schema Level1}
    Wait Until Element Is Visible    id=s_logic    timeout=5s
    Select From List By Label    id=s_logic    ${SignOff Schema Logic2}
    Click Button    ${Finish Button}

Edit User
    Click Element    //td[normalize-space(text())='${User1}']
    Click Button    ts_edit_schemauser_btn
    Wait Until Element Is Visible    id=s_level    timeout=5s
    Select From List By Label    id=s_level  ${SignOff Schema Level2}
    Wait Until Element Is Visible    id=s_logic    timeout=5s
    Select From List By Label    id=s_logic    ${SignOff Schema Logic1}
    Click Button    ${Finish Button}

Delete User
    Click Element    //td[normalize-space(text())='${User1}']
    Click Button    ts_del_schemauser_btn
    Wait Until Element Is Visible    ${Delete Button}    timeout=5s
    Click Button    ${Delete Button}

Add Empty SignOff Schema And Levels
    Wait Until Element Is Visible    id=ts_add_schema_btn    timeout=5s
    Click Button    id=ts_add_schema_btn
    Wait Until Element Is Visible    ${Finish Button}    timeout=5s
    Click Button    ${Finish Button}
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty SignOff Schema
    Wait Until Element Is Visible    id=ts_add_schema_btn    timeout=5s
    Click Button    id=ts_add_schema_btn
    Wait Until Element Is Visible    ${Id Add Levels}    timeout=5s
    Click Element    ${Id Add Levels}
    Input Text    ${Id Add Levels}    ${SignOff Schema Level1}
    Click Button    ${Finish Button}
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty SignOff Levels
     Wait Until Element Is Visible    id=ts_add_schema_btn    timeout=5s
    Click Button    id=ts_add_schema_btn
    Wait Until Element Is Visible    ${Id Add Schemas}    timeout=5s
    Click Element    ${Id Add Schemas}
    Input Text    ${Id Add Schemas}    ${SignOff Schema Name}
    Click Button    ${Finish Button}
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty Schema User And Levels
    Wait Until Element Is Visible    id=ts_add_schemauser_btn    timeout=5s
    Click Button    id=ts_add_schemauser_btn
    Wait Until Element Is Visible    ${Finish Button}    timeout=5s
    Click Button    ${Finish Button}
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty Schema Levels
    Wait Until Element Is Visible    id=ts_add_schemauser_btn    timeout=5s
    Click Button    id=ts_add_schemauser_btn
    Wait Until Element Is Visible    id=s_username    timeout=5s
    Select From List By Label    id=s_username    Vodárek, Dominik
    Wait Until Element Is Visible    ${Finish Button}    timeout=5s
    Click Button    ${Finish Button}
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Add Empty Schema User
    Wait Until Element Is Visible    id=ts_add_schemauser_btn    timeout=5s
    Click Button    id=ts_add_schemauser_btn
    Wait Until Element Is Visible    id=s_level    timeout=5s
    Select From List By Label    id=s_level  ${SignOff Schema Level1}
    Wait Until Element Is Visible    ${Finish Button}    timeout=5s
    Click Button    ${Finish Button}
    Wait Until Element Is Visible    id=alert_area    5s
    Element Text Should Be    id=alert_area    Vyplňte prosím všechna povinná pole!
    Wait Until Element Is Visible    xpath=//button[@title='Close']    5s
    Click Button    xpath=//button[@title='Close']

Delete SignOff Schema User Test
    Click Element    //td[normalize-space(text())="${SignOff Schema Name}"]
    Click Button    id=ts_del_schema_btn
    Wait Until Element Is Visible    ${Delete Button}    timeout=5s
    Click Button    ${Delete Button}

Delete Test Data If Exists
    [Arguments]    ${schema_name}
    ${exists}=    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=//td[normalize-space(text())="${schema_name}"]    timeout=3s
    Run Keyword If    ${exists}    Delete Test Data    ${schema_name}

Delete Test Data
    [Arguments]    ${schema_name}
    Click Element    xpath=//td[normalize-space(text())="${schema_name}"]
    Click Button    ts_del_schema_btn
    Wait Until Element Is Visible    ${Delete Button}    timeout=5s
    Click Button    ${Delete Button}
    Sleep    1

Prepare Test
    Go To SignOff Schemas
    Delete Test Data If Exists    ${SignOff Schema Name}
    Delete Test Data If Exists    ${SignOff Schema Edited Name}


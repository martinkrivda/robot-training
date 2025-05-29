*** Settings ***
Documentation       This is a resource file for signoff schemas.
...                 Keywords defined here can be used where this "signoff_sch.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${SignOff Schema Name}                      dvtest1
${SignOff Schema Edited Name}               dvtestEdited
${SignOff Schema Logic1}                    Jeden schvaluje
${SignOff Schema Logic2}                    Všichni schvalují
${SignOff Schema Level1}                    1
${SignOff Schema Level2}                    2
${Add User1}                                Švadlena, Michal
${User1}                                    Michal Švadlena
${Add User2}                                Vodárek, Dominik
${Settings}                                 //a[@class="main_tabs" and @href="#tab_settings"]
${Id Administration and Configuration}      admin_config
${Id SignOff Schemas}                       settings_schemas
${Id Add SignOff Schemas}                   ts_add_schema_btn
${Id Add Schemas}                           s_schema
${Id Add Levels}                            s_levels
${Delete Button}                            //button[normalize-space(.)="Odstranit" and not(@id)]
${Finish Button}                            //button[normalize-space(text())="Dokončit"]
${Id Edit SignOff Button}                   ts_edit_schema_btn
${Id Delete SignOff Button}                 ts_del_schema_btn
${Id Add SignOff User Button}               ts_add_schemauser_btn
${Id Select Username}                       s_username
${Id Select Level}                          s_level
${Id Select Logic}                          s_logic
${Id Edit SignOff User Button}              ts_edit_schemauser_btn
${Id Delete SignOff User Button}            ts_del_schemauser_btn
${Id Alert}                                 alert_area
${Alert Message}                            Vyplňte prosím všechna povinná pole!
${Close Button}                             //button[@title='Close']
${Timeout}                                  5s


*** Keywords ***
# ToDo: Change name to id

Go To Settings
    Click Element    ${Settings}

Click On Administration
    Wait Until Ready    ${Id Administration and Configuration}
    Click Element    ${Id Administration and Configuration}

Click On SignOff Schemas
    Wait Until Ready    ${Id SignOff Schemas}
    Click Element    ${Id SignOff Schemas}

Go To SignOff Schemas
    Open Browser And Logged In
    Go To Settings
    Click On Administration
    Click On SignOff Schemas

Add SignOff Schema
    Wait Until Ready    ${Id Add SignOff Schemas}
    Click Button    ${Id Add SignOff Schemas}
    Wait Until Ready    ${Id Add Schemas}
    Input Text    ${Id Add Schemas}    ${SignOff Schema Name}
    Input Text    ${Id Add Levels}    ${SignOff Schema Level1}
    Click Button    ${Finish Button}

Edit SignOff Schema
    Wait Until Ready    //td[normalize-space(text())="${SignOff Schema Name}"]
    Click Element    //td[normalize-space(text())="${SignOff Schema Name}"]
    Click Button    ${Id Edit SignOff Button}
    Wait Until Ready    ${Id Add Schemas}
    Input Text    ${Id Add Schemas}    ${SignOff Schema Edited Name}
    Input Text    ${Id Add Levels}    ${SignOff Schema Level2}
    Click Button    ${Finish Button}

Delete SignOff Schema
    Wait Until Ready    //td[normalize-space(text())="${SignOff Schema Edited Name}"]
    Click Element    //td[normalize-space(text())="${SignOff Schema Edited Name}"]
    Click Button    ${Id Delete SignOff Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Add User
    Wait Until Ready    //td[normalize-space(text())="${SignOff Schema Edited Name}"]
    Click Element    //td[normalize-space(text())="${SignOff Schema Edited Name}"]
    Click Button    ${Id Add SignOff User Button}
    Wait Until Ready    ${Id Select Username}
    Select From List By Label    ${Id Select Username}    ${Add User1}
    Select From List By Label    ${Id Select Level}    ${SignOff Schema Level1}
    Select From List By Label    ${Id Select Logic}    ${SignOff Schema Logic2}
    Click Button    ${Finish Button}

Edit User
    Wait Until Ready    //*[@id="ts_schemausers_tbl"]//td[normalize-space(text())='${User1}']
    Click Element    //*[@id="ts_schemausers_tbl"]//td[normalize-space(text())='${User1}']
    Wait Until Ready    ${Id Edit SignOff User Button}
    Click Button    ${Id Edit SignOff User Button}
    Wait Until Ready    ${Id Select Level}
    Select From List By Label    ${Id Select Level}    ${SignOff Schema Level2}
    Select From List By Label    ${Id Select Logic}    ${SignOff Schema Logic1}
    Click Button    ${Finish Button}

Delete User
    Wait Until Ready    //*[@id="ts_schemausers_tbl"]//td[normalize-space(text())='${User1}']
    Click Element    //*[@id="ts_schemausers_tbl"]//td[normalize-space(text())='${User1}']
    Click Button    ${Id Delete SignOff User Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Add Empty SignOff Schema And Levels
    Wait Until Ready    ${Id Add SignOff Schemas}
    Click Button    ${Id Add SignOff Schemas}
    Wait Until Ready    ${Finish Button}
    Click Button    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}

Add Empty SignOff Schema
    Wait Until Ready    ${Id Add SignOff Schemas}
    Click Button    ${Id Add SignOff Schemas}
    Wait Until Ready    ${Id Add Levels}
    Input Text    ${Id Add Levels}    ${SignOff Schema Level1}
    Click Button    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}

Add Empty SignOff Levels
    Wait Until Ready    ${Id Add SignOff Schemas}
    Click Button    ${Id Add SignOff Schemas}
    Wait Until Ready    ${Id Add Schemas}
    Input Text    ${Id Add Schemas}    ${SignOff Schema Name}
    Click Button    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}

Add Empty Schema User And Levels
    Wait Until Ready    ${Id Add SignOff User Button}
    Click Button    ${Id Add SignOff User Button}
    Wait Until Ready    ${Finish Button}
    Click Button    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}

Add Empty Schema Levels
    Wait Until Ready    ${Id Add SignOff User Button}
    Click Button    ${Id Add SignOff User Button}
    Wait Until Ready    ${Id Select Username}
    Select From List By Label    ${Id Select Username}    ${Add User2}
    Wait Until Ready    ${Finish Button}
    Click Button    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}

Add Empty Schema User
    Wait Until Ready    //td[normalize-space(text())="${SignOff Schema Name}"]
    Click Element    //td[normalize-space(text())="${SignOff Schema Name}"]
    Wait Until Ready    ${Id Add SignOff User Button}
    Click Button    ${Id Add SignOff User Button}
    Wait Until Ready    ${Id Select Level}
    Select From List By Label    ${Id Select Level}    ${SignOff Schema Level1}
    Click Button    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}

Delete SignOff Schema User Test
    Click Element    //td[normalize-space(text())="${SignOff Schema Name}"]
    Click Button    ${Id Delete SignOff Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Delete Test Data If Exists
    [Arguments]    ${schema_name}
    ${exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//td[normalize-space(text())="${schema_name}"]
    ...    timeout=1s
    IF    ${exists}    Delete Test Data    ${schema_name}

Delete Test Data
    [Arguments]    ${schema_name}
    Click Element    xpath=//td[normalize-space(text())="${schema_name}"]
    Click Button    ${Id Delete SignOff Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Prepare Test
    Go To SignOff Schemas
    Delete Test Data If Exists    ${SignOff Schema Name}
    Delete Test Data If Exists    ${SignOff Schema Edited Name}

Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

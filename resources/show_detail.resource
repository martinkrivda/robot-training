*** Settings ***
Documentation       This is a resource file for Show detail.
...                 Keywords defined here can be used where this "show_detail.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Timeout}                      5s
${Personal Space}               //a[@href="#tab_personal"]
${Id Personal Settings}         personal_settings
${Id Show Detail}               show_detail
${Id Show Detail Checkbox}      show_detail_chk


*** Keywords ***
Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Go To Personal Space
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}

Click On Personal Settings
    Wait Until Ready    ${Id Personal Settings}
    Click Element    ${Id Personal Settings}

Click On Show Datail Settings
    Wait Until Ready    ${Id Show Detail}
    Click Element    ${Id Show Detail}

Go To Show Detail Settings
    Go To Personal Space
    Click On Personal Settings
    Click On Show Datail Settings

# Click on Show Detail Checkbox
#    Wait Until Ready    ${Id Show Detail Checkbox}
#    Checkbox Should Be Selected    ${Id Show Detail Checkbox}
#    Unselect Checkbox    ${Id Show Detail Checkbox}
#    Checkbox Should Not Be Selected    ${Id Show Detail Checkbox}

Turn Off Show Detail Checkbox
    ${is_checked}=    Run Keyword And Return Status    Checkbox Should Be Selected    ${Id Show Detail Checkbox}
    IF    ${is_checked}    Unselect Checkbox    ${Id Show Detail Checkbox}

Turn On Show Detail Checkbox
    ${is_checked}=    Run Keyword And Return Status    Checkbox Should Not Be Selected    ${Id Show Detail Checkbox}
    IF    ${is_checked}    Select Checkbox    ${Id Show Detail Checkbox}

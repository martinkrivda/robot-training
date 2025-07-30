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
${Id My Contracts}              my_contracts
${All Table}                    p_all_tbl
${Contract Data Container}      contract_data_container
${First Row}                    xpath=//table[@id='${All Table}']/tbody/tr[1]
${First Row Highligh NoD}       odd highlight
${First Row Highligh ShowD}     odd detail dt-hasChild


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

Turn Off Show Detail Checkbox
    ${is_checked}=    Run Keyword And Return Status    Checkbox Should Be Selected    ${Id Show Detail Checkbox}
    IF    ${is_checked}    Unselect Checkbox    ${Id Show Detail Checkbox}

Turn On Show Detail Checkbox
    ${is_not_checked}=    Run Keyword And Return Status
    ...    Checkbox Should Not Be Selected
    ...    ${Id Show Detail Checkbox}
    IF    ${is_not_checked}    Select Checkbox    ${Id Show Detail Checkbox}

Go To My Contracts
    Wait Until Ready    ${Id My Contracts}
    Click Element    ${Id My Contracts}

Click On First Contract
    Wait Until Ready    ${All Table}
    Click Element    ${First Row}

Contract Detail Should Be Visible
    Wait Until Ready    ${Contract Data Container}
    Element Attribute Value Should Be    ${First Row}    class    ${First Row Highligh ShowD}
    Element Should Be Visible    ${Contract Data Container}

Contract Detail Should Not Be Visible
    Sleep    1
    Element Attribute Value Should Be    ${First Row}    class    ${First Row Highligh NoD}
    Element Should Not Be Visible    ${Contract Data Container}

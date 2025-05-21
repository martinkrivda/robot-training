*** Settings ***
Documentation       This is a resource file for commenting schemas.
...                 Keywords defined here can be used where this "commenting_sch.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                                                //button[normalize-space(text())="Dokončit"]
${Id Administration and Configuration}                          admin_config
${Id Settings}                                                  settings_comm_schemas
${Delete Button}                                                //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                                     alert_area
${Alert Message}                                                Vyplňte prosím všechna povinná pole!
${Timeout}                                                      5s
${Fields}                                                       settings_custom_fields
${Fields Edit Button}    ts_edit_custom_fields_btn
${Field Name}    xpath=//tr[td[normalize-space(.)="Číslo výb.řízení"]]/td[1]
${Contract creation1}    //label[@for="s_required"]
${Contract creation2}    //label[@for="s_optional"]
${Sign-off1}    //label[@for="s_sorequired"]
${Sign-off2}    //label[@for="s_sooptional"]
${Visibility1}    //label[@for="s_visible"]
${Visibility2}    //label[@for="s_invisible"]
${Data source1}    //label[@for="s_source_csm"]
${Data source2}    //label[@for="s_source_sap"]
${Value from SAP1}    //label[@for="s_editable"]
${Value from SAP2}    //label[@for="s_readolny"]

*** Keywords ***
Go To Settings
    Click Element    //a[@class="main_tabs" and @href="#tab_settings"]

Click On Administration
    Wait Until Ready    ${Id Administration and Configuration}
    Click Element    ${Id Administration and Configuration}

Click On Fields
    Wait Until Ready    ${Fields}
    Click Element    ${Fields}

Go To Fields
    Open Browser And Logged In
    Go To Settings
    Click On Administration
    Click On Fields

Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Edit Fields
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Click Button    ${Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}



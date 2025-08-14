*** Settings ***
Documentation       This is a resource file for process.
...                 Keywords defined here can be used where this "process.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Library             Collections
Library             String
Library             DateTime
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                    //button[normalize-space(text())="Dokončit"]
${Close Button}                     xpath=//button[@title="Close"]
${Delete Button}                    //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                         alert_area
${Alert Message}                    Vyplňte prosím všechna povinná pole!
${Alert Message2}                   Finální znění už existuje.
${Alert Message3}                   Chcete jej nahradit novou verzí?
${Timeout}                          10s
${Timeout2}                         1s
${No Path}                          xpath=//button[normalize-space(.)="Ne"]
${Personal Space}                   //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                         //a[@class="main_tabs" and @href="#tab_settings"]
${Create Contract File Button}      //button[normalize-space(.)='Vytvoření smluvní složky']
${Delete Contract}                  xpath=//li[@class="cm_item ui-corner-all"]//a[contains(@href, "#contract_delete_file")]
${Create Contract}                  //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id User}                          user
${Id Number Sequence}               c_number
${Add Field}                        Občanské právo
${Number Sequence}                  Smluvní dodatky
${Please Wait}                      please_wait
${Id Contract Subject}              c_subject
${Id Add Partner}                   ${EMPTY}
${Add Partner1}                     1
${Id Field}                         c_legalfield
${Id Confidentiality}               c_confid
${Id Contract kind}                 c_kind
${Contract kind1}                   Kupní smlouva - § 588 - 610


*** Keywords ***
Process Setup
    Open Browser And Logged In

Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Go To Personal Space
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}

Go To Settings
    Wait Until Ready    ${Settings}
    Click Element    ${Settings}

Check Name Of User
    Wait Until Ready    ${Id User}
    Element Text Should Be    ${Id User}    ${User}

Create Contract
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Click Element    ${Id Number Sequence}
    Element Should Not Contain    ${Id Number Sequence}    ${Number Sequence}
    Wait Until Element Is Not Visible    ${Please Wait}
    Create Contract
    Input Text    ${Id Contract Subject}    TEST
    Input Text    ${Id Add Partner}    ${Add Partner1}
    Select From List By Label    ${Id Contract kind}    ${Contract kind1}
    Click Button    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Id Number Sequence}
    Wait Until Element Is Not Visible    ${Please Wait}

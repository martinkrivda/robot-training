*** Settings ***
Documentation       This is a resource file for layout.
...                 Keywords defined here can be used where this "layout.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
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
${Timeout}                          5s
${Timeout2}                         1s
${No}                               xpath=//button[normalize-space(.)="Ne"]
${Personal Space}                   //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                         //a[@class="main_tabs" and @href="#tab_settings"]
${Id Contract Items}                settings_pl_items
${Name}                             dvtest1
${Edited Name}                      dvtestEdited
${Layout Button}                    xpath=//button[contains(@class, "dt-button") and normalize-space(.)="Layout"]
${Select None Button}               xpath=//input[@type="button" and @value="Zrušit vše"]
${Select All Button}                xpath=//input[@type="button" and @value="Vybrat vše"]
${Contract Subject Name}            TESTCONRACTDV
${Status Button}                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Stav"]
${Status}                           xpath=//th[contains(@class, "sorting_asc") and normalize-space(.)="Stav"]
${Partner}                          xpath=//th[normalize-space(.)="Č.sml.partnera"]
${Partner Button}                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Č.sml.partnera"]
${Contract Subject}                 xpath=//th[contains(@class, "sorting_asc") and normalize-space(.)="Předmět smlouvy"]
${Contract Subject Button}          xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Předmět smlouvy"]
${Kind}                             xpath=//th[normalize-space(.)="Druh"]
${Kind Button}                      xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Druh"]
${Termination Method}               xpath=//th[normalize-space(.)="Metoda ukončení"]
${Termination Method Button}        xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Metoda ukončení"]
${Delete Contract Button}           xpath=//div[@id="tbl_menu"]//ul[contains(@class,"cm_personal_tbl")]//a[@href="#contract_delete_file"]
${Id Number Sequence}               c_number
${Id Contract Status}               c_status
${Field}                            Občanské právo
${Confidentiality}                  Přísně tajné
${Contract kind1}                   Kupní smlouva - § 588 - 610
${Contract kind2}                   Nájemní smlouva - § 663 - 723
${Contract kind3}                   Pojistná smlouva - § 788 - 828
${Language}                         Čeština
${Id Field}                         c_legalfield
${Id Confidentiality}               c_confid
${Id Contract kind}                 c_kind
${Number Sequence}                  ISSTEST
${Id Language}                      c_lang
${Value}                            Ve zpracování
${Id Contract Subject}              c_subject
${Create Contract File Button}      //button[normalize-space(.)='Vytvoření smluvní složky']
${Delete Contract}                  xpath=//li[@class="cm_item ui-corner-all"]//a[contains(@href, "#contract_delete_file")]
${Create Contract}                  //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Add Partner}                   c_pnumber
${Add Partner1}                     1
${Add Partner2}                     2
${Add Partner3}                     3
${Other Data Path}                  xpath=//a[normalize-space(.)="Další data"]
${Id Add Termination Method}        c_termination_method
${Add Termination Method1}          C
${Add Termination Method2}          B
${Add Termination Method3}          A
${Please Wait}                      please_wait


*** Keywords ***
Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Delete Contract If Exists
    [Arguments]    ${schema_name}
    ${elements}=    Get WebElements    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${schema_name}"]
    ${count}=    Get Length    ${elements}

    WHILE    ${count} > 0
        Delete Contracts    ${schema_name}
        Sleep    0.5s
        ${elements}=    Get WebElements    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${schema_name}"]
        ${count}=    Get Length    ${elements}
    END

Delete Contracts
    [Arguments]    ${schema_name}
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${schema_name}"]
    Click Element    ${Delete Contract Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Delete Contract
    Wait Until Ready    ${Delete Contract Button}
    Click Element    ${Delete Contract Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Create Contract
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Select From List By Label    ${Id Field}    ${Field}
    Select From List By Label    ${Id Confidentiality}    ${Confidentiality}
    Select From List By Label    ${Id Language}    ${Language}
    Input Text    ${Id Contract Subject}    ${Contract Subject Name}

Create Contract1
    Create Contract
    Input Text    ${Id Add Partner}    ${Add Partner1}
    Select From List By Label    ${Id Contract kind}    ${Contract kind1}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Termination Method}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method1}
    Click Button    ${Create Contract File Button}

Create Contract2
    Create Contract
    Input Text    ${Id Add Partner}    ${Add Partner2}
    Select From List By Label    ${Id Contract kind}    ${Contract kind2}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Termination Method}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method2}
    Click Button    ${Create Contract File Button}

Create Contract3
    Create Contract
    Input Text    ${Id Add Partner}    ${Add Partner3}
    Select From List By Label    ${Id Contract kind}    ${Contract kind3}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Termination Method}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method3}
    Click Button    ${Create Contract File Button}

Layout Setup
    Open Browser And Logged In
    Delete Contract If Exists    ${Contract Subject Name}
    Create Contract1
    Create Contract2
    Create Contract3

Layout Select None
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select None Button}
    Click Element    ${Select None Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Select None Button}
    Wait Until Ready    ${Layout Button}
    Element Should Not Be Visible    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]

Layout Select All
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select All Button}
    Click Element    ${Select All Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Select All Button}
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]
    Element Should Be Visible    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]

Unselect Partner
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Partner Button}
    Click Element    ${Partner Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Partner Button}
    Wait Until Ready    ${Layout Button}
    Element Should Not Be Visible    ${Partner}

Select Partner
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Partner Button}
    Click Element    ${Partner Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Partner Button}
    Wait Until Ready    ${Layout Button}
    Element Should Be Visible    ${Partner}

Unselect Kind
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Kind Button}
    Click Element    ${Kind Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Kind Button}
    Wait Until Ready    ${Layout Button}
    Element Should Not Be Visible    ${Kind}

Select Kind
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Kind Button}
    Click Element    ${Kind Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Kind Button}
    Wait Until Ready    ${Layout Button}
    Scroll Element Into View    ${Kind}
    Element Should Be Visible    ${Kind}

Unselect Termination Method
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Termination Method Button}
    Click Element    ${Termination Method Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Termination Method Button}
    Wait Until Ready    ${Layout Button}
    Element Should Not Be Visible    ${Termination Method}

Select Termination Method
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Termination Method Button}
    Click Element    ${Termination Method Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Termination Method Button}
    Wait Until Ready    ${Layout Button}
    Scroll Element Into View    ${Termination Method}
    Element Should Be Visible    ${Termination Method}

Select Partner, Kind And Termination Method
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select None Button}
    Click Element    ${Select None Button}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Partner Button}
    Click Element    ${Partner Button}
    Click Element    ${Kind Button}
    Click Element    ${Termination Method Button}
    Click Element    ${Close Button}

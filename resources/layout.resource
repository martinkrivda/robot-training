*** Settings ***
Documentation       This is a resource file for layout.
...                 Keywords defined here can be used where this "layout.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Library             Collections
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                        //button[normalize-space(text())="Dokončit"]
${Close Button}                         xpath=//button[@title="Close"]
${Delete Button}                        //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                             alert_area
${Alert Message}                        Vyplňte prosím všechna povinná pole!
${Alert Message2}                       Finální znění už existuje.
${Alert Message3}                       Chcete jej nahradit novou verzí?
${Timeout}                              5s
${Timeout2}                             1s
${No}                                   xpath=//button[normalize-space(.)="Ne"]
${Personal Space}                       //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                             //a[@class="main_tabs" and @href="#tab_settings"]
${Id Contract Items}                    settings_pl_items
${Name}                                 dvtest1
${Edited Name}                          dvtestEdited
${Layout Button}                        xpath=//button[contains(@class, "dt-button") and normalize-space(.)="Layout"]
${Select None Button}                   xpath=//input[@type="button" and @value="Zrušit vše"]
${Select All Button}                    xpath=//input[@type="button" and @value="Vybrat vše"]
${Contract Subject Name}                TESTCONRACTDV
${Contract Subject Name2}               CONRACTDVTEST
${Status Button}                        xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Stav"]
${Status}                               xpath=//th[contains(@class, "sorting_asc") and normalize-space(.)="Stav"]
${Updated Button}                       xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Aktualizováno"]
${Updated}                              xpath=//th[contains(@class, "sorting_asc") and normalize-space(.)="Aktualizováno"]
${Number Button}                        xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Číslo"]
${Number}                               xpath=//th[contains(@class, "sorting_asc") and normalize-space(.)="Číslo"]
${Number Partner}                       xpath=//th[normalize-space(.)="Č.sml.partnera"]
${Number Partner Button}                xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Č.sml.partnera"]
${Partner}                              xpath=//th[normalize-space(.)="Partner"]
${Partner Button}                       xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Partner"]
${Partner ID}                           xpath=//th[normalize-space(.)="Partner ID"]
${Partner ID Button}                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Partner ID"]
${Contract Subject}                     xpath=//th[normalize-space(.)="Předmět smlouvy"]
${Contract Subject Button}              xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Předmět smlouvy"]
${Cmt}                                  xpath=//th[normalize-space(.)="Přip.už."]
${Cmt Button}                           xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Přip.už."]
${Field}                                xpath=//th[normalize-space(.)="Oblast"]
${Field Button}                         xpath=(//button[normalize-space(.)="Oblast" and not(ancestor::div[contains(@style,"display: none")])])[1]
${Type}                                 xpath=//th[normalize-space(.)="Typ"]
${Type Button}                          xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Typ"]
${Creator}                              xpath=//th[normalize-space(.)="Pořizovatel"]
${Creator Button}                       xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Pořizovatel"]
${Prim. Resp.}                          xpath=//th[normalize-space(.)="Prim. odp. os."]
${Prim. Resp. Button}                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Prim. odp. os."]
${Sec. Resp.}                           xpath=//th[normalize-space(.)="Sek. odp. os."]
${Sec. Resp. Button}                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Sek. odp. os."]
${Bank Account}                         xpath=//th[normalize-space(.)="Bankovní spojení"]
${Bank Account Button}                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Bankovní spojení"]
${Accountant}                           xpath=//th[normalize-space(.)="Účetní"]
${Accountant Button}                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Účetní"]
${Appl.law}                             xpath=//th[normalize-space(.)="Rozh.právo"]
${Appl.law Button}                      xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Rozh.právo"]
${Bonus}                                xpath=//th[normalize-space(.)="Bonus"]
${Bonus Button}                         xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Bonus"]
${Confidentiality}                      xpath=//th[normalize-space(.)="Stupeň utajení"]
${Confidentiality Button}               xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Stupeň utajení"]
${Contact Person}                       xpath=//th[normalize-space(.)="Kontaktní osoba"]
${Contact Person Button}                xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Kontaktní osoba"]
${Contract Price}                       xpath=//th[normalize-space(.)="Výše plnění"]
${Contract Price Button}                xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Výše plnění"]
${Contract Price Currency}              xpath=//th[normalize-space(.)="Měna plnění"]
${Contract Price Currency Button}       xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Měna plnění"]
${Creation Date}                        xpath=//th[normalize-space(.)="Datum vytvoření"]
${Creation Date Button}                 xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Datum vytvoření"]
${Deposit}                              xpath=//th[normalize-space(.)="Záloha"]
${Deposit Button}                       xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Záloha"]
${Deposit Currency}                     xpath=//th[normalize-space(.)="Záloha měna"]
${Deposit Currency Button}              xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Záloha měna"]
${Deposit Text}                         xpath=//th[normalize-space(.)="Text zálohy"]
${Deposit Text Button}                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Text zálohy"]
${Doc.enclosed}                         xpath=//th[normalize-space(.)="Dok.doložena"]
${Doc.enclosed Button}                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Dok.doložena"]
${Doc.req.}                             xpath=//th[normalize-space(.)="Dok.pož."]
${Doc.req. Button}                      xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Dok.pož."]
${Doc.req.date}                         xpath=//th[normalize-space(.)="Dok.pož.datum"]
${Doc.req.date Button}                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Dok.pož.datum"]
${Effective Date}                       xpath=//th[normalize-space(.)="Datum účinnosti"]
${Effective Date Button}                xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Datum účinnosti"]
${Eff.from sig Date}                    xpath=//th[normalize-space(.)="Účin.od podp."]
${Eff.from sig. Button}                 xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Účin.od podp."]
${Interest}                             xpath=//th[normalize-space(.)="Úrok"]
${Interest Button}                      xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Úrok"]
${Internal Contact}                     xpath=//th[normalize-space(.)="Interní kontakt"]
${Internal Contact Button}              xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Interní kontakt"]
${Int.part.}                            xpath=//th[normalize-space(.)="Int.part."]
${Int.part Button}                      xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Int.part."]
${Invoicing Date}                       xpath=//th[normalize-space(.)="Termín fakturace"]
${Invoicing Date Button}                xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Termín fakturace"]
${Irregular Payment}                    xpath=//th[normalize-space(.)="Platba nepravidelně"]
${Irregular Payment Button}             xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Platba nepravidelně"]
${Kind}                                 xpath=//th[normalize-space(.)="Druh"]
${Kind Button}                          xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Druh"]
${Language}                             xpath=//th[normalize-space(.)="Jazyk smlouvy"]
${Language Button}                      xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Jazyk smlouvy"]
${Lend Date}                            xpath=//th[normalize-space(.)="Datum zapůjčení"]
${Lend Date Button}                     xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Datum zapůjčení"]
${Lend To}                              xpath=//th[normalize-space(.)="Půjčeno komu"]
${Lend To Button}                       xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Půjčeno komu"]
${Maturity 1}                           xpath=//th[normalize-space(.)="Splatnost 1"]
${Maturity 1 Button}                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Splatnost 1"]
${Termination Method}                   xpath=//th[normalize-space(.)="Metoda ukončení"]
${Termination Method Button}            xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Metoda ukončení"]
${Delete Contract Button}               xpath=//div[@id="tbl_menu"]//ul[contains(@class,"cm_personal_tbl")]//a[@href="#contract_delete_file"]
${Id Number Sequence}                   c_number
${Id Contract Status}                   c_status
${Add Field}                            Občanské právo
${Add Confidentiality}                  Přísně tajné
${Contract kind1}                       Kupní smlouva - § 588 - 610
${Contract kind2}                       Nájemní smlouva - § 663 - 723
${Contract kind3}                       Pojistná smlouva - § 788 - 828
${Add Language}                         Čeština
${Id Field}                             c_legalfield
${Id Confidentiality}                   c_confid
${Id Contract kind}                     c_kind
${Number Sequence}                      ISSTEST
${Id Language}                          c_lang
${Value}                                Ve zpracování
${Id Contract Subject}                  c_subject
${Create Contract File Button}          //button[normalize-space(.)='Vytvoření smluvní složky']
${Delete Contract}                      xpath=//li[@class="cm_item ui-corner-all"]//a[contains(@href, "#contract_delete_file")]
${Create Contract}                      //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Add Partner}                       c_pnumber
${Add Partner1}                         1
${Add Partner2}                         2
${Add Partner3}                         3
${Other Data Path}                      xpath=//a[normalize-space(.)="Další data"]
${Id Add Termination Method}            c_termination_method
${Add Termination Method1}              C
${Add Termination Method2}              B
${Add Termination Method3}              A
${Please Wait}                          please_wait
${Search Contract Subject}              s_text_subject


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
    Wait Until Element Is Not Visible    ${Please Wait}
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
    Select From List By Label    ${Id Field}    ${Add Field}
    Select From List By Label    ${Id Confidentiality}    ${Add Confidentiality}
    Select From List By Label    ${Id Language}    ${Add Language}

Create Contract1
    Create Contract
    Input Text    ${Id Contract Subject}    ${Contract Subject Name}
    Input Text    ${Id Add Partner}    ${Add Partner1}
    Select From List By Label    ${Id Contract kind}    ${Contract kind1}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Termination Method}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method1}
    Click Button    ${Create Contract File Button}

Create Contract2
    Wait Until Element Is Not Visible    ${Please Wait}
    Create Contract
    Input Text    ${Id Contract Subject}    ${Contract Subject Name}
    Input Text    ${Id Add Partner}    ${Add Partner2}
    Select From List By Label    ${Id Contract kind}    ${Contract kind2}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Termination Method}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method2}
    Click Button    ${Create Contract File Button}

Create Contract3
    Wait Until Element Is Not Visible    ${Please Wait}
    Create Contract
    Input Text    ${Id Contract Subject}    ${Contract Subject Name}
    Input Text    ${Id Add Partner}    ${Add Partner3}
    Select From List By Label    ${Id Contract kind}    ${Contract kind3}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Termination Method}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method3}
    Click Button    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Please Wait}

Create Contract4
    Wait Until Element Is Not Visible    ${Please Wait}
    Create Contract
    Input Text    ${Id Contract Subject}    ${Contract Subject Name2}
    Input Text    ${Id Add Partner}    ${Add Partner3}
    Select From List By Label    ${Id Contract kind}    ${Contract kind2}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Termination Method}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method1}
    Click Button    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Please Wait}

Delete Test Contracts
    Delete Contract If Exists    ${Contract Subject Name}
    Delete Contract If Exists    ${Contract Subject Name2}

Layout Setup
    Open Browser And Logged In
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select All Button}
    Click Element    ${Select All Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Please Wait}
    Delete Test Contracts
    Create Contract1
    Create Contract2
    Create Contract3
    Create Contract4

Layout Select None
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]
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
    Wait Until Ready    ${Number Partner Button}
    Click Element    ${Number Partner Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Number Partner Button}
    Wait Until Ready    ${Layout Button}
    Element Should Not Be Visible    ${Number Partner}

Select Partner
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Number Partner Button}
    Click Element    ${Number Partner Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Number Partner Button}
    Wait Until Ready    ${Layout Button}
    Element Should Be Visible    ${Number Partner}

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

Select Contract Subject, Partner, Kind And Termination Method
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select None Button}
    Click Element    ${Select None Button}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Contract Subject Button}
    Click Element    ${Contract Subject Button}
    Click Element    ${Number Partner Button}
    Click Element    ${Kind Button}
    Click Element    ${Termination Method Button}
    Click Element    ${Close Button}

Get Numeric Values From Table
    ${elements}=    Get WebElements    xpath=//table[@id='p_all_tbl']//tbody/tr/td[1]
    ${numbers}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        ${num}=    Convert To Integer    ${text}
        Append To List    ${numbers}    ${num}
    END
    RETURN    ${numbers}

Verify Column Sorting - Descending Then Ascending
    Wait Until Ready    ${Number Partner}
    Click Element    ${Number Partner}
    Sleep    1s
    ${descending}=    Get Numeric Values From Table
    ${expected_desc}=    Copy List    ${descending}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${descending}    ${expected_desc}

    Wait Until Ready    ${Number Partner}
    Click Element    ${Number Partner}
    Sleep    1s
    ${ascending}=    Get Numeric Values From Table
    ${expected_asc}=    Copy List    ${ascending}
    Sort List    ${expected_asc}
    Should Be Equal    ${ascending}    ${expected_asc}

Get Column Texts From Table
    [Arguments]    ${column_index}
    ${elements}=    Get WebElements    xpath=//table[@id='p_all_tbl']//tbody/tr/td[${column_index}]
    ${values}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        Append To List    ${values}    ${text}
    END
    RETURN    ${values}

Test Alphabetical Sorting Of Kind Column
    Wait Until Ready    ${Kind}
    Click Element    ${Kind}
    Wait Until Element Is Not Visible    ${Please Wait}
    ${texts_desc}=    Get Column Texts From Table    3
    ${sorted_desc}=    Copy List    ${texts_desc}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Lists Should Be Equal    ${texts_desc}    ${sorted_desc}

    Wait Until Ready    ${Kind}
    Click Element    ${Kind}
    Wait Until Element Is Not Visible    ${Please Wait}
    ${texts_asc}=    Get Column Texts From Table    3
    ${sorted_asc}=    Copy List    ${texts_asc}
    Sort List    ${sorted_asc}
    Lists Should Be Equal    ${texts_asc}    ${sorted_asc}

Test Alphabetical Sorting Of Termination Method Column
    Wait Until Ready    ${Termination Method}
    Click Element    ${Termination Method}
    Wait Until Element Is Not Visible    ${Please Wait}
    ${texts_desc}=    Get Column Texts From Table    4
    ${sorted_desc}=    Copy List    ${texts_desc}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Lists Should Be Equal    ${texts_desc}    ${sorted_desc}

    Wait Until Ready    ${Termination Method}
    Click Element    ${Termination Method}
    Wait Until Element Is Not Visible    ${Please Wait}
    ${texts_asc}=    Get Column Texts From Table    4
    ${sorted_asc}=    Copy List    ${texts_asc}
    Sort List    ${sorted_asc}
    Lists Should Be Equal    ${texts_asc}    ${sorted_asc}

Search Contract Subject
    Wait Until Ready    ${Search Contract Subject}
    Input Text    ${Search Contract Subject}    ${Contract Subject Name}
    Click Element    ${Contract Subject}
    Wait Until Ready    ${Search Contract Subject}
    Wait Until Element Is Not Visible    ${Please Wait}
    Element Should Not Be Visible    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name2}"]

Remove Search
    Wait Until Ready    ${Search Contract Subject}
    Clear Element Text    ${Search Contract Subject}
    Click Element    ${Contract Subject}
    Wait Until Ready    ${Search Contract Subject}
    Wait Until Element Is Not Visible    ${Please Wait}
    Element Should Be Visible    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name2}"]

Select Fields
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select None Button}
    Click Element    ${Select None Button}
    Wait Until Ready    ${Status Button}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Status Button}
    Click Element    ${Status Button}
    Click Element    ${Updated Button}
    Click Element    ${Number Button}
    Click Element    ${Number Partner Button}
    Click Element    ${Partner Button}
    Click Element    ${Partner ID Button}
    Click Element    ${Contract Subject Button}
    Click Element    ${Cmt Button}
    Click Element    ${Field Button}
    Click Element    ${Type Button}
    Click Element    ${Creator Button}
    Click Element    ${Prim. Resp. Button}
    Click Element    ${Sec. Resp. Button}
    Click Element    ${Bank Account Button}
    Click Element    ${Accountant Button}
    Click Element    ${Appl.law Button}
    Click Element    ${Bonus Button}
    Click Element    ${Confidentiality Button}
    Click Element    ${Contact Person Button}
    Click Element    ${Contract Price Button}
    Click Element    ${Contract Price Currency Button}
    Click Element    ${Creation Date Button}
    Click Element    ${Deposit Button}
    Click Element    ${Deposit Currency Button}
    Click Element    ${Deposit Text Button}
    Click Element    ${Doc.enclosed Button}
    Click Element    ${Doc.req. Button}
    Click Element    ${Doc.req.date Button}
    Click Element    ${Effective Date Button}
    Click Element    ${Eff.from sig. Button}
    Click Element    ${Interest Button}
    Click Element    ${Internal Contact Button}
    Click Element    ${Int.part Button}
    Click Element    ${Invoicing Date Button}
    Click Element    ${Irregular Payment Button}
    Click Element    ${Kind Button}
    Click Element    ${Language Button}
    Click Element    ${Lend Date Button}
    Click Element    ${Lend To Button}
    Click Element    ${Maturity 1 Button}
    Sleep    3

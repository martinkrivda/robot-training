*** Settings ***
Documentation       This is a resource file for dependencies.
...                 Keywords defined here can be used where this "dependencies.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                            //button[normalize-space(text())="Dokončit"]
${Close Button}                             xpath=//button[@title="Close"]
${Delete Button}                            //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                 alert_area
${Alert Message}                            Vyplňte prosím všechna povinná pole!
${Timeout}                                  5s
${Personal Space}                           //a[@class="main_tabs" and @href="#tab_personal"]
${Id Administration and Configuration}      admin_config
${Settings}                                 //a[@class="main_tabs" and @href="#tab_settings"]
${Id Dependencies}                          settings_custom_dependencies
${Id Master Field Add Button}               ts_add_dep_master_btn
${Id Select Master Field}                   s_master_field
${Master Field}                             Stav smlouvy
${Master Field2}                            Oblast
${Value Name}                               name=s_from
${Value}                                    Ve zpracování
${Value2}                                   Občanské právo
${Id Slave Field Add Button}                ts_add_dep_slave_btn
${Id Select Slave Field}                    s_slave_field
${Slave Field}                              Primárně odp. osoba
${Slave Field2}                             Typ smlouvy
${Optional}                                 //label[@for="s_optional"]
${Required}                                 //label[@for="s_required"]
${Id Master Field Edit Button}              ts_edit_dep_master_btn
${Id Slave Field Edit Button}               ts_edit_dep_slave_btn
# ${Id Applicable Law}    c_appl_law
${Id Primary Person}                        c_primary
# ${Applicable Law}    České
${Id Number Sequence}                       c_number
${Create Contract}                          //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Contract Status}                       c_status
${Field}                                    Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                          Přísně tajné
${Contract kind}                            Smlouva o úvěru - § 497 - 507
${Language}                                 Čeština
${Id Field}                                 c_legalfield
${Id Confidentiality}                       c_confid
${Id Contract kind}                         c_kind
${Id Type}                                  c_type
${Id Partner}                               c_partner
${Partner Test}                             test
${Partner List}                             xpath://ul[contains(@class, 'ui-autocomplete')]/li[1]
${Checkbox Valid Until}                     c_valid_indefinite
${Acc Area Button}                          c_acc_area_btn
${Get SAP Data Dialog}                      get_sap_data_dialog
${Acc Area Field}                           s_bukrs
${SAP Search Button}                        sap_search_btn
${Acc Area Name}                            SAP A.G.
${SAP Search OK Button}                     //button[normalize-space(.)='OK']
${Number Sequence}                          ISSTEST
${Id Language}                              c_lang
${Create Contract File Button}              //button[normalize-space(.)='Vytvoření smluvní složky']
${Id Contract Subject}                      c_subject
${Contract Subject}                         TESTCONRACTDV
${Delete Contract}                          //a[@class="ui-corner-all" and @href="#contract_delete_file"]
${Contract Name Detail}                     //a[@id="tab_contract_contract"]
${Id Slave Field Delete Button}             ts_del_dep_slave_btn
${Id Master Field Delete Button}            ts_del_dep_master_btn
${Please Wait}                              please_wait


*** Keywords ***
Go To Settings
    Click Element    ${Settings}

Click On Administration
    Wait Until Ready    ${Id Administration and Configuration}
    Click Element    ${Id Administration and Configuration}

Click On Dependencies
    Wait Until Ready    ${Id Dependencies}
    Click Element    ${Id Dependencies}

Go To Dependencies
    Go To Settings
    Click On Administration
    Click On Dependencies

Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Dependencies Setup
    Open Browser And Logged In
    Go To Dependencies

Add Master Field
    Wait Until Ready    ${Id Master Field Add Button}
    Click Button    ${Id Master Field Add Button}
    Wait Until Ready    ${Id Select Master Field}
    Select From List By Label    ${Id Select Master Field}    ${Master Field2}
    Wait Until Ready    ${Value Name}
    Select From List By Index    ${Value Name}    1
    Click Element    ${Finish Button}

Edit Master Field
    Wait Until Ready    //*[@id="ts_dep_masters_tbl"]//td[text()="${Value2}"]
    Click Element    //*[@id="ts_dep_masters_tbl"]//td[text()="${Value2}"]
    Click Button    ${Id Master Field Edit Button}
    Wait Until Ready    ${Id Select Master Field}
    Select From List By Label    ${Id Select Master Field}    ${Master Field}
    Wait Until Ready    ${Value Name}
    Select From List By Label    ${Value Name}    ${Value}
    Click Element    ${Finish Button}

Delete Master Field
    Wait Until Ready    //*[@id="ts_dep_masters_tbl"]//td[text()="${Value}"]
    Click Element    //*[@id="ts_dep_masters_tbl"]//td[text()="${Value}"]
    Click Button    ${Id Master Field Delete Button}
    Wait Until Ready    ${Delete Button}
    Click Element    ${Delete Button}

Add Slave Field
    Wait Until Ready    //*[@id="ts_dep_masters_tbl"]//td[text()="${Value2}"]
    Click Element    //*[@id="ts_dep_masters_tbl"]//td[text()="${Value2}"]
    Click Button    ${Id Slave Field Add Button}
    Wait Until Ready    ${Id Select Slave Field}
    Select From List By Label    ${Id Select Slave Field}    ${Slave Field2}
    Click Element    ${Optional}
    Click Element    ${Finish Button}

Edit Slave Field
    Wait Until Ready    //*[@id="ts_dep_masters_tbl"]//td[text()="${Value}"]
    Click Element    //*[@id="ts_dep_masters_tbl"]//td[text()="${Value}"]
    Wait Until Ready    //*[@id="ts_dep_slaves_tbl"]//td[text()="${Slave Field2}"]
    Click Element    //*[@id="ts_dep_slaves_tbl"]//td[text()="${Slave Field2}"]
    Click Button    ${Id Slave Field Edit Button}
    Wait Until Ready    ${Id Select Slave Field}
    Select From List By Label    ${Id Select Slave Field}    ${Slave Field}
    Click Element    ${Required}
    Click Element    ${Finish Button}

Delete Slave Field
    Wait Until Ready    //*[@id="ts_dep_masters_tbl"]//td[text()="${Value}"]
    Click Element    //*[@id="ts_dep_masters_tbl"]//td[text()="${Value}"]
    Wait Until Ready    //*[@id="ts_dep_slaves_tbl"]//td[text()="${Slave Field}"]
    Click Element    //*[@id="ts_dep_slaves_tbl"]//td[text()="${Slave Field}"]
    Click Button    ${Id Slave Field Delete Button}
    Wait Until Ready    ${Delete Button}
    Click Element    ${Delete Button}

Check If Primary Person Is Optional
    Wait Until Ready    ${Id Master Field Add Button}
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    ${class}=    Get Element Attribute    ${Id Primary Person}    class
    Should Not Match    ${class}    required

Check If Primary Person Is Required
    Select From List By Label    ${Id Contract Status}    ${Value}
    ${class}=    Get Element Attribute    ${Id Primary Person}    class
    Should Match    ${class}    required

Try To Create Contract Without Required Primary Person
    Fill In Required Fields
    Click Button    ${Create Contract File Button}
    Element Should Be Visible    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Element    ${Close Button}

Fill In Required Fields
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Index    ${Id Number Sequence}    1
    Select From List By Index    ${Id Field}    1
    Select From List By Index    ${Id Confidentiality}    1
    Select From List By Index    ${Id Contract kind}    1
    Select From List By Index    ${Id Language}    1
    Select From List By Index    ${Id Type}    1
    Select From List By Label    ${Id Contract Status}    ${Value}
    Click Element    ${Checkbox Valid Until}
    Click Element    ${Acc Area Button}
    Wait Until Ready    ${Get SAP Data Dialog}
    Input Text    ${Acc Area Field}    1
    Click Element    ${SAP Search Button}
    Wait Until Ready    xpath=//table[@id="sap_search_results_tbl"]//td[normalize-space(.)="${Acc Area Name}"]
    Click Element    xpath=//table[@id="sap_search_results_tbl"]//td[normalize-space(.)="${Acc Area Name}"]
    Click Button    ${SAP Search OK Button}
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Input Text    ${Id Partner}    ${Partner Test}
    Wait Until Ready    ${Partner List}
    Click Element    ${Partner List}

Create Contract With All Required
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Fill In Required Fields
    Select From List By Label    ${Id Primary Person}    Admin, Adam
    Click Button    ${Create Contract File Button}

Delete Contract
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Element Is Not Visible    ${Please Wait}
    Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Wait Until Ready    ${Delete Contract}
    Click Element    ${Delete Contract}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Delete Dependencies
    Go To Settings
    Delete Slave Field
    Delete Master Field

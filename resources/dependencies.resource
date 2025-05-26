*** Settings ***
Documentation       This is a resource file for dependencies.
...                 Keywords defined here can be used where this "dependencies.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                                                //button[normalize-space(text())="Dokončit"]
${Close Button}                                                 //span[contains(@class, "ui-icon-closethick")]/..
${Delete Button}                                                //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                                     alert_area
${Alert Message}                                                Vyplňte prosím všechna povinná pole!
${Timeout}                                                      5s
${Personal Space}                                               //a[@class="main_tabs" and @href="#tab_personal"]
${Id Administration and Configuration}                          admin_config
${Settings}                                                     //a[@class="main_tabs" and @href="#tab_settings"]
${Id Dependencies}                                              settings_custom_dependencies
${Id Master Field Add Button}                                   ts_add_dep_master_btn
${Id Select Master Field}                                       s_master_field
${Master Field}                                                 Stav smlouvy
${Master Field2}                                                Oblast
${Value Name}                                                   name=s_from
${Value}                                                        Ve zpracování
${Value2}                                                       Občanské právo
${Id Slave Field Add Button}                                    ts_add_dep_slave_btn
${Id Select Slave Field}                                        s_slave_field
${Slave Field}                                                  Rozhodné právo
${Slave Field2}                                                 Typ smlouvy
${Optional}                                                     //label[@for="s_optional"]
${Required}                                                     //label[@for="s_required"]
${Id Master Field Edit Button}                                  ts_edit_dep_master_btn
${Id Slave Field Edit Button}                                   ts_edit_dep_slave_btn
${Id Applicable Law}                                            c_appl_law
${Id Number Sequence}                                           c_number
${Create Contract}                                              //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Contract Status}                                           c_status


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
    Select From List By Label    ${Value Name}    ${Value2}
    Click Element    ${Finish Button}

Edit Master Field
    Wait Until Ready    //tr[td[text()="${Value2}"]]
    Click Element    //tr[td[text()="${Value2}"]]
    Click Button    ${Id Master Field Edit Button}
    Wait Until Ready    ${Id Select Master Field}
    Select From List By Label    ${Id Select Master Field}    ${Master Field}
    Wait Until Ready    ${Value Name}
    Select From List By Label    ${Value Name}    ${Value}
    Click Element    ${Finish Button}

# Delete Master Field

Add Slave Field
    Wait Until Ready    //tr[td[text()="${Value2}"]]
    Click Element    //tr[td[text()="${Value2}"]]
    Click Button    ${Id Slave Field Add Button}
    Wait Until Ready    ${Id Select Slave Field}
    Select From List By Label    ${Id Select Slave Field}    ${Slave Field2}
    Click Element    ${Optional}
    Click Element    ${Finish Button}

Edit Slave Field
    Wait Until Ready    //tr[td[text()="${Value}"]]
    Click Element    //tr[td[text()="${Value}"]]
    Wait Until Ready    xpath=//tr[td[text()="${Slave Field2}"]]/td[2]
    Click Element    xpath=//tr[td[text()="${Slave Field2}"]]/td[2]
    Click Button    ${Id Slave Field Edit Button}
    Wait Until Ready    ${Id Select Slave Field}
    Select From List By Label    ${Id Select Slave Field}    ${Slave Field}
    Click Element    ${Required}
    Click Element    ${Finish Button}

# Delete Slave Field

Check If Applicable Law Is Optional
    Wait Until Ready    ${Id Master Field Add Button}
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    ${class}=    Get Element Attribute    ${Id Applicable Law}    class
    Should Not Contain    ${class}    required

Check If Applicable Law Is Required
    Select From List By Label    ${Id Contract Status}    ${Value}
    ${class}=    Get Element Attribute    ${Id Applicable Law}    class
    Should Contain    ${class}    required

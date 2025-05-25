*** Settings ***
Documentation       This is a resource file for fields.
...                 Keywords defined here can be used where this "fields.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                                                //button[normalize-space(text())="Dokončit"]
${Id Administration and Configuration}                          admin_config
${Delete Button}                                                //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                                     alert_area
${Alert Message}                                                Vyplňte prosím všechna povinná pole!
${Timeout}                                                      5s
${Id Fields}                                                    settings_custom_fields
${Id Fields Edit Button}                                        ts_edit_custom_fields_btn
${Field Name}                                                   //tr[td[normalize-space(.)="Číslo výb.řízení"]]/td[1]
${Contract creation1}                                           //label[@for="s_required"]
${Contract creation2}                                           //label[@for="s_optional"]
${Sign-off1}                                                    //label[@for="s_sorequired"]
${Sign-off2}                                                    //label[@for="s_sooptional"]
${Visibility1}                                                  //label[@for="s_visible"]
${Visibility2}                                                  //label[@for="s_invisible"]
${Data source1}                                                 //label[@for="s_source_csm"]
${Data source2}                                                 //label[@for="s_source_sap"]
${Value from SAP1}                                              //label[@for="s_editable"]
${Value from SAP2}                                              //label[@for="s_readonly"]
${Id Tender Number}                                             c_tender_number
${Tender Number}                                                1234
${Create Contract}                                              //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Number Sequence}                                           c_number
${Close Button}                                                 //span[contains(@class, "ui-icon-closethick")]/..
${Personal Space}                                               //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                                                     //a[@class="main_tabs" and @href="#tab_settings"]
${Id Field}                                                     c_legalfield
${Id Confidentiality}                                           c_confid
${Id Contract kind}                                             c_kind
${Id Language}                                                  c_lang
${Create Contract File Button}                                  //button[normalize-space(.)='Vytvoření smluvní složky']
${Number Sequence}                                              ISSTEST
${Field}                                                        Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                                              Přísně tajné
${Contract kind}                                                Smlouva o úvěru - § 497 - 507
${Language}                                                     Čeština
${Id Contract Subject}                                          c_subject
${Contract Subject}                                             TESTCONRACTDV
${Delete Contract}                                              //a[@class="ui-corner-all" and @href="#contract_delete_file"]
${Contract Name Detail}                                         //a[@id="tab_contract_contract"]
${Item Field Name}                                              //tr[td[1][normalize-space()='Balení']]
${Contract Items}                                               //a[@href='#tc_contract_items' and contains(@class, 'sub_tabs')]
${Id Add Item Button}                                           tc_add_item_btn
${Id Packing}                                                   c_packing
${Id Unit Price}                                                c_unit_price
${Id Commodity/service}                                         c_commodity
${Commodity/service}                                            Doprava
${Unit Price}                                                   1568


*** Keywords ***
Go To Settings
    Click Element    ${Settings}

Click On Administration
    Wait Until Ready    ${Id Administration and Configuration}
    Click Element    ${Id Administration and Configuration}

Click On Fields
    Wait Until Ready    ${Id Fields}
    Click Element    ${Id Fields}

Go To Fields
    Go To Settings
    Click On Administration
    Click On Fields

Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Check If Tender Number Is Not Visible
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Element Should Not Be Visible    ${Id Tender Number}
    Click Element    ${Close Button}

Edit Fields
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation1}
    Click Element    ${Contract creation1}
    Click Element    ${Contract creation2}
    Click Element    ${Sign-off1}
    Click Element    ${Sign-off2}
    Click Element    ${Visibility1}
    Click Element    ${Visibility2}
    Click Element    ${Data source2}
    Click Element    ${Data source1}
    Click Element    ${Value from SAP1}
    Click Element    ${Value from SAP2}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}

Check If Tender Number Is Visible
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Element Should Be Visible    ${Id Tender Number}

Check If Tender Number Is Optional
    ${class}=    Get Element Attribute    ${Id Tender Number}    class
    Should Not Contain    ${class}    required
    Click Element    ${Close Button}

Add Required To Tender Number
    Go To Settings
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation1}
    Click Element    ${Contract creation1}
    Click Element    ${Finish Button}

Check If Tender Number Is Required
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    ${class}=    Get Element Attribute    ${Id Tender Number}    class
    Should Contain    ${class}    required

Field Setup
    Open Browser And Logged In
    Check If Tender Number Is Not Visible
    Go To Fields

Edit Field Back To Normal
    Go To Settings
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation2}
    Click Element    ${Contract creation2}
    Click Element    ${Sign-off2}
    Click Element    ${Visibility2}
    Click Element    ${Data source1}
    Click Element    ${Value from SAP2}
    Click Element    ${Finish Button}

Fill In Required Fields
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Select From List By Label    ${Id Field}    ${Field}
    Select From List By Label    ${Id Confidentiality}    ${Confidentiality}
    Select From List By Label    ${Id Contract kind}    ${Contract kind}
    Select From List By Label    ${Id Language}    ${Language}

Try To Create Contract Without Required Tender Number
    Fill In Required Fields
    Click Button    ${Create Contract File Button}
    Element Should Be Visible       ${Id Alert}
    Element Text Should Be          ${Id Alert}    ${Alert Message}
    Click Element    ${Close Button}

Create Contract With All Required
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Fill In Required Fields
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Input Text    ${Id Tender Number}    ${Tender Number}
    Click Button    ${Create Contract File Button}

Delete Contract
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Click Element    ${Delete Contract}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Edit Item Fields
    Go To Settings
    Wait Until Ready    ${Item Field Name}
    Click Element    ${Item Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}

Check If Packing Is Not Visible
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    Element Should Not Be Visible    ${Id Packing}
    Click Element    ${Close Button}

Check If Packing Is Visible
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    Element Should Be Visible    ${Id Packing}

Check If Packing Is Optional
    ${class}=    Get Element Attribute    ${Id Packing}    class
    Should Not Contain    ${class}    required
    Click Element    ${Close Button}

Add Required To Packing
    Go To Settings
    Wait Until Ready    ${Item Field Name}
    Click Element    ${Item Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation1}
    Click Element    ${Contract creation1}
    Click Element    ${Finish Button}

Check If Packing Is Required
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    //tr[td[contains(., "${Contract Subject}")]]
    Double Click Element    //tr[td[contains(., "${Contract Subject}")]]
    Wait Until Ready    ${Contract Name Detail}
    Element Should Contain    ${Contract Name Detail}    ${Contract Subject}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    ${class}=    Get Element Attribute    ${Id Packing}    class
    Should Contain    ${class}    required

Try To Create Contract Item Without Required Packing
    Select From List By Label    ${Id Commodity/service}    ${Commodity/service}
    Input Text    ${Id Unit Price}    ${Unit Price}
    Click Element    ${Finish Button}
    Element Should Be Visible       ${Id Alert}
    Element Text Should Be          ${Id Alert}    ${Alert Message}
    Click Element    ${Close Button}

Edit Item Field Back To Normal
    Go To Settings
    Wait Until Ready    ${Item Field Name}
    Click Element    ${Item Field Name}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Contract creation2}
    Click Element    ${Contract creation2}
    Click Element    ${Sign-off2}
    Click Element    ${Visibility2}
    Click Element    ${Data source1}
    Click Element    ${Value from SAP2}
    Click Element    ${Finish Button}

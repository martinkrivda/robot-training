*** Settings ***
Documentation       This is a resource file for contract items.
...                 Keywords defined here can be used where this "contract_items.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                                //button[normalize-space(text())="Dokončit"]
${Close Button}                                 xpath=//button[@title="Close"]
${Delete Button}                                //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                     alert_area
${Alert Message}                                Vyplňte prosím všechna povinná pole!
${Timeout}                                      5s
${Timeout2}                                     1s
${Personal Space}                               //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                                     //a[@class="main_tabs" and @href="#tab_settings"]
${Id Contract Items}                            settings_pl_items
${Name}                                         dvtest1
${Edited Name}                                  dvtestEdited
${Id Commodity/service}                         settings_contract_items
${Id Edit Commodity/service Button}             ts_edit_contract_items_btn
${Id Add Commodity/service Button}              ts_add_contract_items_btn
${Id Add Commodity/service}                     c_commodity
${Id Number Sequence}                           c_number
${Id Contract Status}                           c_status
${Field}                                        Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                              Přísně tajné
${Contract kind}                                Smlouva o úvěru - § 497 - 507
${Language}                                     Čeština
${Id Field}                                     c_legalfield
${Id Confidentiality}                           c_confid
${Id Contract kind}                             c_kind
${Number Sequence}                              ISSTEST
${Id Language}                                  c_lang
${Value}                                        Ve zpracování
${Id Contract Subject}                          c_subject
${Contract Subject}                             TESTCONRACTDV
${Create Contract File Button}                  //button[normalize-space(.)='Vytvoření smluvní složky']
${Delete Contract}                              xpath=//li[@class="cm_item ui-corner-all"]//a[contains(@href, "#contract_delete_file")]
${Create Contract}                              //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Add Field1}                                s_field1
${Id Add Field2}                                s_field2
${Id Add Field3}                                s_field3
${Checkbox}                                     xpath=//input[@type='checkbox' and @id='s_disabled']
${Please Wait}                                  please_wait
${Id Add Document Button}                       tc_add_document_btn
${Contract Items}                               xpath=//a[@href="#tc_contract_items" and contains(@class, "sub_tabs")]
${Id Add Item Button}                           tc_add_item_btn
${Id Unit Price}                                c_unit_price
${Unit Price}                                   1,69
${Id Item type}                                 settings_item_type
${Id Edit Item type Button}                     ts_edit_item_type_btn
${Id Add Item type Button}                      ts_add_item_type_btn
${Id Add Item type}                             c_item_type
${Id Administration and Configuration}          admin_config
${Id Fields}                                    settings_custom_fields
${Field Name}                                   //tr[td[normalize-space(.)='Typ položky']]
${Field Name2}                                  //tr[td[normalize-space(.)='Typ přiřazení účtu']]
${Field Name3}                                  xpath=//tr[td[normalize-space(.)="Incoterms"] and td[normalize-space(.)="Položka"]]
${Field Name4}                                  //tr[td[normalize-space(.)='Závod']]
${Field Name5}                                  //tr[td[normalize-space(.)='Sklad']]
${Field Name6}                                  //tr[td[normalize-space(.)='Šarže']]
${Field Name7}                                  //tr[td[normalize-space(.)='Obor']]
${Field Name8}                                  //tr[td[normalize-space(.)='Expediční středisko']]
${Field Name9}                                  //tr[td[normalize-space(.)='Balení']]
${Field Name10}                                 //tr[td[normalize-space(.)='Druh prostředku']]
${Field Name11}                                 //tr[td[normalize-space(.)='Znak DPH']]
${Field Name12}                                 //tr[td[normalize-space(.)='Typ ocenění']]
${Visibility1}                                  //label[@for="s_visible"]
${Visibility2}                                  //label[@for="s_invisible"]
${Id Fields Edit Button}                        ts_edit_custom_fields_btn
${Id Proposal lists}                            ui-id-14
${Name2}                                        DV
${Edited Name2}                                 DVE
${Name3}                                        DVE dvtestEdited
${Edited Name3}                                 V dvtestEdited
${Name4}                                        D
${Edited Name4}                                 V
${Name5}                                        00002 dvtestEdited
${Number}                                       00001
${Edited Number}                                00002
${Name6}                                        00DV
${Id Account Assignment Type}                   settings_item_acc_ass_type
${Id Edit Account Assignment Type Button}       ts_edit_item_acc_ass_type_btn
${Id Add Account Assignment Type Button}        ts_add_item_acc_ass_type_btn
${Id Add Account Assignment Type}               c_acc_ass_type
${Id Incoterms}                                 settings_item_incoterms
${Id Edit Incoterms Button}                     ts_edit_item_incoterms_btn
${Id Add Incoterms Button}                      ts_add_item_incoterms_btn
${Id Add Incoterms}                             c_incoterms
${Id Plant}                                     settings_item_plant
${Id Edit Plant Button}                         ts_edit_item_plant_btn
${Id Add Plant Button}                          ts_add_item_plant_btn
${Id Add Plant}                                 c_plant
${Id Store}                                     settings_item_store
${Id Edit Store Button}                         ts_edit_item_store_btn
${Id Add Store Button}                          ts_add_item_store_btn
${Id Add Store}                                 c_store
${Id Batch}                                     settings_item_batch
${Id Edit Batch Button}                         ts_edit_item_batch_btn
${Id Add Batch Button}                          ts_add_item_batch_btn
${Id Add Batch}                                 c_batch
${Id Division}                                  settings_item_division
${Id Edit Division Button}                      ts_edit_item_division_btn
${Id Add Division Button}                       ts_add_item_division_btn
${Id Add Division}                              c_division
${Id Expedition Center}                         settings_item_expcenter
${Id Edit Expedition Center Button}             ts_edit_item_expcenter_btn
${Id Add Expedition Center Button}              ts_add_item_expcenter_btn
${Id Add Expedition Center}                     c_expcenter
${Id Packing}                                   settings_item_packing
${Id Edit Packing Button}                       ts_edit_item_packing_btn
${Id Add Packing Button}                        ts_add_item_packing_btn
${Id Add Packing}                               c_packing
${Id Resource kind}                             settings_item_restype
${Id Edit Resource kind Button}                 ts_edit_item_restype_btn
${Id Add Resource kind Button}                  ts_add_item_restype_btn
${Id Add Resource kind}                         c_restype
${Id VAT Sign}                                  settings_item_vatsign
${Id Edit VAT Sign Button}                      ts_edit_item_vatsign_btn
${Id Add VAT Sign Button}                       ts_add_item_vatsign_btn
${Id Add VAT Sign}                              c_vatsign
${Id Pricing Type}                              settings_item_pricing
${Id Edit Pricing Type Button}                  ts_edit_item_pricing_btn
${Id Add Pricing Type Button}                   ts_add_item_pricing_btn
${Id Add Pricing Type}                          c_pricetype
${Id Currency}                                  settings_currency
${Id Edit Currency Button}                      ts_edit_currency_btn
${Id Add Currency Button}                       ts_add_currency_btn
${Id Add Currency}                              c_currency
${Id Unit}                                      settings_unit
${Id Edit Unit Button}                          ts_edit_unit_btn
${Id Add Unit Button}                           ts_add_unit_btn
${Id Add Unit}                                  c_unit
${Id Order}                                     settings_orders
${Id Edit Order Button}                         ts_edit_order_btn
${Id Add Order Button}                          ts_add_order_btn
${Id Delete Order Button}                       ts_del_order_btn
${Id Add Order}                                 c_order
${Id Create Order}                              s_order
${Id Create Order Description}                  s_order_desc
${Id Location}                                  settings_location
${Id Edit Location Button}                      ts_edit_location_btn
${Id Add Location Button}                       ts_add_location_btn
${Id Add Location}                              c_location_id
${Id Maturity}                                  settings_maturity
${Id Edit Maturity Button}                      ts_edit_maturity_btn
${Id Add Maturity Button}                       ts_add_maturity_btn
${Id Add Maturity}                              c_maturity
${Id Create Maturity}                           s_maturity
${Id Create Maturity Description}               s_description


*** Keywords ***
Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Go To Settings
    Wait Until Ready    ${Settings}
    Click Element    ${Settings}

Go To Fields
    Go To Settings
    Click On Administration
    Wait Until Ready    ${Id Fields}
    Click Element    ${Id Fields}

Click On Administration
    Wait Until Ready    ${Id Administration and Configuration}
    Click Element    ${Id Administration and Configuration}

Contract Items Setup
    Open Browser And Logged In
    Go To Fields
    Set Fields Visible
    Click Element    ${Id Proposal lists}
    Wait Until Ready    ${Id Contract Items}
    Click Element    ${Id Contract Items}

Set Item Type Visible
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Account Assignment Type Visible
    Wait Until Ready    ${Field Name2}
    Click Element    ${Field Name2}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Incoterms Visible
    Wait Until Ready    ${Field Name3}
    Click Element    ${Field Name3}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Plant Visible
    Wait Until Ready    ${Field Name4}
    Click Element    ${Field Name4}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Store Visible
    Wait Until Ready    ${Field Name5}
    Click Element    ${Field Name5}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Batch Visible
    Wait Until Ready    ${Field Name6}
    Click Element    ${Field Name6}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Divison Visible
    Wait Until Ready    ${Field Name7}
    Click Element    ${Field Name7}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Expedition Center Visible
    Wait Until Ready    ${Field Name8}
    Click Element    ${Field Name8}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Packing Back Visible
    Wait Until Ready    ${Field Name9}
    Click Element    ${Field Name9}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Resource kind Visible
    Wait Until Ready    ${Field Name10}
    Click Element    ${Field Name10}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set VAT Sign Visible
    Wait Until Ready    ${Field Name11}
    Click Element    ${Field Name11}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Pricing Type Visible
    Wait Until Ready    ${Field Name12}
    Click Element    ${Field Name12}
    Wait Until Ready    ${Id Fields Edit Button}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Item Type Back To Invisible
    Wait Until Ready    ${Field Name}
    Click Element    ${Field Name}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Fields Edit Button}

Set Account Assignment Type Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name2}
    Click Element    ${Field Name2}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Incoterms Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name3}
    Click Element    ${Field Name3}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Plant Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name4}
    Click Element    ${Field Name4}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Store Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name5}
    Click Element    ${Field Name5}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Batch Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name6}
    Click Element    ${Field Name6}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Divison Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name7}
    Click Element    ${Field Name7}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Expedition Center Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name8}
    Click Element    ${Field Name8}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Packing Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name9}
    Click Element    ${Field Name9}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Resource kind Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name10}
    Click Element    ${Field Name10}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set VAT Sign Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name11}
    Click Element    ${Field Name11}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Pricing Type Back To Invisible
    Wait Until Element Is Not Visible    ${Visibility2}
    Wait Until Ready    ${Field Name12}
    Click Element    ${Field Name12}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Set Fields Visible
    Set Item Type Visible
    Set Account Assignment Type Visible
    Set Incoterms Visible
    Set Plant Visible
    Set Store Visible
    Set Batch Visible
    Set Divison Visible
    Set Expedition Center Visible
    Set Packing Back Visible
    Set Resource kind Visible
    Set VAT Sign Visible
    Set Pricing Type Visible

Set Fields Back To Invisible
    Set Item Type Back To Invisible
    Set Account Assignment Type Back To Invisible
    Set Incoterms Back To Invisible
    Set Plant Back To Invisible
    Set Store Back To Invisible
    Set Batch Back To Invisible
    Set Divison Back To Invisible
    Set Expedition Center Back To Invisible
    Set Packing Back To Invisible
    Set Resource kind Back To Invisible
    Set VAT Sign Back To Invisible
    Set Pricing Type Back To Invisible

Create Contract
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Select From List By Label    ${Id Field}    ${Field}
    Select From List By Label    ${Id Confidentiality}    ${Confidentiality}
    Select From List By Label    ${Id Contract kind}    ${Contract kind}
    Select From List By Label    ${Id Language}    ${Language}
    Select From List By Label    ${Id Contract Status}    ${Value}
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Click Button    ${Create Contract File Button}

Check Created Items
    Create Contract
    Wait Until Element Is Not Visible    ${Id Number Sequence}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Create Contract}
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Double Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    Input Text    ${Id Unit Price}    ${Unit Price}
    Select Created Items
    Click Element    ${Finish Button}

Select Created Items
    Select From List By Label    ${Id Add Commodity/service}    ${Edited Name}
    Select From List By Label    ${Id Add Item type}    ${Name3}
    Select From List By Label    ${Id Add Account Assignment Type}    ${Edited Name3}
    Select From List By Label    ${Id Add Incoterms}    ${Name3}
    Select From List By Label    ${Id Add Plant}    ${Name3}
    Select From List By Label    ${Id Add Store}    ${Name3}
    Select From List By Label    ${Id Add Batch}    ${Name3}
    Select From List By Label    ${Id Add Division}    ${Name3}
    Select From List By Label    ${Id Add Expedition Center}    ${Name3}
    Select From List By Label    ${Id Add Packing}    ${Name3}
    Select From List By Label    ${Id Add Resource kind}    ${Name3}
    Select From List By Label    ${Id Add VAT Sign}    ${Name3}
    Select From List By Label    ${Id Add Pricing Type}    ${Name3}
    Select From List By Label    ${Id Add Currency}    ${Edited Name2}
    Select From List By Label    ${Id Add Unit}    ${Edited Name2}
    Select From List By Label    ${Id Add Order}    ${Name5}
    Select From List By Label    ${Id Add Location}    ${Edited Name}
    Select From List By Label    ${Id Add Maturity}    ${Edited Name}

Delete Contract
    Wait Until Element Is Not Visible    ${Id Add Commodity/service}
    Wait Until Ready    ${Id Add Item Button}
    Wait Until Ready    ${Delete Contract}
    Click Element    ${Delete Contract}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Go To Commodity/service
    Wait Until Ready    ${Id Commodity/service}
    Click Element    ${Id Commodity/service}
    Wait Until Ready    ${Id Add Commodity/service Button}

Enable Commodity/service
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Commodity/service Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Commodity/service
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Commodity/service    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Commodity/service    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Commodity/service
    END

Add Commodity/service
    Wait Until Ready    ${Id Add Commodity/service Button}
    Click Button    ${Id Add Commodity/service Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]

Edit Commodity/service
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Commodity/service Button}
    Click Button    ${Id Edit Commodity/service Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Commodity/service
    Go To Settings
    Go To Commodity/service
    Wait Until Ready    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_contract_items_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Commodity/service Button}
    Click Button    ${Id Edit Commodity/service Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Item type
    Wait Until Ready    ${Id Item type}
    Click Element    ${Id Item type}
    Wait Until Ready    ${Id Add Item type Button}

Enable Item type
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Item type
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Item type    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Item type    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Item type

Add Item type
    Wait Until Ready    ${Id Add Item type Button}
    Click Button    ${Id Add Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]

Edit Item type
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Item type Button}
    Click Button    ${Id Edit Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Item type
    Go To Item type
    Wait Until Ready    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Item type Button}
    Click Button    ${Id Edit Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Account Assignment Type
    Wait Until Ready    ${Id Account Assignment Type}
    Click Element    ${Id Account Assignment Type}
    Wait Until Ready    ${Id Add Account Assignment Type Button}

Enable Account Assignment Type
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Account Assignment Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name4}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Account Assignment Type
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Account Assignment Type
        ...    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Account Assignment Type
        ...    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Account Assignment Type
    END

Add Account Assignment Type
    Wait Until Ready    ${Id Add Account Assignment Type Button}
    Click Button    ${Id Add Account Assignment Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name4}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]

Edit Account Assignment Type
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Account Assignment Type Button}
    Click Button    ${Id Edit Account Assignment Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name4}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Account Assignment Type
    Go To Account Assignment Type
    Wait Until Ready    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_acc_ass_type_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Account Assignment Type Button}
    Click Button    ${Id Edit Account Assignment Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name4}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Incoterms
    Wait Until Ready    ${Id Incoterms}
    Click Element    ${Id Incoterms}
    Wait Until Ready    ${Id Add Incoterms Button}

Enable Incoterms
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Incoterms Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Incoterms
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_incoterms_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_incoterms_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Incoterms
        ...    xpath=//table[@id="ts_item_incoterms_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Incoterms
        ...    xpath=//table[@id="ts_item_incoterms_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Incoterms

Add Incoterms
    Wait Until Ready    ${Id Add Incoterms Button}
    Click Button    ${Id Add Incoterms Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_incoterms_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_incoterms_tbl"]//td[normalize-space(.)="${Name}"]

Edit Incoterms
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_incoterms_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_incoterms_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Incoterms Button}
    Click Button    ${Id Edit Incoterms Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Incoterms
    Go To Incoterms
    Wait Until Ready    xpath=//table[@id="ts_item_incoterms_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_incoterms_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Incoterms Button}
    Click Button    ${Id Edit Incoterms Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Plant
    Wait Until Ready    ${Id Plant}
    Click Element    ${Id Plant}
    Wait Until Ready    ${Id Add Plant Button}

Enable Plant
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Plant Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Plant
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_plant_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_plant_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Plant
        ...    xpath=//table[@id="ts_item_plant_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Plant
        ...    xpath=//table[@id="ts_item_plant_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Plant

Add Plant
    Wait Until Ready    ${Id Add Plant Button}
    Click Button    ${Id Add Plant Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_plant_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_plant_tbl"]//td[normalize-space(.)="${Name}"]

Edit Plant
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_plant_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_plant_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Plant Button}
    Click Button    ${Id Edit Plant Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Plant
    Go To Plant
    Wait Until Ready    xpath=//table[@id="ts_item_plant_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_plant_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Plant Button}
    Click Button    ${Id Edit Plant Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Store
    Wait Until Ready    ${Id Store}
    Click Element    ${Id Store}
    Wait Until Ready    ${Id Add Store Button}

Enable Store
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Store Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Store
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_store_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_store_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Store
        ...    xpath=//table[@id="ts_item_store_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Store
        ...    xpath=//table[@id="ts_item_store_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Store

Add Store
    Wait Until Ready    ${Id Add Store Button}
    Click Button    ${Id Add Store Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_store_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_store_tbl"]//td[normalize-space(.)="${Name}"]

Edit Store
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_store_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_store_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Store Button}
    Click Button    ${Id Edit Store Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Store
    Go To Store
    Wait Until Ready    xpath=//table[@id="ts_item_store_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_store_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Store Button}
    Click Button    ${Id Edit Store Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Batch
    Wait Until Ready    ${Id Batch}
    Click Element    ${Id Batch}
    Wait Until Ready    ${Id Add Batch Button}

Enable Batch
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Batch Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Batch
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_batch_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_batch_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Batch
        ...    xpath=//table[@id="ts_item_batch_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Batch
        ...    xpath=//table[@id="ts_item_batch_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Batch

Add Batch
    Wait Until Ready    ${Id Add Batch Button}
    Click Button    ${Id Add Batch Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_batch_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_batch_tbl"]//td[normalize-space(.)="${Name}"]

Edit Batch
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_batch_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_batch_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Batch Button}
    Click Button    ${Id Edit Batch Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Batch
    Go To Batch
    Wait Until Ready    xpath=//table[@id="ts_item_batch_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_batch_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Batch Button}
    Click Button    ${Id Edit Batch Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Division
    Wait Until Ready    ${Id Division}
    Click Element    ${Id Division}
    Wait Until Ready    ${Id Add Division Button}

Enable Division
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Division Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Division
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_division_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_division_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Division
        ...    xpath=//table[@id="ts_item_division_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Division
        ...    xpath=//table[@id="ts_item_division_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Division

Add Division
    Wait Until Ready    ${Id Add Division Button}
    Click Button    ${Id Add Division Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_division_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_division_tbl"]//td[normalize-space(.)="${Name}"]

Edit Division
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_division_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_division_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Division Button}
    Click Button    ${Id Edit Division Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Division
    Go To Division
    Wait Until Ready    xpath=//table[@id="ts_item_division_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_division_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Division Button}
    Click Button    ${Id Edit Division Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Expedition Center
    Wait Until Ready    ${Id Expedition Center}
    Click Element    ${Id Expedition Center}
    Wait Until Ready    ${Id Add Expedition Center Button}

Enable Expedition Center
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Expedition Center Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Expedition Center
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_expcenter_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_expcenter_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Expedition Center
        ...    xpath=//table[@id="ts_item_expcenter_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Expedition Center
        ...    xpath=//table[@id="ts_item_expcenter_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}
        Add Expedition Center
    END

Add Expedition Center
    Wait Until Ready    ${Id Add Expedition Center Button}
    Click Button    ${Id Add Expedition Center Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_expcenter_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_expcenter_tbl"]//td[normalize-space(.)="${Name}"]

Edit Expedition Center
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_expcenter_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_expcenter_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Expedition Center Button}
    Click Button    ${Id Edit Expedition Center Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Expedition Center
    Go To Expedition Center
    Wait Until Ready    xpath=//table[@id="ts_item_expcenter_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_expcenter_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Expedition Center Button}
    Click Button    ${Id Edit Expedition Center Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Packing
    Wait Until Ready    ${Id Packing}
    Click Element    ${Id Packing}
    Wait Until Ready    ${Id Add Packing Button}

Enable Packing
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Packing Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Packing
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_packing_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_packing_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Packing
        ...    xpath=//table[@id="ts_item_packing_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Packing
        ...    xpath=//table[@id="ts_item_packing_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Packing

Add Packing
    Wait Until Ready    ${Id Add Packing Button}
    Click Button    ${Id Add Packing Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_packing_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_packing_tbl"]//td[normalize-space(.)="${Name}"]

Edit Packing
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_packing_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_packing_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Packing Button}
    Click Button    ${Id Edit Packing Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Packing
    Go To Packing
    Wait Until Ready    xpath=//table[@id="ts_item_packing_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_packing_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Packing Button}
    Click Button    ${Id Edit Packing Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Resource kind
    Wait Until Ready    ${Id Resource kind}
    Click Element    ${Id Resource kind}
    Wait Until Ready    ${Id Add Resource kind Button}

Enable Resource kind
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Resource kind Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Resource kind
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_restype_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_restype_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Resource kind
        ...    xpath=//table[@id="ts_item_restype_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Resource kind
        ...    xpath=//table[@id="ts_item_restype_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Resource kind

Add Resource kind
    Wait Until Ready    ${Id Add Resource kind Button}
    Click Button    ${Id Add Resource kind Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_restype_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_restype_tbl"]//td[normalize-space(.)="${Name}"]

Edit Resource kind
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_restype_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_restype_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Resource kind Button}
    Click Button    ${Id Edit Resource kind Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Resource kind
    Go To Resource kind
    Wait Until Ready    xpath=//table[@id="ts_item_restype_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_restype_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Resource kind Button}
    Click Button    ${Id Edit Resource kind Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To VAT Sign
    Wait Until Ready    ${Id VAT Sign}
    Click Element    ${Id VAT Sign}
    Wait Until Ready    ${Id Add VAT Sign Button}

Enable VAT Sign
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit VAT Sign Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add VAT Sign
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable VAT Sign
        ...    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable VAT Sign
        ...    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add VAT Sign

Add VAT Sign
    Wait Until Ready    ${Id Add VAT Sign Button}
    Click Button    ${Id Add VAT Sign Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${Name}"]

Edit VAT Sign
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit VAT Sign Button}
    Click Button    ${Id Edit VAT Sign Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable VAT Sign
    Go To VAT Sign
    Wait Until Ready    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit VAT Sign Button}
    Click Button    ${Id Edit VAT Sign Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Pricing Type
    Wait Until Ready    ${Id Pricing Type}
    Click Element    ${Id Pricing Type}
    Wait Until Ready    ${Id Add Pricing Type Button}

Enable Pricing Type
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Pricing Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Pricing Type
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_pricing_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_item_pricing_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Pricing Type
        ...    xpath=//table[@id="ts_item_pricing_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Pricing Type
        ...    xpath=//table[@id="ts_item_pricing_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Pricing Type

Add Pricing Type
    Wait Until Ready    ${Id Add Pricing Type Button}
    Click Button    ${Id Add Pricing Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_item_pricing_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_pricing_tbl"]//td[normalize-space(.)="${Name}"]

Edit Pricing Type
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_item_pricing_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_item_pricing_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Pricing Type Button}
    Click Button    ${Id Edit Pricing Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Input Text    ${Id Add Field2}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Pricing Type
    Go To Pricing Type
    Wait Until Ready    xpath=//table[@id="ts_item_pricing_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_item_pricing_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Pricing Type Button}
    Click Button    ${Id Edit Pricing Type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Input Text    ${Id Add Field2}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Currency
    Wait Until Ready    ${Id Currency}
    Click Element    ${Id Currency}
    Wait Until Ready    ${Id Add Currency Button}

Enable Currency
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Currency Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Currency
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_currency_tbl"]//td[normalize-space(.)="${Edited Name2}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_currency_tbl"]//td[normalize-space(.)="${Name2}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Currency
        ...    xpath=//table[@id="ts_currency_tbl"]//td[normalize-space(.)="${Edited Name2}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Currency
        ...    xpath=//table[@id="ts_currency_tbl"]//td[normalize-space(.)="${Name2}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Currency

Add Currency
    Wait Until Ready    ${Id Add Currency Button}
    Click Button    ${Id Add Currency Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_currency_tbl"]//td[normalize-space(.)="${Name2}"]
    Click Element    xpath=//table[@id="ts_currency_tbl"]//td[normalize-space(.)="${Name2}"]

Edit Currency
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_currency_tbl"]//td[normalize-space(.)="${Name2}"]
    Click Element    xpath=//table[@id="ts_currency_tbl"]//td[normalize-space(.)="${Name2}"]
    Wait Until Ready    ${Id Edit Currency Button}
    Click Button    ${Id Edit Currency Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Click Element    ${Finish Button}

Disable Currency
    Go To Currency
    Wait Until Ready    xpath=//table[@id="ts_currency_tbl"]//td[normalize-space(.)="${Edited Name2}"]
    Click Element    xpath=//table[@id="ts_currency_tbl"]//td[normalize-space(.)="${Edited Name2}"]
    Wait Until Ready    ${Id Edit Currency Button}
    Click Button    ${Id Edit Currency Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Unit
    Wait Until Ready    ${Id Unit}
    Click Element    ${Id Unit}
    Wait Until Ready    ${Id Add Unit Button}

Enable Unit
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Unit Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Unit
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_unit_tbl"]//td[normalize-space(.)="${Edited Name2}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_unit_tbl"]//td[normalize-space(.)="${Name2}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Unit
        ...    xpath=//table[@id="ts_unit_tbl"]//td[normalize-space(.)="${Edited Name2}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Unit
        ...    xpath=//table[@id="ts_unit_tbl"]//td[normalize-space(.)="${Name2}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Unit

Add Unit
    Wait Until Ready    ${Id Add Unit Button}
    Click Button    ${Id Add Unit Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_unit_tbl"]//td[normalize-space(.)="${Name2}"]
    Click Element    xpath=//table[@id="ts_unit_tbl"]//td[normalize-space(.)="${Name2}"]

Edit Unit
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_unit_tbl"]//td[normalize-space(.)="${Name2}"]
    Click Element    xpath=//table[@id="ts_unit_tbl"]//td[normalize-space(.)="${Name2}"]
    Wait Until Ready    ${Id Edit Unit Button}
    Click Button    ${Id Edit Unit Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name2}
    Click Element    ${Finish Button}

Disable Unit
    Go To Unit
    Wait Until Ready    xpath=//table[@id="ts_unit_tbl"]//td[normalize-space(.)="${Edited Name2}"]
    Click Element    xpath=//table[@id="ts_unit_tbl"]//td[normalize-space(.)="${Edited Name2}"]
    Wait Until Ready    ${Id Edit Unit Button}
    Click Button    ${Id Edit Unit Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name2}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Order
    Wait Until Ready    ${Id Order}
    Click Element    ${Id Order}
    Wait Until Ready    ${Id Add Order Button}

Delete Order If Exists
    [Arguments]    ${schema_name}
    ${exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//*[@id="ts_orders_tbl"]//td[contains(normalize-space(.), "${schema_name}")]
    ...    timeout=1s
    IF    ${exists}    Delete Orders    ${schema_name}

Delete Orders
    [Arguments]    ${schema_name}
    Click Element    xpath=//*[@id="ts_orders_tbl"]//td[contains(normalize-space(.), "${schema_name}")]
    Click Button    ${Id Delete Order Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Prepare Order
    Go To Order
    Delete Order If Exists    ${Edited Name}
    Delete Order If Exists    ${Name}

Add Order
    Wait Until Ready    ${Id Add Order Button}
    Click Button    ${Id Add Order Button}
    Wait Until Ready    ${Id Create Order}
    Input Text    ${Id Create Order}    ${Number}
    Input Text    ${Id Create Order Description}    ${Name}
    Click Element    ${Finish Button}

Edit Order
    Wait Until Element Is Not Visible    ${Id Create Order}
    Wait Until Ready    xpath=//table[@id="ts_orders_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_orders_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Order Button}
    Click Button    ${Id Edit Order Button}
    Wait Until Ready    ${Id Create Order}
    Input Text    ${Id Create Order}    ${Edited Number}
    Input Text    ${Id Create Order Description}    ${Edited Name}
    Click Element    ${Finish Button}

Delete Order
    Go To Order
    Wait Until Ready    xpath=//*[@id="ts_orders_tbl"]//td[contains(normalize-space(.), "${Edited Name}")]
    Click Element    xpath=//*[@id="ts_orders_tbl"]//td[contains(normalize-space(.), "${Edited Name}")]
    Click Button    ${Id Delete Order Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Go To Location
    Wait Until Ready    ${Id Location}
    Click Element    ${Id Location}
    Wait Until Ready    ${Id Add Location Button}

Enable Location
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Location Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Location
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_location_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_location_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Location
        ...    xpath=//table[@id="ts_location_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Location
        ...    xpath=//table[@id="ts_location_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Location

Add Location
    Wait Until Ready    ${Id Add Location Button}
    Click Button    ${Id Add Location Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_location_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_location_tbl"]//td[normalize-space(.)="${Name}"]

Edit Location
    Wait Until Element Is Not Visible    ${Id Add Field1}
    Wait Until Ready    xpath=//table[@id="ts_location_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_location_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Location Button}
    Click Button    ${Id Edit Location Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Location
    Go To Location
    Wait Until Ready    xpath=//table[@id="ts_location_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_location_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Location Button}
    Click Button    ${Id Edit Location Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Go To Maturity
    Wait Until Ready    ${Id Maturity}
    Click Element    ${Id Maturity}
    Wait Until Ready    ${Id Add Maturity Button}

Enable Maturity
    [Arguments]    ${Path}
    Wait Until Ready    ${Path}
    Click Element    ${Path}
    Click Button    ${Id Edit Maturity Button}
    Wait Until Ready    ${Id Create Maturity Description}
    Input Text    ${Id Create Maturity Description}    ${Name}
    Unselect Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

Enable Or Add Maturity
    ${edited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${Edited Name}"]
    ...    timeout=${Timeout2}
    ${unedited_exists}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${Name}"]
    ...    timeout=${Timeout2}

    IF    ${edited_exists}
        Enable Maturity
        ...    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${Edited Name}"]
    END
    IF    ${unedited_exists} and not ${edited_exists}
        Enable Maturity
        ...    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${Name}"]
    END
    IF    not ${edited_exists} and not ${unedited_exists}    Add Maturity

Add Maturity
    Wait Until Ready    ${Id Add Maturity Button}
    Click Button    ${Id Add Maturity Button}
    Wait Until Ready    ${Id Create Maturity}
    Input Text    ${Id Create Maturity}    ${Name6}
    Input Text    ${Id Create Maturity Description}    ${Name}
    Click Element    ${Finish Button}
    Wait Until Ready    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${Name}"]

Edit Maturity
    Wait Until Element Is Not Visible    ${Id Create Maturity}
    Wait Until Ready    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${Name}"]
    Click Element    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${Name}"]
    Wait Until Ready    ${Id Edit Maturity Button}
    Click Button    ${Id Edit Maturity Button}
    Wait Until Ready    ${Id Create Maturity Description}
    Input Text    ${Id Create Maturity Description}    ${Edited Name}
    Click Element    ${Finish Button}

Disable Maturity
    Go To Maturity
    Wait Until Ready    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Click Element    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${Edited Name}"]
    Wait Until Ready    ${Id Edit Maturity Button}
    Click Button    ${Id Edit Maturity Button}
    Wait Until Ready    ${Id Create Maturity Description}
    Input Text    ${Id Create Maturity Description}    ${Name}
    Select Checkbox    ${Checkbox}
    Click Element    ${Finish Button}

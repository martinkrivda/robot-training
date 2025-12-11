*** Settings ***
Documentation       This is a resource file for contract items.
...                 Keywords defined here can be used where this "contract_items.resource" is loaded.

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
${Alert Message2}                           Finální znění už existuje.
${Alert Message3}                           Chcete jej nahradit novou verzí?
${Timeout}                                  5s
${Timeout2}                                 1s
${No}                                       xpath=//button[normalize-space(.)="Ne"]
${Personal Space}                           //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                                 //a[@class="main_tabs" and @href="#tab_settings"]
${Id Contract Items}                        settings_pl_items
${Name}                                     dvtest1
${Edited Name}                              dvtestEdited
${Name2}                                    vod
${Date}                                     03.07.2025
${Edited Date}                              12.07.2025
${Number}                                   12
${Id Number Sequence}                       c_number
${Id Contract Status}                       c_status
${Field}                                    Obchod, podnikání, obchodní právo § 261 - 775
${Confidentiality}                          Přísně tajné
${Contract kind}                            Smlouva o úvěru - § 497 - 507
${Language}                                 Čeština
${Id Field}                                 c_legalfield
${Id Confidentiality}                       c_confid
${Id Contract kind}                         c_kind
${Number Sequence}                          ISSTEST
${Id Language}                              c_lang
${Value}                                    Ve zpracování
${Id Contract Subject}                      c_subject
${Contract Subject}                         TESTCONRACTDV
${Create Contract File Button}              //button[normalize-space(.)='Vytvoření smluvní složky']
${Delete Contract}                          xpath=//li[@class="cm_item ui-corner-all"]//a[contains(@href, "#contract_delete_file")]
${Create Contract}                          //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Please Wait}                              please_wait
${Contract Documents}                       xpath=//a[@href="#tc_contract_documents" and contains(@class, "sub_tabs")]
${Id Add Document Button}                   tc_add_document_btn
${Id Add Document Dialog}                   add_document_to_contract_dialog
${Id Edit Document Button}                  tc_edit_document_btn
${Id Edit Document Dialog}                  edit_contract_document_dialog
${Id Delete Document Button}                tc_del_document_btn
${Id Add Document}                          doc_type
${Additional Documents}                     xpath=//a[@href="#tc_contract_otherdocs" and contains(@class, "sub_tabs")]
${Id Add Additional Document Button}        tc_add_otherdoc_btn
${Id Edit Additional Document Button}       tc_edit_otherdoc_btn
${Id Delete Additional Document Button}     tc_del_otherdoc_btn
${Contract Items}                           xpath=//a[@href="#tc_contract_items" and contains(@class, "sub_tabs")]
${Id Add Item Button}                       tc_add_item_btn
${Id Edit Item Button}                      tc_edit_item_btn
${Id Delete Item Button}                    tc_del_item_btn
${Id Unit Price}                            c_unit_price
${Id Price}                                 c_price
${Unit Price}                               1,69
${Id Add Commodity/service}                 c_commodity
${Delete Contract Personal}                 xpath=//div[@id="tbl_menu"]//ul[contains(@class,"cm_personal_tbl")]//a[@href="#contract_delete_file"]
${Input File}                               xpath=//input[@type="file" and @name="qqfile"]
${File Path}                                ${EXECDIR}/template_test.pdf
${File xPath}                               xpath=//ul[@id="docs_left"]//li[normalize-space(.)="template_test.pdf"]
${Contract Relations}                       xpath=//a[@href="#tc_contract_relations" and contains(@class, "sub_tabs")]
${Id Add Contract Relations Button}         tc_add_relation_btn
${Id Edit Contract Relations Button}        tc_edit_relation_btn
${Id Delete Contract Relations Button}      tc_del_relation_btn
${Id Contract Relations From}               c_relation_from
${Search Contract Relations Button}         rel_search_btn
${Id Contract Relations To}                 c_relation_to
${Search Button}                            xpath=//button[@type="button" and contains(@class, "ui-button") and normalize-space(.)="Hledání"]
${Contract}                                 css=#search_contract_relation_tbl tbody tr.odd td.sorting_1
${Contract Partners}                        xpath=//a[@href="#tc_contract_partner" and contains(@class, "sub_tabs")]
${Id Add Contract Partners Button}          tc_add_partner_btn
${Id Delete Contract Partners Button}       tc_del_partner_btn
${Id Add Contract Partners}                 c_partner
${Milestones}                               xpath=//a[@href="#tc_contract_milestones" and contains(@class, "sub_tabs")]
${Id Add Milestones Button}                 tc_add_milestone_btn
${Id Edit Milestones Button}                tc_edit_milestone_btn
${Id Delete Milestones Button}              tc_del_milestone_btn
${Id Add Milestones}                        ms_date
${Id Valid Until}                           c_valid_until
${Id Primary Responsible Person}            c_primary
${Id Secondary Responsible Person}          c_secondary
${Primary Responsible Person}               Vodárek, Dominik
${Secondary Responsible Person}             Švadlena, Michal
${Id Quantity}                              c_quant
${Id Final Version Button}                  tc_merge_document_btn
${Create Final Version Button}              xpath=//div[@class="ui-dialog-buttonset"]//button[contains(@class, "ui-button") and normalize-space(.)="Vytvoření finálního znění"]
${Completed Contract File Path}             xpath=//tr[td/span[text()="Kompletní"] and td[normalize-space(.)="TESTCONRACTDV"]]
${Parked files}                             p_all
${Forum}                                    xpath=//a[@href="#tc_contract_forum" and contains(@class, "sub_tabs")]
${Id Add Forum Members}                     forum_members
${Id Add Forum Members Button}              add_forum_member_btn
${Id Edit Forum Button}                     tc_edit_milestone_btn
${Id Delete Forum Button}                   tc_del_milestone_btn
${Add Forum Member}                         xpath=//select[@id='id_pole_nebo_xpath']//option[normalize-space(.)="Vodárek , Tomáš (tomas.vodarek)"]
${Id Delete Forum Member}                   xpath=//span[normalize-space(.)="Vodárek , Tomáš (tomas.vodarek)"]/following-sibling::label/following-sibling::input[@id="optin_2"]/following-sibling::button
${Add Forum}                                forum_entry_form
${Id Add Forum Button}                      add_forum_entry_btn
${Start Signoff Process Button}             xpath=//div[@id="tbl_menu"]//ul[contains(@class,"cm_personal_tbl")]//a[@href="#contract_start_signoff"]
${Id Add Signoff Schema}                    s_schema
${Add Signoff Comment}                      signoff_comment
${Id Contracts To Process}                  sign_off
${Id Contracts Signed Off}                  s_signed_off_contracts
${Id Contract SignOff Button}               xpath=//a[@href="#signoff_confirm"]
${Id SignOff Button}                        decision_button
${Id SignOff Release Button}                xpath=//div[@id="contract_top_menu"]//a[@href="#signoff_release"]
${Id Add Document2}                         Originál
${Id Wait}                                  comparing_7797
${Release Button}                           xpath=//button[normalize-space(.)="Uvolnění k vyhledávání"]
${Id Released Contracts}                    released
${Partner}                                  xpath=//th[normalize-space(.)="Č.sml.partnera"]
${Authorized Users}                         xpath=//a[normalize-space(text())="Autorizovaní uživatelé"]
${Id Add Authorized Users Button}           tc_add_user_btn
${Id Delete Authorized Users Button}        tc_del_user_btn
${Id Authorized Users Button}               id=user_ms
${Id Add Authorized Users}                  xpath=//label[span[contains(normalize-space(.), "Vodárková, Jindra")]]/input
${Authorized User}                          xpath=//tr[td[normalize-space(.)="Vodárková, Jindra"]]
${Id VAT ID}                                c_vatid
${Id Contract Type}                         c_type
${Id Appl Law}                              c_appl_law
${Id Profit Center}                         c_profit_center
${Id Acc Area}                              c_acc_area
${Id Delivery To}                           c_delivery_to
${Id Unit}                                  c_unit
${Id As Autor}                              id=r_creator


*** Keywords ***
Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Delete Contract If Exists
    [Arguments]    ${schema_name}
    ${exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${schema_name}"]
    ...    timeout=1s
    IF    ${exists}    Delete Contracts    ${schema_name}

Delete Contracts
    [Arguments]    ${schema_name}
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${schema_name}"]
    Click Element    ${Delete Contract Personal}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Delete Contract
    Wait Until Ready    ${Delete Contract}
    Click Element    ${Delete Contract}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Contract File Setup
    Open Browser And Logged In
    Wait Until Ready    ${Create Contract}
    Delete Contract If Exists    ${Contract Subject}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Language}
    Select From List By Index    ${Id Number Sequence}    1
    Select From List By Index    ${Id Contract Type}    1
    Select From List By Index    ${Id Field}    1
    Select From List By Index    ${Id Confidentiality}    1
    Select From List By Index    ${Id Contract kind}    1
    Select From List By Index    ${Id Language}    1
    Select From List By Index    ${Id Contract Status}    1
    Select From List By Index    ${Id Primary Responsible Person}    1
    Select From List By Index    ${Id Secondary Responsible Person}    1
    Select From List By Index    ${Id Appl Law}    1
    Input Text    ${Id Add Contract Partners}    ${Name2}
    Wait Until Element Is Visible    (//li[contains(@class,"ui-menu-item")])[1]
    Click Element    (//li[contains(@class,"ui-menu-item")])[1]
    Wait Until Ready    ${Id Language}
    Input Text    ${Id Profit Center}    ${Name}
    Wait Until Element Is Visible    (//li[contains(@class,"ui-menu-item")])[1]
    Click Element    (//li[contains(@class,"ui-menu-item")])[1]
    Wait Until Ready    ${Id Language}
    Input Text    ${Id Valid Until}    ${Edited Date}
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Select From List By Index    ${Id VAT ID}    1
    Select From List By Index    ${Id Acc Area}    1
    Click Button    ${Create Contract File Button}

Go To Contract File
    Wait Until Element Is Not Visible    ${Id Number Sequence}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Double Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Contract Items}

Go To Contract Item
    Wait Until Ready    ${Contract Items}
    Click Element    ${Contract Items}

Try To Create Contract Item Without Required Field
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    Input Text    ${Id Unit Price}    ${Unit Price}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}

Add Contract Item
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Unit Price}
    Input Text    ${Id Unit Price}    ${Unit Price}
    Input Text    ${Id Quantity}    ${Number}
    Input Text    ${Id Price}    ${Number}
    Select From List By Index    ${Id Add Commodity/service}    1
    Input Text    ${Id Delivery To}    ${Date}
    Select From List By Index    ${Id Unit}    1
    Click Element    ${Finish Button}

Edit Contract Item
    Wait Until Ready    xpath=//table[@id="tc_contract_items_tbl"]//td[normalize-space(.)="${Unit Price}"]
    Click Element    xpath=//table[@id="tc_contract_items_tbl"]//td[normalize-space(.)="${Unit Price}"]
    Click Button    ${Id Edit Item Button}
    Wait Until Ready    ${Id Add Commodity/service}
    Select From List By Index    ${Id Add Commodity/service}    2
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Commodity/service}

Delete Contract Items
    Wait Until Ready    xpath=//table[@id="tc_contract_items_tbl"]//td[normalize-space(.)="${Unit Price}"]
    Click Element    xpath=//table[@id="tc_contract_items_tbl"]//td[normalize-space(.)="${Unit Price}"]
    Click Button    ${Id Delete Item Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Go To Contract Documents
    Wait Until Ready    ${Contract Documents}
    Click Element    ${Contract Documents}

Add Contract Document
    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Id Add Document Button}
    Wait Until Ready    ${Id Add Document}
    Select From List By Index    ${Id Add Document}    1
    Choose File    ${Input File}    ${File Path}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Document Button}

Edit Contract Document
    Wait Until Ready    ${Id Edit Document Button}
    Wait Until Element Is Not Visible    ${Id Add Document Dialog}
    Click Element    ${Id Edit Document Button}
    Wait Until Ready    ${Finish Button}
    Wait Until Ready    ${Id Add Document}
    Select From List By Index    ${Id Add Document}    2
    Click Element    ${Finish Button}

Delete Contract Document
    Sleep    5
    Wait Until Ready    ${Id Delete Document Button}
    Click Button    ${Id Delete Document Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}
    Wait Until Ready    ${Id Add Document Button}

Try To Create Contract Document Without Required Field
    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Id Add Document Button}
    Wait Until Ready    ${Id Add Document}
    Choose File    ${Input File}    ${File Path}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}
    Wait Until Ready    ${Id Add Document Button}

Go To Additional Documents
    Wait Until Ready    ${Additional Documents}
    Click Element    ${Additional Documents}

Add Additional Document
    Wait Until Ready    ${Id Add Additional Document Button}
    Click Element    ${Id Add Additional Document Button}
    Wait Until Ready    ${Id Add Document}
    Select From List By Index    ${Id Add Document}    1
    Choose File    ${Input File}    ${File Path}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Additional Document Button}

Edit Additional Document
    Sleep    5
    Wait Until Element Is Not Visible    ${Id Edit Document Dialog}
    Wait Until Ready    ${Id Edit Additional Document Button}
    Click Element    ${Id Edit Additional Document Button}
    Wait Until Ready    ${Finish Button}
    Wait Until Ready    ${Id Add Document}
    Select From List By Index    ${Id Add Document}    2
    Click Element    ${Finish Button}

Delete Additional Document
    Wait Until Ready    ${Id Delete Additional Document Button}
    Click Button    ${Id Delete Additional Document Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Try To Create Additional Document Without Required Field
    Wait Until Ready    ${Id Add Additional Document Button}
    Click Element    ${Id Add Additional Document Button}
    Wait Until Ready    ${Id Add Document}
    Choose File    ${Input File}    ${File Path}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}
    Wait Until Ready    ${Id Add Additional Document Button}

Go To Contract Relations
    Wait Until Ready    ${Contract Relations}
    Click Element    ${Contract Relations}

Add Contract Relations
    Sleep    5
    Wait Until Ready    ${Id Add Contract Relations Button}
    Click Button    ${Id Add Contract Relations Button}
    Wait Until Ready    ${Id Contract Relations From}
    Select From List By Index    ${Id Contract Relations From}    1
    Select From List By Index    ${Id Contract Relations To}    2
    Click Element    ${Search Contract Relations Button}
    Wait Until Ready    ${Search Button}
    Click Element    ${Search Button}
    Wait Until Element Is Visible    ${Contract}    timeout=5s
    Click Element    ${Contract}
    Double Click Element    ${Contract}
    Wait Until Ready    ${Id Contract Relations From}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Contract Relations Button}

Edit Contract Relations
    Wait Until Ready    ${Id Edit Contract Relations Button}
    Click Element    ${Id Edit Contract Relations Button}
    Wait Until Ready    ${Finish Button}
    Select From List By Index    ${Id Contract Relations From}    3
    Select From List By Index    ${Id Contract Relations To}    4
    Click Element    ${Finish Button}

Delete Contract Relations
    Wait Until Ready    ${Id Delete Contract Relations Button}
    Click Button    ${Id Delete Contract Relations Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Try To Create Contract Relations Without Required Field
    Wait Until Ready    ${Id Add Contract Relations Button}
    Click Button    ${Id Add Contract Relations Button}
    Wait Until Ready    ${Id Contract Relations From}
    Select From List By Index    ${Id Contract Relations From}    1
    Select From List By Index    ${Id Contract Relations To}    2
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}

Go To Contract Partners
    Wait Until Ready    ${Contract Partners}
    Click Element    ${Contract Partners}
    Wait Until Ready    ${Id Add Contract Partners Button}

Add Contract Partners
    Sleep    2
    Wait Until Ready    ${Id Add Contract Partners Button}
    Click Button    ${Id Add Contract Partners Button}
    Wait Until Ready    ${Id Add Contract Partners}
    Input Text    ${Id Add Contract Partners}    ${Name2}
    Wait Until Element Is Visible    xpath=(//ul[contains(@class, "ui-autocomplete")])[1]//li[1]
    Click Element    xpath=(//ul[contains(@class, "ui-autocomplete")])[1]//li[1]
    Sleep    3
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Contract Partners Button}

Delete Contract Partners
    Wait Until Ready    ${Id Delete Contract Partners Button}
    Click Button    ${Id Delete Contract Partners Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Try To Create Contract Partners Without Required Field
    Sleep    5
    Wait Until Ready    ${Id Add Contract Partners Button}
    Click Button    ${Id Add Contract Partners Button}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}

Go To Milestones
    Wait Until Ready    ${Milestones}
    Click Element    ${Milestones}

Add Milestones
    Wait Until Ready    ${Id Add Milestones Button}
    Click Button    ${Id Add Milestones Button}
    Wait Until Ready    ${Id Add Milestones}
    Input Text    ${Id Add Milestones}    ${Date}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Milestones Button}

Edit Milestones
    Wait Until Ready    ${Id Edit Milestones Button}
    Click Element    ${Id Edit Milestones Button}
    Wait Until Ready    ${Id Add Milestones}
    Input Text    ${Id Add Milestones}    ${Edited Date}
    Click Element    ${Finish Button}

Delete Milestones
    Wait Until Ready    ${Id Delete Milestones Button}
    Click Button    ${Id Delete Milestones Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Try To Create Milestones Without Required Field
    Wait Until Ready    ${Id Add Milestones Button}
    Click Button    ${Id Add Milestones Button}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Alert}
    Element Text Should Be    ${Id Alert}    ${Alert Message}
    Click Button    ${Close Button}
    Wait Until Ready    ${Id Add Milestones Button}

Add Final Version
    Wait Until Element Is Not Visible    ${Id Add Document}
    Wait Until Ready    ${Id Final Version Button}
    Click Button    ${Id Final Version Button}
    Wait Until Ready    ${File xPath}
    Double Click Element    ${File xPath}
    Wait Until Ready    ${Create Final Version Button}
    Click Element    ${Create Final Version Button}
    Wait Until Element Is Not Visible    ${Please Wait}    60s

Try To Add Second Final Version
    Wait Until Ready    ${Id Final Version Button}
    Click Button    ${Id Final Version Button}
    Wait Until Ready    ${No}
    Page Should Contain    ${Alert Message2}
    Page Should Contain    ${Alert Message3}
    Click Element    ${No}

Add Contract Item, Final Version And Contract Partner
    Go To Contract Item
    Add Contract Item
    Go To Contract Documents
    Add Contract Document
    Add Final Version
    Try To Add Second Final Version
    Go To Contract Partners
    Add Contract Partners

Check Completed Contract File
    Sleep    5
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Parked files}
    Click Element    ${Parked files}
    Wait Until Ready    ${Completed Contract File Path}
    Click Element    ${Completed Contract File Path}

Go To Forum
    Wait Until Ready    ${Forum}
    Click Element    ${Forum}

Add Forum Member
    Wait Until Ready    ${Id Add Forum Members}
    Select From List By Label    ${Id Add Forum Members}    Vodárek , Tomáš (tomas.vodarek)
    Click Button    ${Id Add Forum Members Button}
    Wait Until Ready    ${Id Add Forum Members}
    Click Element    ${Id Delete Forum Member}
    Input Text    ${Add Forum}    ${Name}
    Click Button    ${Id Add Forum Button}

Start SignOff Process
    Wait Until Ready    ${Start Signoff Process Button}
    Click Element    ${Start Signoff Process Button}
    Wait Until Ready    ${Id Add Signoff Schema}
    Select From List By Label    ${Id Add Signoff Schema}    ${SIGNOFF_SCHEMA}
    Input Text    ${Add Signoff Comment}    ${Name}
    Click Element    ${Finish Button}

Contract SignOff
    Wait Until Ready    ${Id Contracts To Process}
    Click Element    ${Id Contracts To Process}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Id Contracts Signed Off}
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id="s_pending_decisions_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Click Element    xpath=//table[@id="s_pending_decisions_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Wait Until Ready    ${Id Contract SignOff Button}
    Click Element    ${Id Contract SignOff Button}
    Wait Until Ready    ${Add Signoff Comment}
    Input Text    ${Add Signoff Comment}    ${Name}
    Click Element    ${Id SignOff Button}

Contract Release
    Wait Until Ready    ${Id Contracts Signed Off}
    Click Element    ${Id Contracts Signed Off}
    Wait Until Element Is Enabled
    ...    xpath=//table[@id="s_signed_off_contracts_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Scroll Element Into View
    ...    xpath=//table[@id="s_signed_off_contracts_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Click Element    xpath=//table[@id="s_signed_off_contracts_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Double Click Element
    ...    xpath=//table[@id="s_signed_off_contracts_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Wait Until Ready    ${Id Add Document Button}
    Click Button    ${Id Add Document Button}
    Wait Until Ready    ${Id Add Document}
    Select From List By Label    ${Id Add Document}    ${Id Add Document2}
    Choose File    ${Input File}    ${File Path}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Document}
    Wait Until Ready    ${Id SignOff Release Button}
    Click Element    ${Id SignOff Release Button}
    Wait Until Ready    ${Release Button}
    Click Element    ${Release Button}

Go To Released Contracts
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Id Released Contracts}
    Click Element    ${Id Released Contracts}
    Wait Until Ready    ${Id Released Contracts}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Id As Autor}
    Click Element    ${Id As Autor}
    Wait Until Ready    ${Id As Autor}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Partner}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    xpath=//table[@id="r_creator_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Scroll Element Into View
    ...    xpath=//table[@id="r_creator_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Click Element    xpath=//table[@id="r_creator_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Double Click Element
    ...    xpath=//table[@id="r_creator_tbl"]//td[normalize-space(.)="${Contract Subject}"]

Go To Authorized Users
    Wait Until Ready    ${Authorized Users}
    Click Element    ${Authorized Users}

Add Authorized Users
    Wait Until Ready    ${Id Add Authorized Users Button}
    Click Button    ${Id Add Authorized Users Button}
    Wait Until Ready    ${Id Authorized Users Button}
    Click Element    ${Id Authorized Users Button}
    Wait Until Ready    ${Id Add Authorized Users}
    Click Element    ${Id Add Authorized Users}
    Click Element    ${Finish Button}

Delete Authorized Users
    Wait Until Ready    ${Authorized User}
    Click Element    ${Authorized User}
    Click Button    ${Id Delete Authorized Users Button}
    Wait Until Ready    ${Id Add Authorized Users Button}
    Element Should Not Be Visible    ${Authorized User}

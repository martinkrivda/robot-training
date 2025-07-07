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
${Id Edit Document Button}                  tc_edit_document_btn
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
${Unit Price}                               1,69
${Id Add Commodity/service}                 c_commodity
${Delete Contract Personal}                 xpath=//div[@id="tbl_menu"]//ul[contains(@class,"cm_personal_tbl")]//a[@href="#contract_delete_file"]
${Input File}                               xpath=//input[@type="file" and @name="qqfile"]
${File Path}                                ${EXECDIR}/template_test.docx
${File xPath}                               xpath=//ul[@id="docs_left"]//li[normalize-space(.)="template_test.docx"]
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
    Wait Until Ready    ${Delete Contract Personal}
    Click Element    ${Delete Contract Personal}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Contract File Setup
    Open Browser And Logged In
    Wait Until Ready    ${Create Contract}
    Delete Contract If Exists    ${Contract Subject}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Select From List By Label    ${Id Field}    ${Field}
    Select From List By Label    ${Id Confidentiality}    ${Confidentiality}
    Select From List By Label    ${Id Contract kind}    ${Contract kind}
    Select From List By Label    ${Id Language}    ${Language}
    Select From List By Label    ${Id Contract Status}    ${Value}
    Select From List By Label    ${Id Primary Responsible Person}    ${Primary Responsible Person}
    Select From List By Label    ${Id Secondary Responsible Person}    ${Secondary Responsible Person}
    Input Text    ${Id Valid Until}    ${Edited Date}
    Input Text    ${Id Contract Subject}    ${Contract Subject}
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
    Select From List By Index    ${Id Add Commodity/service}    1
    Click Element    ${Finish Button}

Edit Contract Item
    Wait Until Ready    xpath=//table[@id="tc_contract_items_tbl"]//td[normalize-space(.)="${Unit Price}"]
    Click Element    xpath=//table[@id="tc_contract_items_tbl"]//td[normalize-space(.)="${Unit Price}"]
    Click Button    ${Id Edit Item Button}
    Wait Until Ready    ${Id Add Commodity/service}
    Select From List By Index    ${Id Add Commodity/service}    2
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Commodity/service}

Delete Contract Item
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

Edit Contract Document
    Wait Until Ready    ${Id Edit Document Button}
    Click Element    ${Id Edit Document Button}
    Wait Until Ready    ${Finish Button}
    Wait Until Ready    ${Id Add Document}
    Select From List By Index    ${Id Add Document}    2
    Click Element    ${Finish Button}

Delete Contract Document
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

Add Contract Partners
    Wait Until Ready    ${Id Add Contract Partners Button}
    Click Button    ${Id Add Contract Partners Button}
    Wait Until Ready    ${Id Add Contract Partners}
    Input Text    ${Id Add Contract Partners}    ${Name2}
    Wait Until Element Is Visible    xpath=(//ul[contains(@class, "ui-autocomplete")])[1]//li[1]
    Click Element    xpath=(//ul[contains(@class, "ui-autocomplete")])[1]//li[1]
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Contract Partners Button}

Delete Contract Partners
    Wait Until Ready    ${Id Delete Contract Partners Button}
    Click Button    ${Id Delete Contract Partners Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Try To Create Contract Partners Without Required Field
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
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Parked files}
    Click Element    ${Parked files}
    Wait Until Ready    ${Completed Contract File Path}
    Click Element    ${Completed Contract File Path}

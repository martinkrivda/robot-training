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
${Finish Button}                            //button[normalize-space(text())="Dokončit"]
${Close Button}                             xpath=//button[@title="Close"]
${Delete Button}                            //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                 alert_area
${Alert Message}                            Vyplňte prosím všechna povinná pole!
${Alert Message2}                           Finální znění už existuje.
${Alert Message3}                           Chcete jej nahradit novou verzí?
${Timeout}                                  10s
${Timeout2}                                 1s
${No Path}                                  xpath=//button[normalize-space(.)="Ne"]
${Personal Space}                           //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                                 //a[@class="main_tabs" and @href="#tab_settings"]
${Create Contract File Button}              //button[normalize-space(.)='Vytvoření smluvní složky']
${Delete Contract}                          xpath=//li[@class="cm_item ui-corner-all"]//a[contains(@href, "#contract_delete_file")]
${Create Contract}                          //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id User}                                  user
${Id Number Sequence}                       c_number
${Add Field}                                Občanské právo
${Number Sequence 2}                        Smluvní dodatky
${Please Wait}                              please_wait
${Id Contract Subject}                      c_subject
${Id Add Partner}                           c_pnumber
${Add Partner1}                             1
${Id Field}                                 c_legalfield
${Id Confidentiality}                       c_confid
${Id Contract kind}                         c_kind
${Contract kind1}                           Kupní smlouva - § 588 - 610
${Number Sequence}                          ISSTEST
${Add Confidentiality}                      Přísně tajné
${Add Language 4}                           Čeština
${Id Language}                              c_lang
${Primary Responsible Person}               Vodárek, Dominik
${Id Add Primary responsible person}        c_primary
${Id Add Contract partner}                  c_partner
${Add Contract partner 1}                   Agrofert,
${Contract Subject}                         ISS TEST 2.22.0
${Tab Contract Number}                      tab_contract_contract
${Edit Contract File}                       xpath=//ul[contains(@class,"cm_contract_contract") and contains(@class,"contextMenu") and not(contains(@class,"permanent"))]//a[@href="#contract_edit_data" and contains(., "Úprava smluvních údajů")]
${Id Add Valid Until}                       c_valid_until
${Add Date}                                 6.8.2025
${Update Contract File}                     xpath=//button[normalize-space(.)="Aktualizovat smluvní složku"]
${Search Date}                              06.08.2025
${Id Add Document Button}                   tc_add_document_btn
${Id Add Item Button}                       tc_add_item_btn
${Contract Items}                           xpath=//a[@href="#tc_contract_items" and contains(@class, "sub_tabs")]
${Id Add Commodity/service}                 c_commodity
${Id Unit Price}                            c_unit_price
${Id Add Quantity}                          c_quant
${Id Add Delivery Date}                     c_delivery
${Id Add Delivery To}                       c_delivery_to
${Id Add Discount}                          c_discount
${Id Add VAT rate}                          c_vat_rate
${Id Add Item type}                         c_item_type
${Id Add Unit}                              c_unit
${Id Add Maturity}                          c_maturity
${Maturity Number 1}                        1212
${Number 1}                                 3
${Number 2}                                 4
${Id Add Location}                          c_location_id
${Id Add Order}                             c_order
${Id Add Currency}                          c_currency
${Add Date 1}                               25.7.2025
${Add Valid Date 1}                         22.8.2025
${Id Add Business case}                     c_buscase
${Delete Contract Button}                   xpath=//div[@id="tbl_menu"]//ul[contains(@class,"cm_personal_tbl")]//a[@href="#contract_delete_file"]
${Id Edit Item Button}                      tc_edit_item_btn
${Add Bonus}                                4,00
${Id Add Document}                          doc_type
${Input File}                               xpath=//input[@type="file" and @name="qqfile"]
${Contract Documents}                       xpath=//a[@href="#tc_contract_documents" and contains(@class, "sub_tabs")]
${File Path}                                ${EXECDIR}/template_test.pdf
${File Path 2}                              ${EXECDIR}/template_test.docx
${Id Final Version Button}                  tc_merge_document_btn
${Create Final Version Button}              xpath=//div[@class="ui-dialog-buttonset"]//button[contains(@class, "ui-button") and normalize-space(.)="Vytvoření finálního znění"]
${File xPath}                               xpath=//ul[@id="docs_left"]//li[normalize-space(.)="template_test.pdf"]
${File xPath 2}                             xpath=//ul[@id="docs_left"]//li[normalize-space(.)="template_test.docx"]
${DOWNLOAD_DIR}                             C:/Users/domin/Downloads
${Add Document}                             Smlouva
${Add Document 2}                           Kalkulace
${Create Document Template Button}          doc_create_from_template
${Id Document Template}                     doc_templ
${Document Template}                        Test mapován údajů do vzoru - vše.docx
${Create Button}                            xpath=//button[normalize-space(.)="Vytvořit"]
${Start SignOff Process}                    xpath=//ul[contains(@class,"cm_contract_contract") and contains(@class,"contextMenu") and not(contains(@class,"permanent"))]//a[@href="#contract_start_signoff" and contains(., "Zahájení schvalování")]
${Id Add Secondary responsible person}      c_secondary
${Secondary Responsible Person}             Švadlena, Michal
${Id Add Signoff Schema}                    s_schema
${Add Signoff Comment}                      signoff_comment
${Add Signoff Schema}                       TEST DV
${Contract To Process}                      sign_off
${Contract Signoff}                         xpath=//ul[contains(@class,"cm_pending_decisions_tbl") and contains(@class,"contextMenu") and not(contains(@class,"permanent"))]//a[@href="#signoff_confirm"]
${Signoff Button}                           decision_button
${Contract Signed Off}                      s_signed_off_contracts


*** Keywords ***
Process Setup
    Open Browser And Logged In
    Delete Test Contracts

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
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Create Contract}
    Wait Until Element Is Not Visible    ${Please Wait}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Element Should Not Contain    ${Id Number Sequence}    ${Number Sequence 2}
    Select From List By Index    ${Id Number Sequence}    1
    Select From List By Index    ${Id Field}    1
    Select From List By Index    ${Id Confidentiality}    1
    Select From List By Index    ${Id Language}    1
    Input Text    ${Id Contract Subject}    ${Contract Subject}
    Select From List By Index    ${Id Contract kind}    1
    Input Text    ${Id Add Contract partner}    ${Add Contract partner 1}
    Wait Until Ready    xpath=//ul[contains(@class, "ui-autocomplete")]/li[1]
    Click Element    xpath=//ul[contains(@class, "ui-autocomplete")]/li[1]
    Select From List By Label    ${Id Add Primary responsible person}    ${Primary Responsible Person}
    Select From List By Label    ${Id Add Secondary responsible person}    ${Secondary Responsible Person}
    Click Button    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Id Number Sequence}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    xpath=//table[@id='p_all_tbl']//tbody/tr[1]/td[3]
    ${contract_number}=    Get Text    xpath=//table[@id='p_all_tbl']//tbody/tr[1]/td[3]
    Log To Console    Contract Number: ${contract_number}
    Log    Contract Number: ${contract_number}

Edit Contract
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Double Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Wait Until Ready    ${Tab Contract Number}
    # Click Element    xpath=//li[contains(@class,"cm_item")]//a[@href="#contract_edit_data"]
    Open Context Menu    ${Tab Contract Number}
    # Wait Until Ready    ${Edit Contract File}
    Click Element    ${Edit Contract File}
    Wait Until Ready    ${Id Add Valid Until}
    Input Text    ${Id Add Valid Until}    ${Add Date}
    Click Element    ${Id Number Sequence}
    Sleep    1
    Click Button    ${Update Contract File}
    Wait Until Element Is Not Visible    ${Id Add Valid Until}

Check Edited Contract
    Wait Until Ready    ${Tab Contract Number}
    Open Context Menu    ${Tab Contract Number}
    # Wait Until Ready    ${Edit Contract File}
    Click Element    ${Edit Contract File}
    Wait Until Ready    ${Id Add Valid Until}
    Element Attribute Value Should Be    ${Id Add Valid Until}    value    ${Search Date}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Id Add Valid Until}

Create Contract Item
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Add Commodity/service}
    Select From List By Index    ${Id Add Commodity/service}    1
    Input Text    ${Id Add Quantity}    ${Number 1}
    Select From List By Index    ${Id Add Unit}    1
    Input Text    ${Id Unit Price}    ${Maturity Number 1}
    Select From List By Index    ${Id Add Order}    1
    Select From List By Index    ${Id Add Currency}    1
    Select From List By Index    ${Id Add Location}    1
    Input Text    ${Id Add Delivery Date}    ${Add Date 1}
    Input Text    ${Id Add Delivery To}    ${Add Valid Date 1}
    Input Text    ${Id Add Discount}    ${Number 1}
    Input Text    ${Id Add VAT rate}    ${Number 1}
    Select From List By Index    ${Id Add Business case}    1
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Item Button}

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

Delete Test Contracts
    Wait Until Ready    ${Settings}
    Delete Contract If Exists    ${Contract Subject}

Delete Contracts
    [Arguments]    ${schema_name}
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${schema_name}"]
    Wait Until Element Is Not Visible    ${Please Wait}
    Click Element    ${Delete Contract Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}
    Wait Until Element Is Not Visible    ${Delete Button}

Edit Contract Item
    Wait Until Ready    ${Id Edit Item Button}
    Click Button    ${Id Edit Item Button}
    Wait Until Ready    ${Id Add Commodity/service}
    Input Text    ${Id Add Quantity}    ${Number 2}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Item Button}

Check Edited Contract Item
    Wait Until Ready    ${Id Edit Item Button}
    Click Button    ${Id Edit Item Button}
    Wait Until Ready    ${Id Add Commodity/service}
    Element Attribute Value Should Be    ${Id Add Quantity}    value    ${Add Bonus}
    Click Element    ${Close Button}
    Wait Until Ready    ${Id Add Item Button}

Add Documents
    Wait Until Ready    ${Contract Documents}
    Click Element    ${Contract Documents}
    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Id Add Document Button}
    Wait Until Ready    ${Id Add Document}
    Select From List By Label    ${Id Add Document}    ${Add Document}
    Click Button    ${Create Document Template Button}
    Wait Until Ready    ${Id Document Template}
    Select From List By Label    ${Id Document Template}    ${Document Template}
    Click Button    ${Create Button}
    Wait Until Ready    ${Id Add Document}
    Wait Until File Downloaded    *.docx
    ${latest_file}=    Get Latest Downloaded Docx    ${DOWNLOAD_DIR}
    Choose File    ${Input File}    ${DOWNLOAD_DIR}/${latest_file}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Document}

    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Id Add Document Button}
    Wait Until Ready    ${Id Add Document}
    Select From List By Label    ${Id Add Document}    ${Add Document}
    Choose File    ${Input File}    ${File Path 2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Document}

    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Id Add Document Button}
    Wait Until Ready    ${Id Add Document}
    Select From List By Label    ${Id Add Document}    ${Add Document 2}
    Choose File    ${Input File}    ${File Path}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Document}

Add Final Version
    Wait Until Ready    ${Id Final Version Button}
    Click Button    ${Id Final Version Button}
    Wait Until Ready    ${File xPath 2}
    ${latest_file}=    Get Latest Downloaded Docx    ${DOWNLOAD_DIR}
    Wait Until Ready    ${File xPath 2}
    Double Click Element    xpath=//ul[@id="docs_left"]//li[normalize-space(.)="${latest_file}"]
    Double Click Element    ${File xPath 2}
    Wait Until Ready    ${Create Final Version Button}
    Click Element    ${Create Final Version Button}
    Wait Until Element Is Not Visible    ${Please Wait}    30s

Get Latest Downloaded Docx
    [Arguments]    ${DOWNLOAD_DIR}=C:/Users/domin/Downloads
    ${files}=    List Files In Directory    ${DOWNLOAD_DIR}    *.docx
    ${latest}=    Evaluate
    ...    max([f for f in ${files}], key=lambda f: os.path.getctime(os.path.join(r"${DOWNLOAD_DIR}", f)))
    ...    modules=os
    RETURN    ${latest}

Wait Until File Downloaded
    [Arguments]    ${pattern}
    Wait Until Keyword Succeeds    ${TIMEOUT}    1s    File Should Exist Matching    ${pattern}

File Should Exist Matching
    [Arguments]    ${pattern}
    ${files}=    List Files In Directory    ${DOWNLOAD_DIR}    ${pattern}
    Should Not Be Empty    ${files}

Start SignOff Process
    Wait Until Ready    ${Tab Contract Number}
    Open Context Menu    ${Tab Contract Number}
    Wait Until Ready    ${Start SignOff Process}
    Click Element    ${Start SignOff Process}
    Wait Until Ready    ${Id Add Signoff Schema}
    Select From List By Label    ${Id Add Signoff Schema}    ${Add Signoff Schema}
    Click Element    ${Finish Button}

Contract SignOff
    Go To Personal Space
    Wait Until Ready    ${Contract To Process}
    Click Element    ${Contract To Process}
    Wait Until Ready    xpath=//table[@id="s_pending_decisions_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Open Context Menu    xpath=//table[@id="s_pending_decisions_tbl"]//td[normalize-space(.)="${Contract Subject}"]
    Wait Until Ready    ${Contract Signoff}
    Click Element    ${Contract Signoff}
    Wait Until Ready    ${Signoff Button}
    Click Button    ${Signoff Button}

Check
    Wait Until Ready    ${Contract Signed Off}
    Click Element    ${Contract Signed Off}
    Wait Until Ready    xpath=//table[@id="s_signed_off_contracts_tbl"]//td[normalize-space(.)="${Contract Subject}"]

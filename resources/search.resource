*** Settings ***
Documentation       This is a resource file for search.
...                 Keywords defined here can be used where this "search.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Library             Collections
Library             String
Library             DateTime
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Finish Button}                                    //button[normalize-space(text())="Dokončit"]
${Close Button}                                     xpath=//button[@title="Close"]
${Delete Button}                                    //button[normalize-space(.)="Odstranit" and not(@id)]
${Id Alert}                                         alert_area
${Alert Message}                                    Vyplňte prosím všechna povinná pole!
${Alert Message2}                                   Finální znění už existuje.
${Alert Message3}                                   Chcete jej nahradit novou verzí?
${Timeout}                                          10s
${Timeout2}                                         1s
${No Path}                                          xpath=//button[normalize-space(.)="Ne"]
${Personal Space}                                   //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                                         //a[@class="main_tabs" and @href="#tab_settings"]
${Id Number Sequence}                               c_number
${Add Field}                                        Občanské právo
${Add Field 2}                                      Obchod, podnikání, obchodní právo § 261 - 775
${Add Confidentiality}                              Přísně tajné
${Add Confidentiality 2}                            Důvěrné
${Add Confidentiality 3}                            Tajné
${Contract kind1}                                   Kupní smlouva - § 588 - 610
${Contract kind2}                                   Licenční smlouva k předmětům průmyslového vlastnictví - § 508
${Contract kind3}                                   Pojistná smlouva - § 788 - 828
${Add Language}                                     Němčina
${Add Language 2}                                   Angličtina
${Add Language 3}                                   Slovenština
${Add Language 4}                                   Čeština
${Id Field}                                         c_legalfield
${Id Confidentiality}                               c_confid
${Id Contract kind}                                 c_kind
${Number Sequence}                                  ISSTEST
${Number Sequence 2}                                TEST
${Number Sequence 3}                                ISS test
${Id Language}                                      c_lang
${Value}                                            Ve zpracování
${Id Contract Subject}                              c_subject
${Create Contract File Button}                      //button[normalize-space(.)='Vytvoření smluvní složky']
${Delete Contract}                                  xpath=//li[@class="cm_item ui-corner-all"]//a[contains(@href, "#contract_delete_file")]
${Create Contract}                                  //button[.//span[@class="title" and contains(text(), "Vytvoření smlouvy")]]
${Id Add Partner}                                   c_pnumber
${Add Partner1}                                     1
${Add Partner2}                                     2
${Add Partner3}                                     3
${Other Data Path}                                  xpath=//a[normalize-space(.)="Další data"]
${Id Add Termination Method}                        c_termination_method
${Add Termination Method1}                          C
${Add Termination Method2}                          B
${Add Termination Method3}                          A
${Please Wait}                                      please_wait
${Search Contract Subject}                          s_text_subject
${Id Add VAT ID}                                    c_vatid
${Id Add Contract Type}                             c_type
${Id Add Signature Date}                            c_sign_own
${Id Add Valid Since}                               c_valid_since
${Id Add Notice Period}                             c_notice_period_unit
${Id Add Notice Period 2}                           c_notice_period
${Id Add Total Contract Price Period}               c_contract_price
${Id Add Total Contract Price Period Currency}      c_contract_price_curr
${Id Add Publishing Required}                       c_publ_req
${Id Add Applicable Law}                            c_appl_law
${Id Add Bank Account}                              c_own_account
${Id Add Contract Status}                           c_status
${Id Add Partner Signature Date}                    c_sign_partner
${Id Add Valid Until}                               c_valid_until
${Id Add Effective Date}                            c_effective
${Id Add Published}                                 c_published
${Id Add Publishing Date}                           c_publ_date
${Id Add Internal Contract Partner}                 c_intpart
${Id Add Primary responsible person}                c_primary
${Id Add Secondary responsible person}              c_secondary
${Id Add Organisational unit}                       c_orgunit
${Id Add Business case}                             c_buscase
${Id Add Contact information}                       c_int_contact
${Id Add Responsible accountant}                    c_accountant
${Id Add Partner role}                              c_part_role
${Id Add Contract partner}                          c_partner
${Id Add Contact person}                            c_contact
${Add Number 1}                                     1952 dvtest
${Add Number 2}                                     2547 dvtest
${Add Number 3}                                     7189 dvtest
${Id VAT ID}                                        settings_vatid
${Id Add VAT ID Button}                             ts_add_vatid_btn
${Id Edit VAT ID Button}                            ts_edit_vatid_btn
${Id Select VAT ID}                                 c_part_vatid
${Id Select Applicable Law}                         c_appl_law
${Add Contact Type 1}                               Nákupní kontrakt
${Add Contact Type 2}                               Ostatní
${Add Contact Type 3}                               Prodejní kontrakt
${Add Date 1}                                       25.7.2025
${Add Date 2}                                       27.7.2025
${Add Date 3}                                       6.8.2025
${Add Valid Date 1}                                 22.8.2025
${Add Valid Date 2}                                 29.8.2025
${Add Valid Date 3}                                 9.9.2025
${Add Notice Period 1}                              Den
${Add Notice Period 2}                              Měsíc
${Add Notice Period 3}                              Rok
${Number 1}                                         3
${Number 2}                                         4
${Number 3}                                         5
${Add Total Contract Price Period 1}                CZK
${Add Total Contract Price Period 2}                EUR
${Add Total Contract Price Period 3}                USD
${Yes}                                              Ano
${No}                                               Ne
${Add Contract Status 1}                            Aktivní
${Add Contract Status 2}                            Ukončena
${Add Contract Status 3}                            Ve zpracování
${Add Internal Contract Partner 1}                  Ekonomický úsek
${Add Internal Contract Partner 2}                  Obchodní úsek
${Add Internal Contract Partner 3}                  Technický úsek
${Add Organisational unit 1}                        Reporting
${Add Organisational unit 2}                        Oddělení řízení PJM
${Add Organisational unit 3}                        Provoz a support
${Primary Responsible Person}                       Vodárek, Dominik
${Secondary Responsible Person}                     Švadlena, Michal
${Add Primary Responsible Person}                   Dominik Vodárek
${Add Secondary Responsible Person}                 Michal Švadlena
${Add Business case 1}                              Nákup služeb
${Add Business case 2}                              Prodej licencí
${Add Business case 3}                              Nákup HW
${Add Partner role 1}                               Dodavatel (dodavatel)
${Add Partner role 2}                               Odběratel (dodavatel)
${Add Contract partner 1}                           Agrofert,
${Add Contract partner 2}                           ISS
${Add Contract partner 3}                           Primagra
${Add Contact person 1}                             Dominik
${Add Contact person 2}                             Tomáš
${Add Contact person 3}                             Michal
${Id Add Amount Per Year}                           c_year_amount
${Id Add Amount Per Year Currency}                  c_year_amount_curr
${Id Add Deposit}                                   c_deposit
${Id Add Deposit Currency}                          c_deposit_curr
${Id Add Interest}                                  c_interest
${Id Add Documentation required}                    c_doc_required
${Id Add Documentation required Date}               c_doc_required_date
${Id Add Invoicing date}                            c_invoicing_date
${Id Add Payment interval}                          c_payment_interval
${Id Add Lent To}                                   c_lent_to
${Id Add Lent To Date}                              c_lend_date
${Id Add Maturity 2}                                c_maturity2
${Id Add Original Storage}                          c_storage
${Id Add Order Number}                              c_order_nr
${Id Add Notice Required}                           c_notice_required
${Id Add Deposit Text}                              c_deposit_text
${Id Add Postponement Condition}                    c_postponement_condition
${Id Add Documentation Enclosed}                    c_doc_enclosed
${Id Add Irregular Payment}                         c_irregular_payment
${Id Add To Pay}                                    c_topay
${Id Add To Pay Currency}                           c_topay_curr
${Add Maturity 1}                                   c_maturity1
${Id Add Discount%}                                 c_discount
${Id Add Note}                                      c_note
${Id Original Storage}                              settings_storage
${Id Add Original Storage Button}                   ts_add_storage_btn
${Id Edit Original Storage Button}                  ts_edit_storage_btn
${Id Add Field1}                                    s_field1
${Id Add Field2}                                    s_field2
${Id Add Field3}                                    s_field3
${Id Header Aux Data}                               settings_pl_head_aux
${Add Original Storage 1}                           Archív dvtest1
${Add Original Storage 2}                           dtest
${Add Original Storage 3}                           testdv1
${Id Add Subsidy}                                   c_subsidy
${Id Add Supp.payment}                              c_supp_payment
${Id Add Tender}                                    c_tender
${Name}                                             dvtest1
${Name 2}                                           testd1
${Name 3}                                           vtest1
${Edited Name}                                      dvtestEdited
${Contract Subject Name}                            dvTESTCONTRACTDV
${Contract Subject Name 2}                          dvTESTDVCONTRACT
${Contract Subject Name 3}                          dvTESTVDCONTRACT
${Contract Subject Name 4}                          CONTRACTVTEST
${Search Contract Subject 1}                        vTEST
${Search Contract Subject 2}                        dvTEST
${Id Add Service Contract}                          c_service_contract
${Id Add VAT Sign}                                  c_vatsign
${Id Proposals}                                     proposals
${Id Add GDPR}                                      c_gdpr
${Id Add Framework Contract}                        c_fwc
${Id Add Document Button}                           tc_add_document_btn
${Id Add Item Button}                               tc_add_item_btn
${Contract Items}                                   xpath=//a[@href="#tc_contract_items" and contains(@class, "sub_tabs")]
${Id Add Commodity/service}                         c_commodity
${Add Commodity/service 1}                          AGROFIT kombi 250ml
${Add Commodity/service 2}                          Cena za jednotku
${Add Commodity/service 3}                          Dodání HW
${Id Add Unit}                                      c_unit
${Add Unit 1}                                       hodina
${Add Unit 2}                                       km
${Add Unit 3}                                       m3
${Id Add Order}                                     c_order
${Add Order 1}                                      01002 Inko BPE
${Add Order 2}                                      01201 Davo BPE
${Add Order 3}                                      02006 Ethanol Energy ELF
${Id Add Currency}                                  c_currency
${Id Add Location}                                  c_location_id
${Add Location 1}                                   Kolín
${Add Location 2}                                   Pardubice
${Add Location 3}                                   Praha 2
${Id Unit Price}                                    c_unit_price
${Id Add Quantity}                                  c_quant
${Id Add Delivery Date}                             c_delivery
${Id Add Delivery To}                               c_delivery_to
${Id Add Discount}                                  c_discount
${Id Add VAT rate}                                  c_vat_rate
${Id Add Item type}                                 c_item_type
${Add Item type 1}                                  dvt
${Add Item type 2}                                  tdv
${Add Item type 3}                                  dovt
${Id Add Maturity}                                  c_maturity
${Maturity Number 1}                                0525
${Maturity Number 2}                                1212
${Maturity Number 3}                                3102
${Visibility1}                                      //label[@for="s_visible"]
${Visibility2}                                      //label[@for="s_invisible"]
${Own Bank Field}                                   xpath=//tr[td[normalize-space(.)='Vlastní bankovní spojení']]
${Own VAT ID Field}                                 xpath=//tr[td[normalize-space(.)='Vlastní DIČ']]
${GDPR Field}                                       xpath=//tr[td[normalize-space(.)='GDPR']]
${Framework Contract Field}                         xpath=//tr[td[normalize-space(.)='Rámcová smlouva']]
${Item Type Field}                                  xpath=//tr[td[normalize-space(.)='Typ položky']]
${VAT Sign Field}                                   xpath=//tr[td[normalize-space(.)='Znak DPH']]
${Sevice Contract Field}                            xpath=//tr[td[normalize-space(.)='Servisní smlouva']]
${Subsidy Field}                                    xpath=//tr[td[normalize-space(.)='Dotace']]
${Supp.payment Field}                               xpath=//tr[td[normalize-space(.)='Platba dodavateli']]
${Tender Field}                                     xpath=//tr[td[normalize-space(.)='Výběrové řízení']]
${Tender Number Field}                              xpath=//tr[td[normalize-space(.)='Číslo výb.řízení']]
${Id Administration and Configuration}              admin_config
${Id Fields}                                        settings_custom_fields
${Id Fields Edit Button}                            ts_edit_custom_fields_btn
${Delete Contract Button}                           xpath=//div[@id="tbl_menu"]//ul[contains(@class,"cm_personal_tbl")]//a[@href="#contract_delete_file"]
${Id Contract Items}                                settings_pl_items
${Contract Type Checkbox}                           xpath=//input[@type='checkbox' and @id='s_disabled']
${Id Payment Interval}                              settings_interval
${Id Edit Payment Interval Button}                  ts_edit_interval_btn
${Id Add Payment Interval Button}                   ts_add_interval_btn
${Id Invoicing date}                                settings_inv_date
${Id Edit Invoicing date Button}                    ts_edit_inv_date_btn
${Id Add Invoicing date Button}                     ts_add_inv_date_btn
${Id Maturity}                                      settings_maturity
${Id Edit Maturity Button}                          ts_edit_maturity_btn
${Id Add Maturity Button}                           ts_add_maturity_btn
${Id Create Maturity}                               s_maturity
${Id Create Maturity Description}                   s_description
${Layout Button}                                    xpath=//button[contains(@class, "dt-button") and normalize-space(.)="Layout"]
${Select None Button}                               xpath=//input[@type="button" and @value="Zrušit vše"]
${Select All Button}                                xpath=//input[@type="button" and @value="Vybrat vše"]
${Id Add Tender Number}                             c_tender_number
${Id Add Tender Date}                               c_tender_date
${Search}                                           //a[@class="main_tabs" and @href="#tab_search"]
${Search Button}                                    xpath=//button[normalize-space(.)="Hledání"]
${Search Button 2}                                  xpath=//div[contains(@class,"ui-dialog")]//button[normalize-space(.)="Hledání"]
${Id Add Document}                                  doc_type
${Input File}                                       xpath=//input[@type="file" and @name="qqfile"]
${File Path}                                        ${EXECDIR}/template_test.pdf
${Contract Documents}                               xpath=//a[@href="#tc_contract_documents" and contains(@class, "sub_tabs")]
${Id Final Version Button}                          tc_merge_document_btn
${Create Final Version Button}                      xpath=//div[@class="ui-dialog-buttonset"]//button[contains(@class, "ui-button") and normalize-space(.)="Vytvoření finálního znění"]
${File xPath}                                       xpath=//ul[@id="docs_left"]//li[normalize-space(.)="template_test.pdf"]
${Contract Number}                                  xpath=//th[normalize-space(.)="Číslo smlouvy"]
${Search Partner Contract Number}                   c_partner_number
${Reset Button}                                     xpath=//div[contains(@class,"ui-dialog")]//button[normalize-space(.)="Reset"]
${Search Role Partner}                              Dodavatel
${Search Role Partner 2}                            Odběratel
${Id Search Role Partner}                           c_part_s_role
${Filter}                                           xpath=//input[@type="search" and @aria-controls="search_results"]
${Search Partner}                                   Primagra, a.s.
${Search Partner 2}                                 AGROFERT, a.s.
${Filter Reset}                                     filter_reset
${Contract Subject}                                 xpath=//div[contains(@class,"dataTables_scroll")]//tr/th[3][normalize-space(.)="Předmět"]
${Partner}                                          xpath=//div[@id="search_results_wrapper"]//div[contains(@class,"dataTables_scrollHeadInner")]//tr/th[4]
${Contact Person}                                   xpath=//th[normalize-space(.)="Kontaktní osoba"]
${SAP Id}                                           xpath=//div[@id="search_results_wrapper"]//div[contains(@class,"dataTables_scrollHeadInner")]//tr/th[5]
${Field}                                            xpath=//div[@id="search_results_wrapper"]//div[contains(@class,"dataTables_scrollHeadInner")]//tr/th[10]
${Search Date 2}                                    06.08.2025
${Contract Price 3}                                 1 575,00
${Search Notice Period}                             3 dny
${Search Business Case ID}                          9
${Search Amount Per Year}                           3,00 CZK
${Search To Pay}                                    5,00 USD 7 189 dvtest
${Search VAT Rate}                                  3,00


*** Keywords ***
Search Setup
    Open Browser And Logged In
    Enable Fields
    Enable Or Add Data
    Layout Select All
    Delete Test Contracts
    Create Test Contracts

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

Go To Search
    Wait Until Ready    ${Search}
    Click Element    ${Search}

Layout Select All
    Go To Personal Space
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select All Button}
    Click Element    ${Select All Button}
    Click Element    ${Close Button}
    Wait Until Ready    ${Layout Button}
    Wait Until Element Is Not Visible    ${Please Wait}

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
    Delete Contract If Exists    ${Contract Subject Name}
    Wait Until Ready    ${Settings}
    Wait Until Element Is Not Visible    ${Please Wait}
    Delete Contract If Exists    ${Contract Subject Name 2}
    Wait Until Ready    ${Settings}
    Wait Until Element Is Not Visible    ${Please Wait}
    Delete Contract If Exists    ${Contract Subject Name 3}
    Wait Until Ready    ${Settings}
    Wait Until Element Is Not Visible    ${Please Wait}
    Delete Contract If Exists    ${Contract Subject Name 4}
    Wait Until Ready    ${Settings}
    Wait Until Element Is Not Visible    ${Please Wait}

Delete Contracts
    [Arguments]    ${schema_name}
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${schema_name}"]
    Wait Until Element Is Not Visible    ${Please Wait}
    Click Element    ${Delete Contract Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}
    Wait Until Element Is Not Visible    ${Delete Button}

Delete Contract
    Wait Until Ready    ${Delete Contract Button}
    Click Element    ${Delete Contract Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Create Test Contracts
    Create Contract Test 1
    Create Contract Item 1
    Add Final Version
    Create Contract Test 2
    Create Contract Item 2
    Create Contract Test 3
    Create Contract Test 4

Create Contract Test 1
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Input Text    ${Id Add Partner}    ${Add Number 1}
    Select From List By Label    ${Id Add VAT ID}    ${Add Number 1}
    Select From List By Label    ${Id Field}    ${Add Field}
    Select From List By Label    ${Id Add Contract Type}    ${Add Contact Type 1}
    Input Text    ${Id Add Signature Date}    ${Add Date 1}
    Input Text    ${Id Add Valid Since}    ${Add Date 1}
    Select From List By Label    ${Id Add Notice Period}    ${Add Notice Period 1}
    Input Text    ${Id Add Notice Period 2}    ${Number 1}
    Input Text    ${Id Add Total Contract Price Period}    ${Number 1}
    # Select From List By Label    ${Id Add Total Contract Price Period Currency}    ${Add Total Contract Price Period 1}
    Select From List By Label    ${Id Add Publishing Required}    ${Yes}
    # Select From List By Label    ${Id Add Applicable Law}    ${Add Number 1}
    # Select From List By Label    ${Id Add Subsidy}    ${Yes}
    Select From List By Label    ${Id Add Supp.payment}    ${Yes}
    Input Text    ${Id Contract Subject}    ${Contract Subject Name}
    Select From List By Label    ${Id Confidentiality}    ${Add Confidentiality}
    # Select From List By Label    ${Id Add Bank Account}    ${Add Number 1}
    Select From List By Label    ${Id Contract kind}    ${Contract kind1}
    Select From List By Label    ${Id Add Contract Status}    ${Add Contract Status 1}
    Input Text    ${Id Add Partner Signature Date}    ${Add Valid Date 1}
    Input Text    ${Id Add Valid Until}    ${Add Valid Date 1}
    Input Text    ${Id Add Effective Date}    ${Add Valid Date 1}
    Select From List By Label    ${Id Language}    ${Add Language}
    Select From List By Label    ${Id Add Published}    ${Yes}
    Input Text    ${Id Add Publishing Date}    ${Add Valid Date 1}
    Input Text    ${Id Add Tender Number}    ${Number 1}
    Select From List By Label    ${Id Add Tender}    ${Yes}
    Input Text    ${Id Add Tender Date}    ${Add Valid Date 1}
    Click Element    ${Id Contract Subject}
    Select From List By Label    ${Id Add Internal Contract Partner}    ${Add Internal Contract Partner 1}
    Select From List By Label    ${Id Add Primary responsible person}    ${Primary Responsible Person}
    Select From List By Label    ${Id Add Secondary responsible person}    ${Secondary Responsible Person}
    Select From List By Label    ${Id Add Organisational unit}    ${Add Organisational unit 1}
    Select From List By Label    ${Id Add Business case}    ${Add Business case 1}
    Input Text    ${Id Add Contact information}    ${Number 1}
    Input Text    ${Id Add Contract partner}    ${Add Contract partner 1}
    Wait Until Ready    xpath=//ul[contains(@class, "ui-autocomplete")]/li[1]
    Click Element    xpath=//ul[contains(@class, "ui-autocomplete")]/li[1]
    Input Text    ${Id Add Contact person}    ${Add Contact person 1}
    Select From List By Label    ${Id Add Responsible accountant}    ${Primary Responsible Person}
    Select From List By Label    ${Id Add Partner role}    ${Add Partner role 1}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Amount Per Year}
    Input Text    ${Id Add Amount Per Year}    ${Number 1}
    Select From List By Label    ${Id Add Amount Per Year Currency}    ${Add Total Contract Price Period 1}
    Input Text    ${Id Add Deposit}    ${Number 1}
    Select From List By Label    ${Id Add Deposit Currency}    ${Add Total Contract Price Period 1}
    Input Text    ${Id Add Interest}    ${Number 1}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method1}
    Select From List By Label    ${Id Add Documentation required}    ${Yes}
    # Input Text    ${Id Add Documentation required Date}    ${Add Date 1}
    Select From List By Label    ${Id Add Invoicing date}    ${Number 1}
    Select From List By Label    ${Id Add Payment interval}    ${Add Number 1}
    Input Text    ${Id Add Lent To}    ${Add Contact person 1}
    Input Text    ${Id Add Lent To Date}    ${Add Date 1}
    # Input Text    ${Id Add Maturity 2}    ${Number 1}
    Select From List By Label    ${Id Add Original Storage}    ${Add Original Storage 1}
    # Input Text    ${Id Add Order Number}    ${Number 1}
    Select From List By Label    ${Id Add Notice Required}    ${Yes}
    Input Text    ${Id Add Deposit Text}    ${Name}
    Input Text    ${Id Add Postponement Condition}    ${Name}
    Select From List By Label    ${Id Add Documentation Enclosed}    ${Yes}
    Select From List By Label    ${Id Add Irregular Payment}    ${Yes}
    Input Text    ${Id Add To Pay}    ${Number 1}
    Select From List By Label    ${Id Add To Pay Currency}    ${Add Total Contract Price Period 1}
    # Input Text    ${Add Maturity 1}    ${Add Number 1}
    # Input Text    ${Id Add Discount%}    ${Number 1}
    # Select From List By Label    ${Id Add Service Contract}    ${Yes}
    Input Text    ${Id Add Note}    ${Name}
    # Select From List By Label    ${Id Add GDPR}    ${Yes}
    # Select From List By Label    ${Id Add Framework Contract}    ${Yes}
    Click Element    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Id Add Note}

Create Contract Item 1
    Wait Until Element Is Not Visible    ${Add Maturity 1}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]
    Double Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]
    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Add Commodity/service}
    Select From List By Label    ${Id Add Commodity/service}    ${Add Commodity/service 1}
    # Select From List By Label    ${Id Add Item type}    ${Add Item type 1}
    Input Text    ${Id Add Quantity}    ${Number 1}
    Select From List By Label    ${Id Add Unit}    ${Add Unit 1}
    Input Text    ${Id Unit Price}    ${Maturity Number 1}
    Select From List By Label    ${Id Add Order}    ${Add Order 1}
    Select From List By Label    ${Id Add Currency}    ${Add Total Contract Price Period 1}
    Select From List By Label    ${Id Add Location}    ${Add Location 1}
    Input Text    ${Id Add Delivery Date}    ${Add Date 1}
    Input Text    ${Id Add Delivery To}    ${Add Valid Date 1}
    Input Text    ${Id Add Discount}    ${Number 1}
    Select From List By Label    ${Id Add Maturity}    ${Maturity Number 1}
    Input Text    ${Id Add VAT rate}    ${Number 1}
    # Select From List By Label    ${Id Add VAT Sign}    ${Add Item type 1}
    Select From List By Label    ${Id Add Business case}    ${Add Business case 1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Item Button}

Create Contract Test 2
    Go To Personal Space
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence 2}
    Input Text    ${Id Add Partner}    ${Add Number 2}
    Select From List By Label    ${Id Add VAT ID}    ${Add Number 2}
    Select From List By Label    ${Id Field}    ${Add Field 2}
    Select From List By Label    ${Id Add Contract Type}    ${Add Contact Type 2}
    Input Text    ${Id Add Signature Date}    ${Add Date 2}
    Input Text    ${Id Add Valid Since}    ${Add Date 2}
    Select From List By Label    ${Id Add Notice Period}    ${Add Notice Period 2}
    Input Text    ${Id Add Notice Period 2}    ${Number 2}
    Input Text    ${Id Add Total Contract Price Period}    ${Number 2}
    # Select From List By Label    ${Id Add Total Contract Price Period Currency}    ${Add Total Contract Price Period 2}
    Select From List By Label    ${Id Add Publishing Required}    ${Yes}
    # Select From List By Label    ${Id Add Applicable Law}    ${Add Number 2}
    # Select From List By Label    ${Id Add Subsidy}    ${Yes}
    Select From List By Label    ${Id Add Supp.payment}    ${Yes}
    Input Text    ${Id Contract Subject}    ${Contract Subject Name 2}
    Select From List By Label    ${Id Confidentiality}    ${Add Confidentiality 2}
    # Select From List By Label    ${Id Add Bank Account}    ${Add Number 2}
    Select From List By Label    ${Id Contract kind}    ${Contract kind2}
    Select From List By Label    ${Id Add Contract Status}    ${Add Contract Status 2}
    Input Text    ${Id Add Partner Signature Date}    ${Add Valid Date 2}
    Input Text    ${Id Add Valid Until}    ${Add Valid Date 2}
    Input Text    ${Id Add Effective Date}    ${Add Valid Date 2}
    Select From List By Label    ${Id Language}    ${Add Language 2}
    Select From List By Label    ${Id Add Published}    ${Yes}
    Input Text    ${Id Add Publishing Date}    ${Add Valid Date 2}
    Input Text    ${Id Add Tender Number}    ${Number 2}
    Select From List By Label    ${Id Add Tender}    ${Yes}
    Input Text    ${Id Add Tender Date}    ${Add Valid Date 2}
    Click Element    ${Id Contract Subject}
    Select From List By Label    ${Id Add Internal Contract Partner}    ${Add Internal Contract Partner 2}
    Select From List By Label    ${Id Add Primary responsible person}    ${Secondary Responsible Person}
    Select From List By Label    ${Id Add Secondary responsible person}    ${Primary Responsible Person}
    Select From List By Label    ${Id Add Organisational unit}    ${Add Organisational unit 2}
    Select From List By Label    ${Id Add Business case}    ${Add Business case 2}
    Input Text    ${Id Add Contact information}    ${Number 2}
    Input Text    ${Id Add Contract partner}    ${Add Contract partner 2}
    Wait Until Ready    xpath=//ul[contains(@class, "ui-autocomplete")]/li[1]
    Click Element    xpath=//ul[contains(@class, "ui-autocomplete")]/li[1]
    Input Text    ${Id Add Contact person}    ${Add Contact person 2}
    Select From List By Label    ${Id Add Responsible accountant}    ${Secondary Responsible Person}
    Select From List By Label    ${Id Add Partner role}    ${Add Partner role 2}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Amount Per Year}
    Input Text    ${Id Add Amount Per Year}    ${Number 2}
    Select From List By Label    ${Id Add Amount Per Year Currency}    ${Add Total Contract Price Period 2}
    Input Text    ${Id Add Deposit}    ${Number 2}
    Select From List By Label    ${Id Add Deposit Currency}    ${Add Total Contract Price Period 2}
    Input Text    ${Id Add Interest}    ${Number 2}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method2}
    Select From List By Label    ${Id Add Documentation required}    ${Yes}
    # Input Text    ${Id Add Documentation required Date}    ${Add Date 2}
    Select From List By Label    ${Id Add Invoicing date}    ${Number 2}
    Select From List By Label    ${Id Add Payment interval}    ${Add Number 2}
    Input Text    ${Id Add Lent To}    ${Add Contact person 2}
    Input Text    ${Id Add Lent To Date}    ${Add Date 2}
    # Input Text    ${Id Add Maturity 2}    ${Number 2}
    Select From List By Label    ${Id Add Original Storage}    ${Add Original Storage 2}
    # Input Text    ${Id Add Order Number}    ${Number 2}
    Select From List By Label    ${Id Add Notice Required}    ${Yes}
    Input Text    ${Id Add Deposit Text}    ${Name 2}
    Input Text    ${Id Add Postponement Condition}    ${Name 2}
    Select From List By Label    ${Id Add Documentation Enclosed}    ${Yes}
    Select From List By Label    ${Id Add Irregular Payment}    ${Yes}
    Input Text    ${Id Add To Pay}    ${Number 2}
    Select From List By Label    ${Id Add To Pay Currency}    ${Add Total Contract Price Period 2}
    # Input Text    ${Add Maturity 1}    ${Add Number 2}
    # Input Text    ${Id Add Discount%}    ${Number 2}
    # Select From List By Label    ${Id Add Service Contract}    ${Yes}
    Input Text    ${Id Add Note}    ${Name 2}
    # Select From List By Label    ${Id Add GDPR}    ${Yes}
    # Select From List By Label    ${Id Add Framework Contract}    ${Yes}
    Click Element    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Id Add Note}

Create Contract Item 2
    Wait Until Element Is Not Visible    ${Add Maturity 1}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name 2}"]
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name 2}"]
    Double Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name 2}"]
    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Add Commodity/service}
    Select From List By Label    ${Id Add Commodity/service}    ${Add Commodity/service 2}
    # Select From List By Label    ${Id Add Item type}    ${Add Item type 2}
    Input Text    ${Id Add Quantity}    ${Number 2}
    Select From List By Label    ${Id Add Unit}    ${Add Unit 2}
    Input Text    ${Id Unit Price}    ${Maturity Number 2}
    Select From List By Label    ${Id Add Order}    ${Add Order 2}
    Select From List By Label    ${Id Add Currency}    ${Add Total Contract Price Period 2}
    Select From List By Label    ${Id Add Location}    ${Add Location 2}
    Input Text    ${Id Add Delivery Date}    ${Add Date 2}
    Input Text    ${Id Add Delivery To}    ${Add Valid Date 2}
    Input Text    ${Id Add Discount}    ${Number 2}
    Select From List By Label    ${Id Add Maturity}    ${Maturity Number 2}
    Input Text    ${Id Add VAT rate}    ${Number 2}
    # Select From List By Label    ${Id Add VAT Sign}    ${Add Item type 2}
    Select From List By Label    ${Id Add Business case}    ${Add Business case 2}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Item Button}
    Go To Personal Space

Create Contract Test 3
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence 3}
    Input Text    ${Id Add Partner}    ${Add Number 3}
    Select From List By Label    ${Id Add VAT ID}    ${Add Number 3}
    Select From List By Label    ${Id Field}    ${Add Field}
    Select From List By Label    ${Id Add Contract Type}    ${Add Contact Type 3}
    Input Text    ${Id Add Signature Date}    ${Add Date 3}
    Input Text    ${Id Add Valid Since}    ${Add Date 3}
    Select From List By Label    ${Id Add Notice Period}    ${Add Notice Period 3}
    Input Text    ${Id Add Notice Period 2}    ${Number 3}
    Input Text    ${Id Add Total Contract Price Period}    ${Number 3}
    # Select From List By Label    ${Id Add Total Contract Price Period Currency}    ${Add Total Contract Price Period 3}
    Select From List By Label    ${Id Add Publishing Required}    ${No}
    # Select From List By Label    ${Id Add Applicable Law}    ${Add Number 3}
    # Select From List By Label    ${Id Add Subsidy}    ${Yes}
    Select From List By Label    ${Id Add Supp.payment}    ${Yes}
    Input Text    ${Id Contract Subject}    ${Contract Subject Name 3}
    Select From List By Label    ${Id Confidentiality}    ${Add Confidentiality 3}
    # Select From List By Label    ${Id Add Bank Account}    ${Add Number 3}
    Select From List By Label    ${Id Contract kind}    ${Contract kind3}
    Select From List By Label    ${Id Add Contract Status}    ${Add Contract Status 3}
    Input Text    ${Id Add Partner Signature Date}    ${Add Valid Date 3}
    Input Text    ${Id Add Valid Until}    ${Add Valid Date 3}
    Input Text    ${Id Add Effective Date}    ${Add Valid Date 3}
    Select From List By Label    ${Id Language}    ${Add Language 3}
    Select From List By Label    ${Id Add Published}    ${No}
    # Input Text    ${Id Add Publishing Date}    ${Add Valid Date 3}
    Input Text    ${Id Add Tender Number}    ${Number 3}
    Select From List By Label    ${Id Add Tender}    ${Yes}
    Input Text    ${Id Add Tender Date}    ${Add Valid Date 3}
    Click Element    ${Id Contract Subject}
    Select From List By Label    ${Id Add Internal Contract Partner}    ${Add Internal Contract Partner 3}
    Select From List By Label    ${Id Add Primary responsible person}    ${Secondary Responsible Person}
    Select From List By Label    ${Id Add Secondary responsible person}    ${Primary Responsible Person}
    Select From List By Label    ${Id Add Organisational unit}    ${Add Organisational unit 3}
    Select From List By Label    ${Id Add Business case}    ${Add Business case 3}
    Input Text    ${Id Add Contact information}    ${Number 3}
    Input Text    ${Id Add Contract partner}    ${Add Contract partner 3}
    Wait Until Ready    xpath=//ul[contains(@class, "ui-autocomplete")]/li[1]
    Click Element    xpath=//ul[contains(@class, "ui-autocomplete")]/li[1]
    Input Text    ${Id Add Contact person}    ${Add Contact person 3}
    Select From List By Label    ${Id Add Responsible accountant}    ${Secondary Responsible Person}
    Select From List By Label    ${Id Add Partner role}    ${Add Partner role 1}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Amount Per Year}
    Input Text    ${Id Add Amount Per Year}    ${Number 3}
    Select From List By Label    ${Id Add Amount Per Year Currency}    ${Add Total Contract Price Period 3}
    Input Text    ${Id Add Deposit}    ${Number 3}
    Select From List By Label    ${Id Add Deposit Currency}    ${Add Total Contract Price Period 3}
    Input Text    ${Id Add Interest}    ${Number 3}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method3}
    Select From List By Label    ${Id Add Documentation required}    ${No}
    # Input Text    ${Id Add Documentation required Date}    ${Add Date 3}
    Select From List By Label    ${Id Add Invoicing date}    ${Number 3}
    Select From List By Label    ${Id Add Payment interval}    ${Add Number 3}
    Input Text    ${Id Add Lent To}    ${Add Contact person 3}
    Input Text    ${Id Add Lent To Date}    ${Add Date 3}
    # Input Text    ${Id Add Maturity 2}    ${Number 3}
    Select From List By Label    ${Id Add Original Storage}    ${Add Original Storage 3}
    # Input Text    ${Id Add Order Number}    ${Number 3}
    Select From List By Label    ${Id Add Notice Required}    ${No}
    Input Text    ${Id Add Deposit Text}    ${Name 3}
    Input Text    ${Id Add Postponement Condition}    ${Name 3}
    Select From List By Label    ${Id Add Documentation Enclosed}    ${No}
    Select From List By Label    ${Id Add Irregular Payment}    ${No}
    Input Text    ${Id Add To Pay}    ${Number 3}
    Select From List By Label    ${Id Add To Pay Currency}    ${Add Total Contract Price Period 3}
    # Input Text    ${Add Maturity 1}    ${Add Number 3}
    # Input Text    ${Id Add Discount%}    ${Number 3}
    # Select From List By Label    ${Id Add Service Contract}    ${Yes}
    Input Text    ${Id Add Note}    ${Name 3}
    # Select From List By Label    ${Id Add GDPR}    ${No}
    # Select From List By Label    ${Id Add Framework Contract}    ${No}
    Click Element    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Id Add Note}

Create Contract Item 3
    Go To Personal Space
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name 3}"]
    Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name 3}"]
    Double Click Element    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name 3}"]
    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Contract Items}
    Wait Until Ready    ${Id Add Item Button}
    Click Button    ${Id Add Item Button}
    Wait Until Ready    ${Id Add Commodity/service}
    Select From List By Label    ${Id Add Commodity/service}    ${Add Commodity/service 3}
    # Select From List By Label    ${Id Add Item type}    ${Add Item type 3}
    Input Text    ${Id Add Quantity}    ${Number 3}
    Select From List By Label    ${Id Add Unit}    ${Add Unit 3}
    Input Text    ${Id Unit Price}    ${Maturity Number 3}
    Select From List By Label    ${Id Add Order}    ${Add Order 3}
    Select From List By Label    ${Id Add Currency}    ${Add Total Contract Price Period 3}
    Select From List By Label    ${Id Add Location}    ${Add Location 3}
    Input Text    ${Id Add Delivery Date}    ${Add Date 3}
    Input Text    ${Id Add Delivery To}    ${Add Valid Date 3}
    Input Text    ${Id Add Discount}    ${Number 3}
    Select From List By Label    ${Id Add Maturity}    ${Maturity Number 3}
    Input Text    ${Id Add VAT rate}    ${Number 3}
    # Select From List By Label    ${Id Add VAT Sign}    ${Add Item type 3}
    Select From List By Label    ${Id Add Business case}    ${Add Business case 3}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Item Button}

Create Contract Test 4
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Create Contract}
    Wait Until Element Is Not Visible    ${Please Wait}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Select From List By Label    ${Id Field}    ${Add Field}
    Select From List By Label    ${Id Confidentiality}    ${Add Confidentiality}
    Select From List By Label    ${Id Language}    ${Add Language 4}
    Input Text    ${Id Contract Subject}    ${Contract Subject Name4}
    Input Text    ${Id Add Partner}    ${Add Partner1}
    Select From List By Label    ${Id Contract kind}    ${Contract kind1}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Termination Method}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method1}
    Click Button    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Id Add Termination Method}
    Wait Until Element Is Not Visible    ${Please Wait}

Enable Fields
    Go To Fields
    Wait Until Ready    ${Own VAT ID Field}
    Click Element    ${Own VAT ID Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

    Wait Until Ready    ${Supp.payment Field}
    Click Element    ${Supp.payment Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

    Wait Until Ready    ${Tender Field}
    Click Element    ${Tender Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

    Wait Until Ready    ${Tender Number Field}
    Click Element    ${Tender Number Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

Disable Fields
    Go To Fields
    Wait Until Ready    ${Own VAT ID Field}
    Click Element    ${Own VAT ID Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

    Wait Until Ready    ${Supp.payment Field}
    Click Element    ${Supp.payment Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

    Wait Until Ready    ${Tender Field}
    Click Element    ${Tender Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

    Wait Until Ready    ${Tender Number Field}
    Click Element    ${Tender Number Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

Enable Or Add Data
    Wait Until Ready    ${Id Proposals}
    Click Element    ${Id Proposals}
    Go To VAT ID
    Enable Or Add VAT ID    ${Add Number 1}
    Enable Or Add VAT ID    ${Add Number 2}
    Enable Or Add VAT ID    ${Add Number 3}
    Wait Until Ready    ${Id Header Aux Data}
    Click Element    ${Id Header Aux Data}
    Go To Original Storage
    Enable Original Storage Or Add Original Storage    ${Add Original Storage 1}
    Enable Original Storage Or Add Original Storage    ${Add Original Storage 2}
    Enable Original Storage Or Add Original Storage    ${Add Original Storage 3}
    Go To Payment Interval
    Enable Payment Interval Or Add Payment Interval    ${Add Number 1}
    Enable Payment Interval Or Add Payment Interval    ${Add Number 2}
    Enable Payment Interval Or Add Payment Interval    ${Add Number 3}
    Go To Invoicing date
    Enable Invoicing date Or Add Invoicing date    ${Number 1}
    Enable Invoicing date Or Add Invoicing date    ${Number 2}
    Enable Invoicing date Or Add Invoicing date    ${Number 3}
    Wait Until Ready    ${Id Contract Items}
    Click Element    ${Id Contract Items}
    Go To Maturity
    Enable Maturity Or Add Maturity    ${Maturity Number 1}
    Enable Maturity Or Add Maturity    ${Maturity Number 2}
    Enable Maturity Or Add Maturity    ${Maturity Number 3}

Disable Data
    Wait Until Ready    ${Id Proposals}
    Click Element    ${Id Proposals}
    Go To VAT ID
    Disable VAT ID    ${Add Number 1}
    Disable VAT ID    ${Add Number 2}
    Disable VAT ID    ${Add Number 3}
    Wait Until Ready    ${Id Header Aux Data}
    Click Element    ${Id Header Aux Data}
    Go To Original Storage
    Disable Original Storage    ${Add Original Storage 1}
    Disable Original Storage    ${Add Original Storage 2}
    Disable Original Storage    ${Add Original Storage 3}
    Go To Payment Interval
    Disable Payment Interval    ${Add Number 1}
    Disable Payment Interval    ${Add Number 2}
    Disable Payment Interval    ${Add Number 3}
    Go To Invoicing date
    Disable Invoicing date    ${Number 1}
    Disable Invoicing date    ${Number 2}
    Disable Invoicing date    ${Number 3}
    Wait Until Ready    ${Id Contract Items}
    Click Element    ${Id Contract Items}
    Go To Maturity
    Disable Maturity    ${Maturity Number 1}
    Disable Maturity    ${Maturity Number 2}
    Disable Maturity    ${Maturity Number 3}

Go To VAT ID
    Wait Until Ready    ${Id VAT ID}
    Click Element    ${Id VAT ID}

Enable Or Add VAT ID
    [Arguments]    ${number}
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${number}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable VAT ID    ${number}
    ELSE
        Add VAT ID    ${number}
    END

Enable VAT ID
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit VAT ID Button}
    Click Button    ${Id Edit VAT ID Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Contract Type}

Add VAT ID
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add VAT ID Button}
    Click Button    ${Id Add VAT ID Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${number}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Contract Type}

Disable VAT ID
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit VAT ID Button}
    Click Button    ${Id Edit VAT ID Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Contract Type}

Go To Original Storage
    Wait Until Ready    ${Id Original Storage}
    Click Element    ${Id Original Storage}
    Wait Until Ready    ${Id Add Original Storage Button}

Enable Original Storage
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${number}"]
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Enable Original Storage Or Add Original Storage
    [Arguments]    ${number}
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${number}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Original Storage    ${number}
    ELSE
        Add Original Storage    ${number}
    END

Add Original Storage
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add Original Storage Button}
    Click Button    ${Id Add Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${number}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Disable Original Storage
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Original Storage Button}
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Go To Payment Interval
    Wait Until Ready    ${Id Payment Interval}
    Click Element    ${Id Payment Interval}
    Wait Until Ready    ${Id Add Payment Interval Button}

Enable Payment Interval
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${number}"]
    Click Button    ${Id Edit Payment Interval Button}
    Wait Until Ready    ${Id Add Field1}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Enable Payment Interval Or Add Payment Interval
    [Arguments]    ${number}
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${number}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Payment Interval    ${number}
    ELSE
        Add Payment Interval    ${number}
    END

Add Payment Interval
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add Payment Interval Button}
    Click Button    ${Id Add Payment Interval Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${number}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Disable Payment Interval
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Payment Interval Button}
    Click Button    ${Id Edit Payment Interval Button}
    Wait Until Ready    ${Id Add Field1}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Go To Invoicing date
    Wait Until Ready    ${Id Invoicing date}
    Click Element    ${Id Invoicing date}
    Wait Until Ready    ${Id Add Invoicing date Button}

Enable Invoicing date
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${number}"]
    Click Button    ${Id Edit Invoicing date Button}
    Wait Until Ready    ${Id Add Field1}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Enable Invoicing date Or Add Invoicing date
    [Arguments]    ${number}
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${number}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Invoicing date    ${number}
    ELSE
        Add Invoicing date    ${number}
    END

Add Invoicing date
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add Invoicing date Button}
    Click Button    ${Id Add Invoicing date Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${number}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Disable Invoicing date
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Invoicing date Button}
    Click Button    ${Id Edit Invoicing date Button}
    Wait Until Ready    ${Id Add Field1}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Go To Maturity
    Wait Until Ready    ${Id Maturity}
    Click Element    ${Id Maturity}
    Wait Until Ready    ${Id Add Maturity Button}

Enable Maturity
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${number}"]
    Click Button    ${Id Edit Maturity Button}
    Wait Until Ready    ${Id Create Maturity Description}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Create Maturity Description}

Enable Maturity Or Add Maturity
    [Arguments]    ${number}
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${number}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Maturity    ${number}
    ELSE
        Add Maturity    ${number}
    END

Add Maturity
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add Maturity Button}
    Click Button    ${Id Add Maturity Button}
    Wait Until Ready    ${Id Create Maturity}
    Input Text    ${Id Create Maturity}    ${number}
    Input Text    ${Id Create Maturity Description}    ${number}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Create Maturity Description}

Disable Maturity
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Maturity Button}
    Click Button    ${Id Edit Maturity Button}
    Wait Until Ready    ${Id Create Maturity Description}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Create Maturity Description}

Add Final Version
    Wait Until Ready    ${Contract Documents}
    Click Element    ${Contract Documents}
    Wait Until Ready    ${Id Add Document Button}
    Click Element    ${Id Add Document Button}
    Wait Until Ready    ${Id Add Document}
    Select From List By Index    ${Id Add Document}    1
    Choose File    ${Input File}    ${File Path}
    Wait Until Ready    ${Finish Button}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Document}
    Wait Until Ready    ${Id Final Version Button}
    Click Button    ${Id Final Version Button}
    Wait Until Ready    ${File xPath}
    Double Click Element    ${File xPath}
    Wait Until Ready    ${Create Final Version Button}
    Click Element    ${Create Final Version Button}
    Wait Until Element Is Not Visible    ${Please Wait}    30s

Get IDs From Table Column
    [Arguments]    ${column_index}
    ${elements}=    Get WebElements    xpath=//table[@id='search_results']//tbody/tr/td[${column_index}]
    ${ids}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        Append To List    ${ids}    ${text}
    END
    RETURN    ${ids}

Extract Number From ID
    [Arguments]    ${text}
    ${num}=    Replace String Using Regexp    ${text}    [^0-9]    ${EMPTY}
    ${num}=    Convert To Integer    ${num}
    RETURN    ${num}

Test Sorting Of Number Column
    Wait Until Ready    ${Contract Number}
    Click Element    ${Contract Number}
    Sleep    1s
    ${ids_desc}=    Get IDs From Table Column    2

    ${numbers_desc}=    Create List
    FOR    ${id}    IN    @{ids_desc}
        ${num}=    Extract Number From ID    ${id}
        Append To List    ${numbers_desc}    ${num}
    END

    ${expected_desc}=    Copy List    ${numbers_desc}
    Sort List    ${expected_desc}
    Should Be Equal    ${numbers_desc}    ${expected_desc}

    Click Element    ${Contract Number}
    Sleep    1s
    ${ids_asc}=    Get IDs From Table Column    2

    ${numbers_asc}=    Create List
    FOR    ${id}    IN    @{ids_asc}
        ${num}=    Extract Number From ID    ${id}
        Append To List    ${numbers_asc}    ${num}
    END

    ${expected_asc}=    Copy List    ${numbers_asc}
    Sort List    ${expected_asc}
    Reverse List    ${expected_asc}
    Should Be Equal    ${numbers_asc}    ${expected_asc}

Test Searching Of Contract Subject
    Wait Until Ready    ${Search Button}
    Click Element    ${Search Button}
    Wait Until Ready    ${Reset Button}
    Click Element    ${Reset Button}
    Wait Until Ready    ${Id Contract Subject}
    Input Text    ${Id Contract Subject}    ${Search Contract Subject 1}
    Click Element    ${Search Button 2}
    Wait Until Element Is Not Visible    ${Id Contract Subject}
    Wait Until Element Is Not Visible    ${Please Wait}
    Element Should Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[3][normalize-space(.)='${Contract Subject Name 4}']

    Wait Until Ready    ${Search Button}
    Click Element    ${Search Button}
    Wait Until Ready    ${Id Contract Subject}
    Input Text    ${Id Contract Subject}    ${Search Contract Subject 2}
    Click Element    ${Search Button 2}
    Wait Until Element Is Not Visible    ${Id Contract Subject}
    Element Should Not Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[3][normalize-space(.)='${Contract Subject Name 4}']
    Element Should Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[3][normalize-space(.)='${Contract Subject Name 3}']

Test Searching Of Partner Contract Number
    Wait Until Ready    ${Search Button}
    Click Element    ${Search Button}
    Wait Until Ready    ${Reset Button}
    Click Element    ${Reset Button}
    Wait Until Ready    ${Search Partner Contract Number}
    Input Text    ${Search Partner Contract Number}    ${Add Number 1}
    Input Text    ${Id Contract Subject}    ${Search Contract Subject 2}
    Click Element    ${Search Button 2}
    Wait Until Element Is Not Visible    ${Search Partner Contract Number}
    Element Should Not Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[6][normalize-space(.)='${Add Number 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[6][normalize-space(.)='${Add Number 1}']

    Wait Until Ready    ${Search Button}
    Click Element    ${Search Button}
    Wait Until Ready    ${Search Partner Contract Number}
    Input Text    ${Search Partner Contract Number}    ${Add Number 2}
    Click Element    ${Search Button 2}
    Wait Until Element Is Not Visible    ${Search Partner Contract Number}
    Element Should Not Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[6][normalize-space(.)='${Add Number 1}']
    Element Should Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[6][normalize-space(.)='${Add Number 2}']

Test Searching Of Field
    Wait Until Ready    ${Search Button}
    Click Element    ${Search Button}
    Wait Until Ready    ${Reset Button}
    Click Element    ${Reset Button}
    Wait Until Ready    ${Id Field}
    Select From List By Label    ${Id Field}    ${Add Field}
    Input Text    ${Id Contract Subject}    ${Search Contract Subject 2}
    Click Element    ${Search Button 2}
    Wait Until Element Is Not Visible    ${Id Field}
    Element Should Not Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[10][normalize-space(.)='${Add Field 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[10][normalize-space(.)='${Add Field}']

    Wait Until Ready    ${Search Button}
    Click Element    ${Search Button}
    Wait Until Ready    ${Id Field}
    Select From List By Label    ${Id Field}    ${Add Field 2}
    Click Element    ${Search Button 2}
    Wait Until Element Is Not Visible    ${Id Field}
    Element Should Not Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[10][normalize-space(.)='${Add Field}']
    Element Should Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[10][normalize-space(.)='${Add Field 2}']

Test Filter
    Wait Until Ready    ${Filter}
    Input Text    ${Filter}    ${Add Contract partner 3}
    Sleep    2
    Wait Until Ready    xpath=//table[@id='search_results']//tr/td[4][normalize-space(.)='${Search Partner}']
    Element Should Be Visible    xpath=//table[@id='search_results']//tr/td[4][normalize-space(.)='${Search Partner}']
    Element Should Not Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[4][normalize-space(.)='${Search Partner 2}']

    Click Element    ${Filter Reset}
    Wait Until Ready    ${Filter}
    Input Text    ${Filter}    ${EMPTY}
    Sleep    2
    Wait Until Ready    xpath=//table[@id='search_results']//tr/td[4][normalize-space(.)='${Search Partner}']
    Element Should Be Visible    xpath=//table[@id='search_results']//tr/td[4][normalize-space(.)='${Search Partner}']
    Element Should Be Visible
    ...    xpath=//table[@id='search_results']//tr/td[4][normalize-space(.)='${Search Partner 2}']

Test Contract Subject Sorting
    Wait Until Ready    ${Contract Subject}
    Click Element    ${Contract Subject}
    Sleep    1s
    ${desc_subjects}=    Get Column Text Values    3
    ${sorted_desc}=    Copy List    ${desc_subjects}
    Sort List    ${sorted_desc}
    Should Be Equal    ${desc_subjects}    ${sorted_desc}

    Click Element    ${Contract Subject}
    Sleep    1s
    ${asc_subjects}=    Get Column Text Values    3
    ${sorted_asc}=    Copy List    ${asc_subjects}
    Sort List    ${sorted_asc}
    Reverse List    ${sorted_asc}
    Should Be Equal    ${asc_subjects}    ${sorted_asc}

Get Column Text Values
    [Arguments]    ${column_index}
    ${elements}=    Get WebElements    xpath=//table[@id='search_results']//tbody/tr/td[${column_index}]
    ${values}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        Append To List    ${values}    ${text}
    END
    RETURN    ${values}

Test Field Sorting
    Wait Until Ready    ${Field}
    Click Element    ${Field}
    Sleep    1s
    ${desc_subjects}=    Get Column Text Values    10
    ${sorted_desc}=    Copy List    ${desc_subjects}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Should Be Equal    ${desc_subjects}    ${sorted_desc}

    Click Element    ${Field}
    Sleep    1s
    ${asc_subjects}=    Get Column Text Values    10
    ${sorted_asc}=    Copy List    ${asc_subjects}
    Sort List    ${sorted_asc}
    Should Be Equal    ${asc_subjects}    ${sorted_asc}

Test SAP Id Sorting
    Wait Until Ready    ${SAP Id}
    Click Element    ${SAP Id}
    Sleep    1s
    ${desc_prices}=    Get Price Values From Column    5
    ${sorted_desc}=    Copy List    ${desc_prices}
    Sort List    ${sorted_desc}
    Should Be Equal    ${desc_prices}    ${sorted_desc}

    Click Element    ${SAP Id}
    Sleep    1s
    ${asc_prices}=    Get Price Values From Column    5
    ${sorted_asc}=    Copy List    ${asc_prices}
    Sort List    ${sorted_asc}
    Reverse List    ${sorted_asc}
    Should Be Equal    ${asc_prices}    ${sorted_asc}

Get Price Values From Column
    [Arguments]    ${column_index}
    ${elements}=    Get WebElements    xpath=//table[@id='search_results']//tbody/tr/td[${column_index}]
    ${prices}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        ${text}=    Replace String    ${text}    ${SPACE}    ${EMPTY}
        ${text}=    Replace String    ${text}    ,    .
        ${num}=    Convert To Number    ${text}
        Append To List    ${prices}    ${num}
    END
    RETURN    ${prices}

Sort Column By Index
    [Arguments]    ${column_index}    ${as_number}=False    ${as_date}=False    ${as_boolean}=False
    ${header_xpath}=    Set Variable
    ...    //div[@id="search_results_wrapper"]//div[contains(@class,"dataTables_scrollHeadInner")]//tr/th[${column_index}]

    ${header_text}=    Get Text    xpath=${header_xpath}
    Log To Console    Clicking on header: ${header_text}
    Log    Řadím podle sloupce: ${header_text}
    Wait Until Element Is Visible    xpath=${header_xpath}
    Click Element    xpath=${header_xpath}
    Sleep    1s

    ${desc_values}=    Get Column Values    ${column_index}    ${as_number}    ${as_date}    ${as_boolean}
    ${sorted_desc}=    Copy List    ${desc_values}
    Sort List    ${sorted_desc}
    Should Be Equal    ${desc_values}    ${sorted_desc}

    Click Element    xpath=${header_xpath}
    Sleep    1s
    Wait Until Element Is Not Visible    ${Please Wait}

    ${asc_values}=    Get Column Values    ${column_index}    ${as_number}    ${as_date}    ${as_boolean}
    ${sorted_asc}=    Copy List    ${asc_values}
    Sort List    ${sorted_asc}
    Reverse List    ${sorted_asc}
    Should Be Equal    ${asc_values}    ${sorted_asc}

Get Column Values
    [Arguments]    ${column_index}    ${as_number}=False    ${as_date}=False    ${as_boolean}=False
    ${elements}=    Get WebElements    xpath=//table[@id='search_results']//tbody/tr/td[${column_index}]
    ${values}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        IF    '${as_number}' == 'True'
            ${text}=    Replace String    ${text}    ${SPACE}    ${EMPTY}
            ${text}=    Replace String    ${text}    ,    .
            ${text}=    Convert To Number    ${text}
        ELSE IF    '${as_date}' == 'True'
            ${text}=    Convert To Dates    ${text}
            ${text}=    Get From List    ${text}    0
        ELSE IF    '${as_boolean}' == 'True'
            ${text}=    Convert To Boolean Value    ${text}
        END
        Append To List    ${values}    ${text}
    END
    RETURN    ${values}

Convert To Dates
    [Arguments]    @{date_texts}
    ${dates}=    Create List
    FOR    ${text}    IN    @{date_texts}
        ${date}=    Convert Date    ${text}    date_format=%d.%m.%Y
        Append To List    ${dates}    ${date}
    END
    RETURN    ${dates}

Convert To Boolean Value
    [Arguments]    ${text}
    ${text}=    Strip String    ${text}
    IF    '${text}'=='Ano'    RETURN    1
    RETURN    0

Test Sorting Of Columns
    Wait Until Ready
    ...    xpath=//div[@id="search_results_wrapper"]//div[contains(@class,"dataTables_scrollHeadInner")]//tr/th[4]
    Click Element
    ...    xpath=//div[@id="search_results_wrapper"]//div[contains(@class,"dataTables_scrollHeadInner")]//tr/th[4]
    Test Sorting Of Number Column
    Sort Column By Index    3
    Sort Column By Index    4
    Sort Column By Index    5    as_number=True
    Sort Column By Index    6
    # Sort Column By Index    7
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[11][normalize-space(.)='${Contract kind1}']
    Sort Column By Index    8
    Sort Column By Index    9
    Test Field Sorting
    Sort Column By Index    11
    Scroll Element Into View    xpath=//table[@id='search_results']//tr/td[15][normalize-space(.)='${Search Date 2}']
    Sort Column By Index    12
    Sort Column By Index    13
    Sort Column By Index    14
    Sort Column By Index    15    as_date=True
    Scroll Element Into View    xpath=//table[@id='search_results']//tr/td[19][normalize-space(.)='${Search Date 2}']
    Sort Column By Index    16    as_date=True
    Sort Column By Index    17    as_date=True
    # Sort Column By Index    18
    Sort Column By Index    19    as_date=True
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[23][normalize-space(.)='${Search Notice Period}']
    Sort Column By Index    20    as_date=True
    Sort Column By Index    21    as_date=True
    # Sort Column By Index    22
    Sort Column By Index    23
    Scroll Element Into View    xpath=//table[@id='search_results']//tr/td[27][normalize-space(.)='${Name}']
    Sort Column By Index    24    as_number=True
    Sort Column By Index    25
    Sort Column By Index    26
    Sort Column By Index    27
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[31][normalize-space(.)='${Search Business Case ID}']
    Sort Column By Index    28
    Sort Column By Index    29
    Sort Column By Index    30
    Sort Column By Index    31    as_number=True
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[35][normalize-space(.)='${Search Amount Per Year}']
    # Sort Column By Index    32
    Sort Column By Index    33
    Sort Column By Index    34
    Sort Column By Index    35
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[40][normalize-space(.)='${Add Termination Method1}']
    Sort Column By Index    36    as_boolean=True
    Sort Column By Index    37
    Sort Column By Index    38    as_number=True
    # Sort Column By Index    39
    Sort Column By Index    40
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[45][normalize-space(.)='${Search To Pay}']
    Sort Column By Index    41
    Sort Column By Index    42    as_boolean=True
    Sort Column By Index    43    as_boolean=True
    Sort Column By Index    44
    Sort Column By Index    45
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[50][normalize-space(.)='${Number 2}']
    Sort Column By Index    46    as_boolean=True
    Sort Column By Index    47
    Sort Column By Index    48    as_boolean=True
    Sort Column By Index    49    as_boolean=True
    Sort Column By Index    50    as_number=True
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[53][normalize-space(.)='${Number 3}']
    # Sort Column By Index    51    as_boolean=True
    Sort Column By Index    52    as_date=True
    Sort Column By Index    53    as_number=True
    Create Contract Item 3
    Go To Search
    Wait Until Ready    xpath=//table[@id='search_results']//tr/td[53][normalize-space(.)='${Number 3}']
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[58][normalize-space(.)='${Add Total Contract Price Period 2}']
    Sort Column By Index    54
    Sort Column By Index    55    as_number=True
    Sort Column By Index    56
    Sort Column By Index    57    as_number=True
    Sort Column By Index    58
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[61][normalize-space(.)='${Add Location 1}']
    Sort Column By Index    59    as_number=True
    Sort Column By Index    60
    Sort Column By Index    61
    Scroll Element Into View
    ...    xpath=//table[@id='search_results']//tr/td[66][normalize-space(.)='${Search VAT Rate}']
    Sort Column By Index    62    as_date=True
    Sort Column By Index    63    as_date=True
    Sort Column By Index    64    as_number=True
    Sort Column By Index    65    as_number=True
    Sort Column By Index    66    as_number=True

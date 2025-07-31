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
${Contract Subject Name}                            dvTESTCONRACTDV
${Contract Subject Name 2}                          dvTESTDVCONRACT
${Contract Subject Name 3}                          dvTESTVDCONTRACT
${Contract Subject Name 4}                          CONRACTDVTET
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


*** Keywords ***
Search Setup
    Open Browser And Logged In

Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Go To Personal Space
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}

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
    Select From List By Label    ${Id Add Total Contract Price Period Currency}    ${Add Total Contract Price Period 1}
    Select From List By Label    ${Id Add Publishing Required}    ${Yes}
    Select From List By Label    ${Id Add Applicable Law}    ${Add Number 1}
    Select From List By Label    ${Id Add Subsidy}    ${Yes}
    Select From List By Label    ${Id Add Supp.payment}    ${Yes}
    Input Text    ${Id Contract Subject}    ${Contract Subject Name}
    Select From List By Label    ${Id Confidentiality}    ${Add Confidentiality}
    Select From List By Label    ${Id Add Bank Account}    ${Add Number 1}
    Select From List By Label    ${Id Contract kind}    ${Contract kind1}
    Select From List By Label    ${Id Add Contract Status}    ${Add Contract Status 1}
    Input Text    ${Id Add Partner Signature Date}    ${Add Valid Date 1}
    Input Text    ${Id Add Valid Until}    ${Add Valid Date 1}
    Input Text    ${Id Add Effective Date}    ${Add Valid Date 1}
    Select From List By Label    ${Id Language}    ${Add Language}
    Select From List By Label    ${Id Add Published}    ${Yes}
    Input Text    ${Id Add Publishing Date}    ${Add Valid Date 1}
    Select From List By Label    ${Id Add Tender}    ${Yes}
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
    Input Text    ${Id Add Documentation required Date}    ${Add Date 1}
    Select From List By Label    ${Id Add Invoicing date}    ${Number 1}
    Select From List By Label    ${Id Add Payment interval}    ${Add Number 1}
    Input Text    ${Id Add Lent To}    ${Add Contact person 1}
    Input Text    ${Id Add Lent To Date}    ${Add Date 1}
    Input Text    ${Id Add Maturity 2}    ${Number 1}
    Select From List By Label    ${Id Add Original Storage}    ${Add Original Storage 1}
    Input Text    ${Id Add Order Number}    ${Number 1}
    Select From List By Label    ${Id Add Notice Required}    ${Yes}
    Input Text    ${Id Add Deposit Text}    ${Name}
    Input Text    ${Id Add Postponement Condition}    ${Name}
    Select From List By Label    ${Id Add Documentation Enclosed}    ${Yes}
    Select From List By Label    ${Id Add Irregular Payment}    ${Yes}
    Input Text    ${Id Add To Pay}    ${Number 1}
    Select From List By Label    ${Id Add To Pay Currency}    ${Add Total Contract Price Period 1}
    Input Text    ${Add Maturity 1}    ${Add Number 1}
    Input Text    ${Id Add Discount%}    ${Number 1}
    Select From List By Label    ${Id Add Service Contract}    ${Yes}
    Input Text    ${Id Add Note}    ${Name}
    Select From List By Label    ${Id Add GDPR}    ${Yes}
    Select From List By Label    ${Id Add Framework Contract}    ${Yes}
    Click Element    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Id Add Framework Contract}

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
    Select From List By Label    ${Id Add Item type}    ${Add Item type 1}
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
    Select From List By Label    ${Id Add VAT Sign}    ${Add Item type 1}
    Select From List By Label    ${Id Add Business case}    ${Add Business case 1}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Item Button}
    Go To Personal Space

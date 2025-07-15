*** Settings ***
Documentation       This is a resource file for layout.
...                 Keywords defined here can be used where this "layout.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Library             Collections
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
${Timeout}                                          5s
${Timeout2}                                         1s
${No Path}                                          xpath=//button[normalize-space(.)="Ne"]
${Personal Space}                                   //a[@class="main_tabs" and @href="#tab_personal"]
${Settings}                                         //a[@class="main_tabs" and @href="#tab_settings"]
${Id Contract Items}                                settings_pl_items
${Name}                                             dvtest1
${Edited Name}                                      dvtestEdited
${Layout Button}                                    xpath=//button[contains(@class, "dt-button") and normalize-space(.)="Layout"]
${Select None Button}                               xpath=//input[@type="button" and @value="Zrušit vše"]
${Select All Button}                                xpath=//input[@type="button" and @value="Vybrat vše"]
${Contract Subject Name}                            TESTCONRACTDV
${Contract Subject Name2}                           CONRACTDVTEST
${Status Button}                                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Stav"]
${Status}                                           xpath=//th[contains(@class, "sorting_asc") and normalize-space(.)="Stav"]
${Updated Button}                                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Aktualizováno"]
${Updated}                                          xpath=//th[contains(@class, "sorting_asc") and normalize-space(.)="Aktualizováno"]
${Number Button}                                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Číslo"]
${Number}                                           xpath=//th[contains(@class, "sorting_asc") and normalize-space(.)="Číslo"]
${Number Partner}                                   xpath=//th[normalize-space(.)="Č.sml.partnera"]
${Number Partner Button}                            xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Č.sml.partnera"]
${Partner}                                          xpath=//th[normalize-space(.)="Partner"]
${Partner Button}                                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Partner"]
${Partner ID}                                       xpath=//th[normalize-space(.)="Partner ID"]
${Partner ID Button}                                xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Partner ID"]
${Contract Subject}                                 xpath=//th[normalize-space(.)="Předmět smlouvy"]
${Contract Subject Button}                          xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Předmět smlouvy"]
${Cmt}                                              xpath=//th[normalize-space(.)="Přip.už."]
${Cmt Button}                                       xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Přip.už."]
${Field}                                            xpath=//th[normalize-space(.)="Oblast"]
${Field Button}                                     xpath=(//button[normalize-space(.)="Oblast" and not(ancestor::div[contains(@style,"display: none")])])[1]
${Type}                                             xpath=//th[normalize-space(.)="Typ"]
${Type Button}                                      xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Typ"]
${Creator}                                          xpath=//th[normalize-space(.)="Pořizovatel"]
${Creator Button}                                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Pořizovatel"]
${Prim. Resp.}                                      xpath=//th[normalize-space(.)="Prim. odp. os."]
${Prim. Resp. Button}                               xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Prim. odp. os."]
${Sec. Resp.}                                       xpath=//th[normalize-space(.)="Sek. odp. os."]
${Sec. Resp. Button}                                xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Sek. odp. os."]
${Bank Account}                                     xpath=//th[normalize-space(.)="Bankovní spojení"]
${Bank Account Button}                              xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Bankovní spojení"]
${Accountant}                                       xpath=//th[normalize-space(.)="Účetní"]
${Accountant Button}                                xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Účetní"]
${Appl.law}                                         xpath=//th[normalize-space(.)="Rozh.právo"]
${Appl.law Button}                                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Rozh.právo"]
${Bonus}                                            xpath=//th[normalize-space(.)="Bonus"]
${Bonus Button}                                     xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Bonus"]
${Confidentiality}                                  xpath=//th[normalize-space(.)="Stupeň utajení"]
${Confidentiality Button}                           xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Stupeň utajení"]
${Contact Person}                                   xpath=//th[normalize-space(.)="Kontaktní osoba"]
${Contact Person Button}                            xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Kontaktní osoba"]
${Contract Price}                                   xpath=//th[normalize-space(.)="Výše plnění"]
${Contract Price Button}                            xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Výše plnění"]
${Contract Price Currency}                          xpath=//th[normalize-space(.)="Měna plnění"]
${Contract Price Currency Button}                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Měna plnění"]
${Creation Date}                                    xpath=//th[normalize-space(.)="Datum vytvoření"]
${Creation Date Button}                             xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Datum vytvoření"]
${Deposit}                                          xpath=//th[normalize-space(.)="Záloha"]
${Deposit Button}                                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Záloha"]
${Deposit Currency}                                 xpath=//th[normalize-space(.)="Záloha měna"]
${Deposit Currency Button}                          xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Záloha měna"]
${Deposit Text}                                     xpath=//th[normalize-space(.)="Text zálohy"]
${Deposit Text Button}                              xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Text zálohy"]
${Doc.enclosed}                                     xpath=//th[normalize-space(.)="Dok.doložena"]
${Doc.enclosed Button}                              xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Dok.doložena"]
${Doc.req.}                                         xpath=//th[normalize-space(.)="Dok.pož."]
${Doc.req. Button}                                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Dok.pož."]
${Doc.req.date}                                     xpath=//th[normalize-space(.)="Dok.pož.datum"]
${Doc.req.date Button}                              xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Dok.pož.datum"]
${Effective Date}                                   xpath=//th[normalize-space(.)="Datum účinnosti"]
${Effective Date Button}                            xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Datum účinnosti"]
${Eff.from sig Date}                                xpath=//th[normalize-space(.)="Účin.od podp."]
${Eff.from sig. Button}                             xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Účin.od podp."]
${Interest}                                         xpath=//th[normalize-space(.)="Úrok"]
${Interest Button}                                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Úrok"]
${Internal Contact}                                 xpath=//th[normalize-space(.)="Interní kontakt"]
${Internal Contact Button}                          xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Interní kontakt"]
${Int.part.}                                        xpath=//th[normalize-space(.)="Int.part."]
${Int.part Button}                                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Int.part."]
${Invoicing Date}                                   xpath=//th[normalize-space(.)="Termín fakturace"]
${Invoicing Date Button}                            xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Termín fakturace"]
${Irregular Payment}                                xpath=//th[normalize-space(.)="Platba nepravidelně"]
${Irregular Payment Button}                         xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Platba nepravidelně"]
${Kind}                                             xpath=//th[normalize-space(.)="Druh"]
${Kind Button}                                      xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Druh"]
${Language}                                         xpath=//th[normalize-space(.)="Jazyk smlouvy"]
${Language Button}                                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Jazyk smlouvy"]
${Lend Date}                                        xpath=//th[normalize-space(.)="Datum zapůjčení"]
${Lend Date Button}                                 xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Datum zapůjčení"]
${Lend To}                                          xpath=//th[normalize-space(.)="Půjčeno komu"]
${Lend To Button}                                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Půjčeno komu"]
${Maturity 1}                                       xpath=//th[normalize-space(.)="Splatnost 1"]
${Maturity 1 Button}                                xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Splatnost 1"]
${Maturity 2}                                       xpath=//th[normalize-space(.)="Splatnost 2"]
${Maturity 2 Button}                                xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Splatnost 2"]
${Note}                                             xpath=//th[normalize-space(.)="Poznámka"]
${Note Button}                                      xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Poznámka"]
${Notice Period}                                    xpath=//th[normalize-space(.)="Výpovědní lhůta"]
${Notice Period Button}                             xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Výpovědní lhůta"]
${Notice Period Unit}                               xpath=//th[normalize-space(.)="Období výpovědní lhůty"]
${Notice Period Unit Button}                        xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Období výpovědní lhůty"]
${Notice Required}                                  xpath=//th[normalize-space(.)="Nutná výpověď"]
${Notice Required Button}                           xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Nutná výpověď"]
${Order nr.}                                        xpath=//th[normalize-space(.)="Č.obj."]
${Order nr. Button}                                 xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Č.obj."]
${Org.Unit}                                         xpath=//th[normalize-space(.)="Org. jedn."]
${Org.Unit Button}                                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Org. jedn."]
${Origin}                                           xpath=//th[normalize-space(.)="Původ"]
${Origin Button}                                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Původ"]
${Own account}                                      xpath=//th[normalize-space(.)="Vlastní účet"]
${Own account Button}                               xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Vlastní účet"]
${Postponement Condition}                           xpath=//th[normalize-space(.)="Odkládací podmínka"]
${Postponement Condition Button}                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Odkládací podmínka"]
${Partner VAT ID}                                   xpath=//th[normalize-space(.)="DIČ Partnera"]
${Partner VAT ID Button}                            xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="DIČ Partnera"]
${Role}                                             xpath=//th[normalize-space(.)="Role"]
${Role Button}                                      xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Role"]
${Service Contract}                                 xpath=//th[normalize-space(.)="Servisní smlouva"]
${Service Contract Button}                          xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Servisní smlouva"]
${Status 2}                                         xpath=//th[normalize-space(.)="Stav"]
${Status 2 Button}                                  xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="93"]
${Original Storage}                                 xpath=//th[normalize-space(.)="Úložiště originálu"]
${Original Storage Button}                          xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Úložiště originálu"]
${Subsidy}                                          xpath=//th[normalize-space(.)="Dotace"]
${Subsidy Button}                                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Dotace"]
${Supp.payment}                                     xpath=//th[normalize-space(.)="Platba dod."]
${Supp.payment Button}                              xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Platba dod."]
${Tender}                                           xpath=//th[normalize-space(.)="Výběrové řízení"]
${Tender Button}                                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Výběrové řízení"]
${Termination Method}                               xpath=//th[normalize-space(.)="Metoda ukončení"]
${Termination Method Button}                        xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Metoda ukončení"]
${To Pay}                                           xpath=//th[normalize-space(.)="K platbě"]
${To Pay Button}                                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="K platbě"]
${To Pay Currency}                                  xpath=//th[normalize-space(.)="K platbě měna"]
${To Pay Currency Button}                           xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="K platbě měna"]
${To Pay Interval}                                  xpath=//th[normalize-space(.)="K platbě int."]
${To Pay Interval Button}                           xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="K platbě int."]
${Valid}                                            xpath=//th[normalize-space(.)="Platná"]
${Valid Button}                                     xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Platná"]
${Valid Since}                                      xpath=//th[normalize-space(.)="Platnost od"]
${Valid Since Button}                               xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Platnost od"]
${Valid Until}                                      xpath=//th[normalize-space(.)="Platnost do"]
${Valid Until Button}                               xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Platnost do"]
${VAT ID}                                           xpath=//th[normalize-space(.)="DIČ"]
${VAT ID Button}                                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="DIČ"]
${Amount Per Year}                                  xpath=//th[normalize-space(.)="Částka za rok"]
${Amount Per Year Button}                           xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Částka za rok"]
${Amount Per Year Currency}                         xpath=//th[normalize-space(.)="Částka za rok měna"]
${Amount Per Year Currency Button}                  xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Částka za rok měna"]
${Item}                                             xpath=//th[normalize-space(.)="Položka"]
${Item Button}                                      xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="113"]
${Quantity}                                         xpath=//th[normalize-space(.)="Množství"]
${Quantity Button}                                  xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="114"]
${Unit}                                             xpath=//th[normalize-space(.)="m.j."]
${Unit Button}                                      xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="115"]
${Unit Price}                                       xpath=//th[normalize-space(.)="Cena/m.j."]
${Unit Price Button}                                xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="116"]
${Price}                                            xpath=//th[normalize-space(.)="Cena"]
${Price Button}                                     xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="117"]
${Currency}                                         xpath=//th[normalize-space(.)="Měna"]
${Currency Button}                                  xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="118"]
${Location}                                         xpath=//th[normalize-space(.)="Místo plnění"]
${Location Button}                                  xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="120"]
${Delivery Date}                                    xpath=//th[normalize-space(.)="Datum dodání"]
${Delivery Date Button}                             xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="121"]
${Delivery To}                                      xpath=//th[normalize-space(.)="Dodání do"]
${Delivery To Button}                               xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="122"]
${Discount}                                         xpath=//th[normalize-space(.)="Sleva"]
${Discount Button}                                  xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="123"]
${Maturity}                                         xpath=//th[normalize-space(.)="Splatnost"]
${Maturity Button}                                  xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="124"]
${VAT Rate}                                         xpath=//th[normalize-space(.)="Sazba DPH"]
${VAT Rate Button}                                  xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="125"]
${Item Type}                                        xpath=//th[normalize-space(.)="Typ položky"]
${Item Type Button}                                 xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="126"]
${VAT Sign}                                         xpath=//th[normalize-space(.)="Znak DPH"]
${VAT Sign Button}                                  xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="140"]
${Margin}                                           xpath=//th[normalize-space(.)="Marže"]
${Margin Button}                                    xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="147"]
${GDPR}                                             xpath=//th[normalize-space(.)="GDPR"]
${GDPR Button}                                      xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="148"]
${Framework Contract}                               xpath=//th[normalize-space(.)="Rámcová smlouva"]
${Framework Contract Button}                        xpath=//button[contains(@class,"buttons-columnVisibility") and @data-cv-idx="149"]
${Delete Contract Button}                           xpath=//div[@id="tbl_menu"]//ul[contains(@class,"cm_personal_tbl")]//a[@href="#contract_delete_file"]
${Id Number Sequence}                               c_number
${Add Field}                                        Občanské právo
${Add Confidentiality}                              Přísně tajné
${Contract kind1}                                   Kupní smlouva - § 588 - 610
${Contract kind2}                                   Nájemní smlouva - § 663 - 723
${Contract kind3}                                   Pojistná smlouva - § 788 - 828
${Add Language}                                     Čeština
${Id Field}                                         c_legalfield
${Id Confidentiality}                               c_confid
${Id Contract kind}                                 c_kind
${Number Sequence}                                  ISSTEST
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
${Own Bank Field}                                   xpath=//tr[td[normalize-space(.)='Vlastní bankovní spojení']]
${Own VAT ID Field}                                 xpath=//tr[td[normalize-space(.)='Vlastní DIČ']]
${GDPR Field}                                       xpath=//tr[td[normalize-space(.)='GDPR']]
${Framework Contract Field}                         xpath=//tr[td[normalize-space(.)='Rámcová smlouva']]
${Item Type Field}                                  xpath=//tr[td[normalize-space(.)='Typ položky']]
${VAT Sign Field}                                   xpath=//tr[td[normalize-space(.)='Znak DPH']]
${Id Administration and Configuration}              admin_config
${Id Fields}                                        settings_custom_fields
${Id Fields Edit Button}                            ts_edit_custom_fields_btn
${Visibility1}                                      //label[@for="s_visible"]
${Visibility2}                                      //label[@for="s_invisible"]
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
${Contract Type Checkbox}                           xpath=//input[@type='checkbox' and @id='s_disabled']
${Id Main Data}                                     ui-id-14
${Id Bank Account}                                  settings_bank_account
${Id Add Bank Account Button}                       ts_add_bank_account_btn
${Id Edit Bank Account Button}                      ts_edit_bank_account_btn
${Id Select Bank Account}                           c_account
${Id Applicable Law}                                settings_appl_law
${Id Add Applicable Law Button}                     ts_add_appl_law_btn
${Id Edit Applicable Law Button}                    ts_edit_appl_law_btn
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
${Add Business case 1}                              Nákup služeb
${Add Business case 2}                              Prodej licencí
${Add Business case 3}                              Nákup HW
${Add Partner role 1}                               Dodavatel (dodavatel)
${Add Partner role 2}                               Odběratel (dodavatel)
${Add Contract partner 1}                           Agrofert,
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
${Id Payment Interval}                              settings_interval
${Id Edit Payment Interval Button}                  ts_edit_interval_btn
${Id Add Payment Interval Button}                   ts_add_interval_btn
${Id Invoicing date}                                settings_inv_date
${Id Edit Invoicing date Button}                    ts_edit_inv_date_btn
${Id Add Invoicing date Button}                     ts_add_inv_date_btn
${Id Maturity}                                      settings_maturity
${Id Edit Maturity Button}                          ts_edit_maturity_btn
${Id Add Maturity Button}                           ts_add_maturity_btn
${Id Add Maturity}                                  c_maturity
${Id Create Maturity}                               s_maturity
${Id Create Maturity Description}                   s_description
${Maturity Number 1}                                0525
${Maturity Number 2}                                1212
${Maturity Number 3}                                3102
${Contract Items}                                   xpath=//a[@href="#tc_contract_items" and contains(@class, "sub_tabs")]
${Id Add Document Button}                           tc_add_document_btn
${Id Add Item Button}                               tc_add_item_btn
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
${Add Order 2}                                      c_order
${Add Order 3}                                      c_order
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
${Id Item type}                                     settings_item_type
${Id Edit Item type Button}                         ts_edit_item_type_btn
${Id Add Item type Button}                          ts_add_item_type_btn
${Id Add Item type}                                 c_item_type
${Add Item type 1}                                  dvt
${Add Item type 2}                                  tdv
${Add Item type 3}                                  dovt


*** Keywords ***
Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

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
    Click Element    ${Maturity 2 Button}
    Click Element    ${Note Button}
    Click Element    ${Notice Period Button}
    Click Element    ${Notice Period Unit Button}
    Click Element    ${Notice Required Button}
    Click Element    ${Order nr. Button}
    Click Element    ${Org.Unit Button}
    Click Element    ${Origin Button}
    Click Element    ${Own account Button}
    Click Element    ${Postponement Condition Button}
    Click Element    ${Partner VAT ID Button}
    Click Element    ${Role Button}
    Click Element    ${Service Contract Button}
    Click Element    ${Status 2 Button}
    Click Element    ${Original Storage Button}
    Click Element    ${Subsidy Button}
    Click Element    ${Supp.payment Button}
    Click Element    ${Tender Button}
    Click Element    ${Termination Method Button}
    Click Element    ${To Pay Button}
    Click Element    ${To Pay Currency Button}
    Click Element    ${To Pay Interval Button}
    Click Element    ${Valid Button}
    Click Element    ${Valid Since Button}
    Click Element    ${Valid Until Button}
    Click Element    ${VAT ID Button}
    Click Element    ${Amount Per Year Button}
    Click Element    ${Amount Per Year Currency Button}
    Click Element    ${Item Button}
    Click Element    ${Quantity Button}
    Click Element    ${Unit Button}
    Click Element    ${Unit Price Button}
    Click Element    ${Price Button}
    Click Element    ${Currency Button}
    Click Element    ${Location Button}
    Click Element    ${Delivery Date Button}
    Click Element    ${Delivery To Button}
    Click Element    ${Discount Button}
    Click Element    ${Maturity Button}
    Click Element    ${VAT Rate Button}
    Click Element    ${Item Type Button}
    Click Element    ${VAT Sign Button}
    Click Element    ${Margin Button}
    Click Element    ${GDPR Button}
    Click Element    ${Framework Contract Button}
    Sleep    3

Enable Fields
    Go To Fields
    Wait Until Ready    ${Own Bank Field}
    Click Element    ${Own Bank Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}

    Wait Until Ready    ${Own VAT ID Field}
    Click Element    ${Own VAT ID Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}

    Wait Until Ready    ${GDPR Field}
    Click Element    ${GDPR Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}

    Wait Until Ready    ${Framework Contract Field}
    Click Element    ${Framework Contract Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}

    Wait Until Ready    ${Item Type Field}
    Click Element    ${Item Type Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}

    Wait Until Ready    ${VAT Sign Field}
    Click Element    ${VAT Sign Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}

Disable Fields
    Go To Fields
    Wait Until Ready    ${Own Bank Field}
    Click Element    ${Own Bank Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

    Wait Until Ready    ${Own VAT ID Field}
    Click Element    ${Own VAT ID Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

    Wait Until Ready    ${GDPR Field}
    Click Element    ${GDPR Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

    Wait Until Ready    ${Framework Contract Field}
    Click Element    ${Framework Contract Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

    Wait Until Ready    ${Item Type Field}
    Click Element    ${Item Type Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

    Wait Until Ready    ${VAT Sign Field}
    Click Element    ${VAT Sign Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}

Create Contract Test
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
    Input Text    ${Id Add Note}    ${Name}
    Click Element    ${Create Contract File Button}

Create Contract Item
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
    Select From List By Label    ${Id Add Business case}    ${Add Business case 1}
    Sleep    4
    Click Element    ${Finish Button}

Test
    Go To Settings
    Wait Until Ready    ${Id Main Data}
    Click Element    ${Id Main Data}

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

Add VAT ID
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add VAT ID Button}
    Click Button    ${Id Add VAT ID Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${number}
    Click Element    ${Finish Button}

Disable VAT ID
    [Arguments]    ${number}
    # Go To VAT ID
    Wait Until Ready    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_vatid_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit VAT ID Button}
    Click Button    ${Id Edit VAT ID Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Bank Account
    Wait Until Ready    ${Id Bank Account}
    Click Element    ${Id Bank Account}

Enable Bank Account Or Add Bank Account
    [Arguments]    ${number}
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${number}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Bank Account    ${number}
    ELSE
        Add Bank Account    ${number}
    END

Enable Bank Account
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Bank Account Button}
    Click Button    ${Id Edit Bank Account Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Bank Account
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add Bank Account Button}
    Click Button    ${Id Add Bank Account Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${number}
    Click Element    ${Finish Button}

Disable Bank Account
    [Arguments]    ${number}
    # Go To Bank Account
    Wait Until Ready    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Bank Account Button}
    Click Button    ${Id Edit Bank Account Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Applicable Law
    Wait Until Ready    ${Id Applicable Law}
    Click Element    ${Id Applicable Law}

Enable Applicable Law Or Add Applicable Law
    [Arguments]    ${number}
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${number}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Applicable Law    ${number}
    ELSE
        Add Applicable Law    ${number}
    END

Enable Applicable Law
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Applicable Law Button}
    Click Button    ${Id Edit Applicable Law Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Add Applicable Law
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add Applicable Law Button}
    Click Button    ${Id Add Applicable Law Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${number}
    Click Element    ${Finish Button}

Disable Applicable Law
    [Arguments]    ${number}
    # Go To Applicable Law
    Wait Until Ready    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Applicable Law Button}
    Click Button    ${Id Edit Applicable Law Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Aux Data
    Wait Until Ready    ${Id Header Aux Data}
    Click Element    ${Id Header Aux Data}

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

Disable Original Storage
    [Arguments]    ${number}
    # Go To Original Storage
    Wait Until Ready    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_storage_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Original Storage Button}
    Click Button    ${Id Edit Original Storage Button}
    Wait Until Ready    ${Id Add Field1}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

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

Disable Payment Interval
    [Arguments]    ${number}
    Go To Payment Interval
    Wait Until Ready    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_interval_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Payment Interval Button}
    Click Button    ${Id Edit Payment Interval Button}
    Wait Until Ready    ${Id Add Field1}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

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

Disable Invoicing date
    [Arguments]    ${number}
    Go To Invoicing date
    Wait Until Ready    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_inv_date_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Invoicing date Button}
    Click Button    ${Id Edit Invoicing date Button}
    Wait Until Ready    ${Id Add Field1}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Maturity
    Wait Until Ready    ${Id Contract Items}
    Click Element    ${Id Contract Items}
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

Disable Maturity
    [Arguments]    ${number}
    # Go To Maturity
    Wait Until Ready    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_maturity_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Maturity Button}
    Click Button    ${Id Edit Maturity Button}
    Wait Until Ready    ${Id Create Maturity Description}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Go To Item type
    Wait Until Ready    ${Id Item type}
    Click Element    ${Id Item type}
    Wait Until Ready    ${Id Add Item type Button}

Enable Item type
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${number}"]
    Click Button    ${Id Edit Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

Enable Item type Or Add Item type
    [Arguments]    ${number}
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${number}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable Item type    ${number}
    ELSE
        Add Item type    ${number}
    END

Add Item type
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add Item type Button}
    Click Button    ${Id Add Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${number}
    Click Element    ${Finish Button}

Disable Item type
    [Arguments]    ${number}
    # Go To Item type
    Wait Until Ready    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Item type Button}
    Click Button    ${Id Edit Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}

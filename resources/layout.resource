*** Settings ***
Documentation       This is a resource file for layout.
...                 Keywords defined here can be used where this "layout.resource" is loaded.

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
${Id Contract Items}                                settings_pl_items
${Name}                                             dvtest1
${Name 2}                                           testd1
${Name 3}                                           vtest1
${Edited Name}                                      dvtestEdited
${Layout Button}                                    xpath=//button[contains(@class, "dt-button") and normalize-space(.)="Layout"]
${Select None Button}                               xpath=//input[@type="button" and @value="Zrušit vše"]
${Select All Button}                                xpath=//input[@type="button" and @value="Vybrat vše"]
${Contract Subject Name}                            dvTESTCONRACTDV
${Contract Subject Name 2}                          dvTESTDVCONRACT
${Contract Subject Name 3}                          dvTESTVDCONTRACT
${Contract Subject Name 4}                          CONRACTDVTET
${Status Button}                                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Stav"]
${Status}                                           xpath=//th[@data-column-index="93"]
${Updated Button}                                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Aktualizováno"]
${Updated}                                          xpath=//th[normalize-space(.)="Aktualizováno"]
${Number Button}                                    xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Číslo"]
${Number}                                           xpath=//th[normalize-space(.)="Číslo"]
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
${Field Button}                                     xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Oblast"]
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
${Lent To}                                          xpath=//th[normalize-space(.)="Půjčeno komu"]
${Lent To Button}                                   xpath=//button[contains(@class, "buttons-columnVisibility") and normalize-space(.)="Půjčeno komu"]
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
${Id Item type}                                     settings_item_type
${Id Edit Item type Button}                         ts_edit_item_type_btn
${Id Add Item type Button}                          ts_add_item_type_btn
${Id Add Item type}                                 c_item_type
${Add Item type 1}                                  dvt
${Add Item type 2}                                  tdv
${Add Item type 3}                                  dovt
${Id VAT Sign}                                      settings_item_vatsign
${Id Edit VAT Sign Button}                          ts_edit_item_vatsign_btn
${Id Add VAT Sign Button}                           ts_add_item_vatsign_btn
${Id Add VAT Sign}                                  c_vatsign
${Id Proposals}                                     proposals
${Id Add GDPR}                                      c_gdpr
${Id Add Framework Contract}                        c_fwc
${Id Search Status}                                 s_text_info
${Search Status}                                    Chybí finální znění
${Missing Item}                                     xpath=//span[@class="cs_red" and normalize-space(.)="Chybí položka"]
${Id Search Number Parner}                          s_text_pnumber
${Search Number Parner}                             7189
${Id Saved Layouts}                                 dt_saved_layouts
${Id Layout Name}                                   dt_layout_name
${Id Save Layout Button}                            save_layout_btn
${Id Load Layout Button}                            load_layout_btn
${Id Search Number}                                 s_text_number
${Id Search Partner}                                s_text_partner
${Search Partner}                                   Primagra, a.s.
${Search Partner 2}                                 AGROFERT, a.s.
${Search Partner ID}                                1525
${Id Search Partner ID}                             s_text_partner_id
${Partner ID 1}                                     1648
${Id Search Contract Subject}                       s_text_subject
${Id Search Field}                                  s_text_field
${Id Search Type}                                   s_text_type
${Id Search Primary Resp.}                          s_text_primary_resp
${Id Search Secondary Resp.}                        s_text_sec_resp
${Id Search Bank Account}                           s_text_account
${Search Bank Account}                              1259974001/2700
${Add Bank Account}                                 1013034060/5500
${Id Search Accountant}                             s_text_accountant
${Id Search Appl. Law}                              s_text_appl_law
${Id Search Bonus}                                  s_decimal_bonus
${Add Bonus}                                        4,00
${Add Bonus 2}                                      4.00
${Add Bonus 3}                                      3,00
${Add Bonus 4}                                      3.00
${Add Bonus 5}                                      5,00
${Id Search Confidentiality}                        s_text_conf
${Id Search Contact Person}                         s_text_contact_person
${Contract Price 2}                                 15 510,00
${Contract Price 3}                                 1 575,00
${Id Search Contract Price}                         s_decimal_contract_price
${Id Search Contract Price Currency}                s_text_contract_price_currency
${Id Search Deposit}                                s_decimal_deposit
${Id Search Deposit Currency}                       s_text_deposit_currency
${Id Search Deposit Text}                           s_text_deposit_text
${Id Search Doc.enclosed}                           s_yesno_doc_enclosed
${Search Date 1}                                    09.09.2025
${Search Date 2}                                    06.08.2025
${Search Date 3}                                    29.08.2025
${Search Date 4}                                    27.07.2025
${Id Search Doc.req.}                               s_yesno_doc_required
${Id Search Doc.req.date From}                      s_datefrom_doc_required_date
${Id Search Doc.req.date To}                        s_dateto_doc_required_date
${Id Search Effective Date From}                    s_datefrom_effective_date
${Id Search Effective Date To}                      s_dateto_effective_date
${Id Search Eff.from sig Date}                      s_yesno_effective_from_signature
${Edit Contract Button}                             xpath=//div[@id="tbl_menu"]//ul[contains(@class,"cm_personal_tbl")]//a[@href="#contract_edit_data"]
${Effective Date CheckBox}                          c_effective_from_sig
${Update Contract File}                             xpath=//button[normalize-space(.)="Aktualizovat smluvní složku"]
${Id Search Interest}                               s_decimal_interest
${Id Search Internal Contact}                       s_text_internal_contact
${Id Search Int.part.}                              s_text_intpart
${Id Search Invoicing Date}                         s_text_invoicing_date
${Search Invoicing Date}                            4 -
${Search Invoicing Date 2}                          3 -
${Id Search Irregular Payment}                      s_yesno_irregular_payment
${Id Search Kind}                                   s_text_kind
${Id Search Language}                               s_text_lang
${Id Search Lend Date Date From}                    s_datefrom_lend_date
${Id Search Lend Date Date To}                      s_dateto_lend_date
${Id Search Lent To}                                s_text_lent_to
${Id Search Maturity 1}                             s_text_maturity1
${Id Search Maturity 2}                             s_text_maturity2
${Id Search Note}                                   s_text_note
${Id Search Notice Period}                          s_text_notice_period
${Id Search Notice Period Unit}                     s_text_not_per_unt
${Search Notice Period}                             měsíc
${Search Notice Period 2}                           den
${Id Search Notice Required}                        s_yesno_notice_required
${Id Search Order nr.}                              s_text_order_nr
${Id Search Org.Unit}                               s_text_org_unit
${Search Role Partner}                              Dodavatel
${Search Role Partner 2}                            Odběratel
${Id Search Own account}                            s_text_own_account
${Id Search Postponement Condition}                 s_text_postponement_condition
${Add Partner VAT ID 1}                             CZ45148155
${Add Partner VAT ID 2}                             CZ26185610
${Id Search Partner VAT ID}                         s_text_pvatid
${Id Search Role}                                   s_text_role
${Id Add Service Contract}                          c_service_contract
${Id Search Service Contract}                       s_yesno_service_contract
${Id Search Status 2}                               s_text_status
${Id Select Original Storage}                       xpath=//th[@data-id="storage"]//button[contains(@class,"ui-multiselect")]
${Select Original Storage}                          xpath=//ul[contains(@class, "ui-multiselect-checkboxes")]//label[contains(., 'dtest')]/input
${Original Storage Close Button}                    xpath=//span[contains(@class, 'ui-icon-circle-close')]
${Id Add Subsidy}                                   c_subsidy
${Id Add Supp.payment}                              c_supp_payment
${Id Add Tender}                                    c_tender
${Id Search Subsidy}                                s_yesno_subsidy
${Id Search Supp.payment}                           s_yesno_supp_payment
${Id Search Tender}                                 s_yesno_tender
${Id Search Termination Method}                     s_text_termination_method
${Id Search To Pay}                                 s_decimal_topay
${Id Search To Pay Currency}                        s_text_topay_currency
${Id Search To Pay Interval}                        s_text_topay_interval
${Id Search Valid Since From}                       s_datefrom_valid_since
${Id Search Valid Since To}                         s_dateto_valid_since
${Id Search Valid Until From}                       s_datefrom_valid_until
${Id Search Valid Until To}                         s_dateto_valid_until
${Id Search VAT ID}                                 s_text_vat_id
${Id Search Amount Per Year}                        s_decimal_year_amount
${Id Search Amount Per Year Currency}               s_text_year_amount_currency
${Id Search Item}                                   s_text_item
${Id Search Quantity}                               s_text_quantity
${Id Search Unit}                                   s_text_unit
${Search Unit Price}                                3 102,00
${Search Unit Price 2}                              1 212,00
${Id Search Unit Price}                             s_decimal_unit_price
${Id Search Price}                                  s_decimal_price
${Id Search Currency}                               s_text_currency
${Id Search Location}                               s_text_location
${Id Search Delivery Date From}                     s_datefrom_delivery
${Id Search Delivery Date To}                       s_dateto_delivery
${Id Search Delivery To From}                       s_datefrom_delivery_to
${Id Search Delivery To}                            s_dateto_delivery_to
${Id Search Discount}                               s_text_discount
${Id Search Maturity}                               s_text_maturity
${Id Search VAT Rate}                               s_decimal_vat_rate
${Id Search Item Type}                              s_text_item_type
${Id Search VAT Sign}                               s_text_vatsign
${Id Search GDPR}                                   s_yesno_gdpr
${Id Search Framework Contract}                     s_yesno_framework_contract


*** Keywords ***
Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}
    Wait Until Element Is Not Visible    ${Please Wait}

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

Go To Personal Space
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}

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
    Wait Until Element Is Not Visible    ${Delete Button}

Delete Contract
    Wait Until Ready    ${Delete Contract Button}
    Click Element    ${Delete Contract Button}
    Wait Until Ready    ${Delete Button}
    Click Button    ${Delete Button}

Create Contract
    Wait Until Ready    ${Create Contract}
    Wait Until Element Is Not Visible    ${Please Wait}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Select From List By Label    ${Id Number Sequence}    ${Number Sequence}
    Select From List By Label    ${Id Field}    ${Add Field}
    Select From List By Label    ${Id Confidentiality}    ${Add Confidentiality}
    Select From List By Label    ${Id Language}    ${Add Language 4}

Create Contract Test 4
    Wait Until Element Is Not Visible    ${Please Wait}
    Create Contract
    Input Text    ${Id Contract Subject}    ${Contract Subject Name4}
    Input Text    ${Id Add Partner}    ${Add Partner1}
    Select From List By Label    ${Id Contract kind}    ${Contract kind1}
    Click Element    ${Other Data Path}
    Wait Until Ready    ${Id Add Termination Method}
    Input Text    ${Id Add Termination Method}    ${Add Termination Method1}
    Click Button    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Id Add Termination Method}
    Wait Until Element Is Not Visible    ${Please Wait}

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

Layout Setup
    Open Browser And Logged In
    Enable Fields
    Enable Or Add Data
    Go To Personal Space
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select All Button}
    Click Element    ${Select All Button}
    Click Element    ${Close Button}
    Wait Until Ready    ${Layout Button}
    Wait Until Element Is Not Visible    ${Please Wait}
    Delete Test Contracts
    Create Contract Test 1
    Create Contract Item 1
    Create Contract Test 2
    Create Contract Item 2
    Create Contract Test 3
    Create Contract Test 4

Layout Select None
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select None Button}
    Click Element    ${Select None Button}
    Wait Until Ready    ${Close Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Select None Button}
    Wait Until Ready    ${Layout Button}
    Element Should Not Be Visible    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]

Layout Select All
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select All Button}
    Click Element    ${Select All Button}
    Wait Until Ready    ${Close Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Select All Button}
    Wait Until Ready    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]
    Element Should Be Visible    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name}"]
    Wait Until Element Is Not Visible    ${Please Wait}

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
    ${elements}=    Get WebElements    xpath=//table[@id='p_all_tbl']//tbody/tr/td[3]
    ${numbers}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        ${num}=    Convert To Integer    ${text}
        Append To List    ${numbers}    ${num}
    END
    RETURN    ${numbers}

Verify Partner Number Column Sorting
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
    Element Should Not Be Visible    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name4}"]

Remove Search
    Wait Until Ready    ${Search Contract Subject}
    Clear Element Text    ${Search Contract Subject}
    Click Element    ${Contract Subject}
    Wait Until Ready    ${Search Contract Subject}
    Wait Until Element Is Not Visible    ${Please Wait}
    Element Should Be Visible    xpath=//table[@id="p_all_tbl"]//td[normalize-space(.)="${Contract Subject Name4}"]

Select Fields
    Wait Until Ready    ${Status Button}
    Click Element    ${Status Button}
    Click Element    ${Updated Button}
    Click Element    ${Number Button}
    Click Element    ${Number Partner Button}
    Click Element    ${Partner Button}
    Click Element    ${Partner ID Button}
    Click Element    ${Contract Subject Button}
    Click Element    ${Field Button}
    Click Element    ${Type Button}
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
    Click Element    ${Lent To Button}
    Click Element    ${Maturity 1 Button}
    Click Element    ${Maturity 2 Button}
    Click Element    ${Note Button}
    Click Element    ${Notice Period Button}
    Click Element    ${Notice Period Unit Button}
    Click Element    ${Notice Required Button}
    Click Element    ${Order nr. Button}
    Click Element    ${Org.Unit Button}
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
    Click Element    ${GDPR Button}
    Click Element    ${Framework Contract Button}
    Input Text    ${Id Layout Name}    ${Name}
    Click Element    ${Id Save Layout Button}

Open Or Select Saved Layout
    Click Element    ${Id Saved Layouts}
    Sleep    1
    Wait Until Element Is Visible    xpath=//div[contains(@class, 'dataTables_scroll')]

    ${is_present}=    Run Keyword And Return Status
    ...    Element Should Be Visible
    ...    xpath=//option[normalize-space(.)="dvtest1"]

    IF    ${is_present}
        Click Element    xpath=//option[normalize-space(.)="dvtest1"]
        Click Element    ${Id Load Layout Button}
    ELSE
        Select Fields
    END

Select Fields Test
    Wait Until Ready    ${Layout Button}
    Click Element    ${Layout Button}
    Wait Until Ready    ${Select None Button}
    Click Element    ${Select None Button}
    Wait Until Ready    ${Status Button}
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Id Saved Layouts}
    Open Or Select Saved Layout
    Wait Until Element Is Not Visible    ${Please Wait}
    Wait Until Ready    ${Close Button}
    Click Element    ${Close Button}
    Wait Until Element Is Not Visible    ${Id Load Layout Button}

Enable Fields
    Go To Fields
    Wait Until Ready    ${Own Bank Field}
    Click Element    ${Own Bank Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

    Wait Until Ready    ${Own VAT ID Field}
    Click Element    ${Own VAT ID Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

    Wait Until Ready    ${GDPR Field}
    Click Element    ${GDPR Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

    Wait Until Ready    ${Framework Contract Field}
    Click Element    ${Framework Contract Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

    Wait Until Ready    ${Item Type Field}
    Click Element    ${Item Type Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

    Wait Until Ready    ${VAT Sign Field}
    Click Element    ${VAT Sign Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

    Wait Until Ready    ${Sevice Contract Field}
    Click Element    ${Sevice Contract Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility1}
    Click Element    ${Visibility1}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility1}

    Wait Until Ready    ${Subsidy Field}
    Click Element    ${Subsidy Field}
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

Disable Fields
    Go To Fields
    Wait Until Ready    ${Own Bank Field}
    Click Element    ${Own Bank Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

    Wait Until Ready    ${Own VAT ID Field}
    Click Element    ${Own VAT ID Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

    Wait Until Ready    ${GDPR Field}
    Click Element    ${GDPR Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

    Wait Until Ready    ${Framework Contract Field}
    Click Element    ${Framework Contract Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

    Wait Until Ready    ${Item Type Field}
    Click Element    ${Item Type Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

    Wait Until Ready    ${VAT Sign Field}
    Click Element    ${VAT Sign Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

    Wait Until Ready    ${Sevice Contract Field}
    Click Element    ${Sevice Contract Field}
    Click Button    ${Id Fields Edit Button}
    Wait Until Ready    ${Visibility2}
    Click Element    ${Visibility2}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Visibility2}

    Wait Until Ready    ${Subsidy Field}
    Click Element    ${Subsidy Field}
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

Create Contract Test 2
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
    Select From List By Label    ${Id Add Total Contract Price Period Currency}    ${Add Total Contract Price Period 2}
    Select From List By Label    ${Id Add Publishing Required}    ${Yes}
    Select From List By Label    ${Id Add Applicable Law}    ${Add Number 2}
    Input Text    ${Id Contract Subject}    ${Contract Subject Name 2}
    Select From List By Label    ${Id Confidentiality}    ${Add Confidentiality 2}
    Select From List By Label    ${Id Add Bank Account}    ${Add Number 2}
    Select From List By Label    ${Id Contract kind}    ${Contract kind2}
    Select From List By Label    ${Id Add Contract Status}    ${Add Contract Status 2}
    Input Text    ${Id Add Partner Signature Date}    ${Add Valid Date 2}
    Input Text    ${Id Add Valid Until}    ${Add Valid Date 2}
    Input Text    ${Id Add Effective Date}    ${Add Valid Date 2}
    Select From List By Label    ${Id Language}    ${Add Language 2}
    Select From List By Label    ${Id Add Published}    ${Yes}
    Input Text    ${Id Add Publishing Date}    ${Add Valid Date 2}
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
    Input Text    ${Id Add Documentation required Date}    ${Add Date 2}
    Select From List By Label    ${Id Add Invoicing date}    ${Number 2}
    Select From List By Label    ${Id Add Payment interval}    ${Add Number 2}
    Input Text    ${Id Add Lent To}    ${Add Contact person 2}
    Input Text    ${Id Add Lent To Date}    ${Add Date 2}
    Input Text    ${Id Add Maturity 2}    ${Number 2}
    Select From List By Label    ${Id Add Original Storage}    ${Add Original Storage 2}
    Input Text    ${Id Add Order Number}    ${Number 2}
    Select From List By Label    ${Id Add Notice Required}    ${Yes}
    Input Text    ${Id Add Deposit Text}    ${Name 2}
    Input Text    ${Id Add Postponement Condition}    ${Name 2}
    Select From List By Label    ${Id Add Documentation Enclosed}    ${Yes}
    Select From List By Label    ${Id Add Irregular Payment}    ${Yes}
    Input Text    ${Id Add To Pay}    ${Number 2}
    Select From List By Label    ${Id Add To Pay Currency}    ${Add Total Contract Price Period 2}
    Input Text    ${Add Maturity 1}    ${Add Number 2}
    Input Text    ${Id Add Discount%}    ${Number 2}
    Input Text    ${Id Add Note}    ${Name 2}
    Select From List By Label    ${Id Add GDPR}    ${Yes}
    Select From List By Label    ${Id Add Framework Contract}    ${Yes}
    Click Element    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Id Add Framework Contract}

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
    Select From List By Label    ${Id Add Item type}    ${Add Item type 2}
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
    Select From List By Label    ${Id Add VAT Sign}    ${Add Item type 2}
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
    Select From List By Label    ${Id Add Total Contract Price Period Currency}    ${Add Total Contract Price Period 3}
    Select From List By Label    ${Id Add Publishing Required}    ${No}
    Select From List By Label    ${Id Add Applicable Law}    ${Add Number 3}
    Input Text    ${Id Contract Subject}    ${Contract Subject Name 3}
    Select From List By Label    ${Id Confidentiality}    ${Add Confidentiality 3}
    Select From List By Label    ${Id Add Bank Account}    ${Add Number 3}
    Select From List By Label    ${Id Contract kind}    ${Contract kind3}
    Select From List By Label    ${Id Add Contract Status}    ${Add Contract Status 3}
    Input Text    ${Id Add Partner Signature Date}    ${Add Valid Date 3}
    Input Text    ${Id Add Valid Until}    ${Add Valid Date 3}
    Input Text    ${Id Add Effective Date}    ${Add Valid Date 3}
    Select From List By Label    ${Id Language}    ${Add Language 3}
    Select From List By Label    ${Id Add Published}    ${No}
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
    Input Text    ${Id Add Documentation required Date}    ${Add Date 3}
    Select From List By Label    ${Id Add Invoicing date}    ${Number 3}
    Select From List By Label    ${Id Add Payment interval}    ${Add Number 3}
    Input Text    ${Id Add Lent To}    ${Add Contact person 3}
    Input Text    ${Id Add Lent To Date}    ${Add Date 3}
    Input Text    ${Id Add Maturity 2}    ${Number 3}
    Select From List By Label    ${Id Add Original Storage}    ${Add Original Storage 3}
    Input Text    ${Id Add Order Number}    ${Number 3}
    Select From List By Label    ${Id Add Notice Required}    ${No}
    Input Text    ${Id Add Deposit Text}    ${Name 3}
    Input Text    ${Id Add Postponement Condition}    ${Name 3}
    Select From List By Label    ${Id Add Documentation Enclosed}    ${No}
    Select From List By Label    ${Id Add Irregular Payment}    ${No}
    Input Text    ${Id Add To Pay}    ${Number 2}
    Select From List By Label    ${Id Add To Pay Currency}    ${Add Total Contract Price Period 3}
    Input Text    ${Add Maturity 1}    ${Add Number 3}
    Input Text    ${Id Add Discount%}    ${Number 3}
    Input Text    ${Id Add Note}    ${Name 3}
    Select From List By Label    ${Id Add GDPR}    ${No}
    Select From List By Label    ${Id Add Framework Contract}    ${No}
    Click Element    ${Create Contract File Button}
    Wait Until Element Is Not Visible    ${Id Add Framework Contract}

Create Contract Item 3
    Wait Until Element Is Not Visible    ${Add Maturity 1}
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
    Select From List By Label    ${Id Add Item type}    ${Add Item type 3}
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
    Select From List By Label    ${Id Add VAT Sign}    ${Add Item type 3}
    Select From List By Label    ${Id Add Business case}    ${Add Business case 3}
    Click Element    ${Finish Button}
    Wait Until Ready    ${Id Add Item Button}
    Go To Personal Space

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
    Wait Until Element Is Not Visible    ${Id Add Contract Type}

Add Bank Account
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add Bank Account Button}
    Click Button    ${Id Add Bank Account Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${number}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Contract Type}

Disable Bank Account
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_bank_account_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Bank Account Button}
    Click Button    ${Id Edit Bank Account Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Contract Type}

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
    Wait Until Element Is Not Visible    ${Id Add Contract Type}

Add Applicable Law
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add Applicable Law Button}
    Click Button    ${Id Add Applicable Law Button}
    Wait Until Ready    ${Id Add Contract Type}
    Input Text    ${Id Add Contract Type}    ${number}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Contract Type}

Disable Applicable Law
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_appl_law_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Applicable Law Button}
    Click Button    ${Id Edit Applicable Law Button}
    Wait Until Ready    ${Contract Type Checkbox}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Contract Type}

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
    Wait Until Element Is Not Visible    ${Id Add Field1}

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
    Wait Until Element Is Not Visible    ${Id Add Field1}

Disable Item type
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_item_type_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit Item type Button}
    Click Button    ${Id Edit Item type Button}
    Wait Until Ready    ${Id Add Field1}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Go To VAT Sign
    Wait Until Ready    ${Id VAT Sign}
    Click Element    ${Id VAT Sign}
    Wait Until Ready    ${Id Add VAT Sign Button}

Enable VAT Sign
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${number}"]
    Click Button    ${Id Edit VAT Sign Button}
    Wait Until Ready    ${Id Add Field1}
    Unselect Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Enable VAT Sign Or Add VAT Sign
    [Arguments]    ${number}
    ${row_exists}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${number}"]
    ...    timeout=${Timeout}

    IF    ${row_exists}
        Enable VAT Sign    ${number}
    ELSE
        Add VAT Sign    ${number}
    END

Add VAT Sign
    [Arguments]    ${number}
    Wait Until Ready    ${Id Add VAT Sign Button}
    Click Button    ${Id Add VAT Sign Button}
    Wait Until Ready    ${Id Add Field1}
    Input Text    ${Id Add Field1}    ${number}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Disable VAT Sign
    [Arguments]    ${number}
    Wait Until Ready    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${number}"]
    Click Element    xpath=//table[@id="ts_item_vatsign_tbl"]//td[normalize-space(.)="${number}"]
    Wait Until Ready    ${Id Edit VAT Sign Button}
    Click Button    ${Id Edit VAT Sign Button}
    Wait Until Ready    ${Id Add Field1}
    Select Checkbox    ${Contract Type Checkbox}
    Click Element    ${Finish Button}
    Wait Until Element Is Not Visible    ${Id Add Field1}

Enable Or Add Data
    Wait Until Ready    ${Id Proposals}
    Click Element    ${Id Proposals}
    Go To VAT ID
    Enable Or Add VAT ID    ${Add Number 1}
    Enable Or Add VAT ID    ${Add Number 2}
    Enable Or Add VAT ID    ${Add Number 3}
    Go To Bank Account
    Enable Bank Account Or Add Bank Account    ${Add Number 1}
    Enable Bank Account Or Add Bank Account    ${Add Number 2}
    Enable Bank Account Or Add Bank Account    ${Add Number 3}
    Go To Applicable Law
    Enable Applicable Law Or Add Applicable Law    ${Add Number 1}
    Enable Applicable Law Or Add Applicable Law    ${Add Number 2}
    Enable Applicable Law Or Add Applicable Law    ${Add Number 3}
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
    Go To Item type
    Enable Item type Or Add Item type    ${Add Item type 1}
    Enable Item type Or Add Item type    ${Add Item type 2}
    Enable Item type Or Add Item type    ${Add Item type 3}
    Go To VAT Sign
    Enable VAT Sign Or Add VAT Sign    ${Add Item type 1}
    Enable VAT Sign Or Add VAT Sign    ${Add Item type 2}
    Enable VAT Sign Or Add VAT Sign    ${Add Item type 3}
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
    Go To Bank Account
    Disable Bank Account    ${Add Number 1}
    Disable Bank Account    ${Add Number 2}
    Disable Bank Account    ${Add Number 3}
    Go To Applicable Law
    Disable Applicable Law    ${Add Number 1}
    Disable Applicable Law    ${Add Number 2}
    Disable Applicable Law    ${Add Number 3}
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
    Go To Item type
    Disable Item type    ${Add Item type 1}
    Disable Item type    ${Add Item type 2}
    Disable Item type    ${Add Item type 3}
    Go To VAT Sign
    Disable VAT Sign    ${Add Item type 1}
    Disable VAT Sign    ${Add Item type 2}
    Disable VAT Sign    ${Add Item type 3}
    Go To Maturity
    Disable Maturity    ${Maturity Number 1}
    Disable Maturity    ${Maturity Number 2}
    Disable Maturity    ${Maturity Number 3}

Test Alphabetical Sorting Of Status Column
    Wait Until Ready    ${Status 2}
    Click Element    ${Status 2}
    Wait Until Element Is Not Visible    ${Please Wait}

    ${texts_desc}=    Get Column Texts From Table    1
    ${sorted_desc}=    Copy List    ${texts_desc}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Lists Should Be Equal    ${texts_desc}    ${sorted_desc}

    Wait Until Ready    ${Status 2}
    Click Element    ${Status 2}
    Wait Until Element Is Not Visible    ${Please Wait}

    ${texts_asc}=    Get Column Texts From Table    1
    ${sorted_asc}=    Copy List    ${texts_asc}
    Sort List    ${sorted_asc}
    Lists Should Be Equal    ${texts_asc}    ${sorted_asc}

Test Alphabetical Sorting Of Partner Column
    Wait Until Ready    ${Partner}
    Wait Until Element Is Not Visible    ${Please Wait }
    Click Element    ${Partner}
    Wait Until Element Is Not Visible    ${Please Wait}

    ${texts_desc}=    Get Column Texts From Table    4
    ${sorted_desc}=    Copy List    ${texts_desc}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Lists Should Be Equal    ${texts_desc}    ${sorted_desc}

    Click Element    ${Partner}
    Wait Until Element Is Not Visible    ${Please Wait}

    ${texts_asc}=    Get Column Texts From Table    4
    ${sorted_asc}=    Copy List    ${texts_asc}
    Sort List    ${sorted_asc}
    Lists Should Be Equal    ${texts_asc}    ${sorted_asc}

Get Timestamps From Table
    ${elements}=    Get WebElements    xpath=//table[@id="p_all_tbl"]//tbody/tr/td[2]
    ${timestamps}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        Append To List    ${timestamps}    ${text}
    END
    RETURN    ${timestamps}

Test Updated Text Sorting
    Click Element    ${Updated}
    Sleep    1s
    ${desc}=    Get Timestamps From Table
    ${expected_desc}=    Copy List    ${desc}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Lists Should Be Equal    ${desc}    ${expected_desc}

    Click Element    ${Updated}
    Sleep    1s
    ${asc}=    Get Timestamps From Table
    ${expected_asc}=    Copy List    ${asc}
    Sort List    ${expected_asc}
    Lists Should Be Equal    ${asc}    ${expected_asc}

Apply Filter
    [Arguments]    ${text}    ${input_locator}    ${confirm_locator}
    Wait Until Ready    ${input_locator}
    IF    '${text}' == ''
        Clear Element Text    ${input_locator}
    ELSE
        Input Text    ${input_locator}    ${text}
    END
    Click Element    ${confirm_locator}
    Wait Until Ready    ${input_locator}
    Wait Until Element Is Not Visible    ${Please Wait}

Apply Date Filter
    [Arguments]    ${text}    ${text2}    ${input_locator}    ${input_locator2}    ${confirm_locator}
    Wait Until Ready    ${input_locator}
    IF    '${text}' == ''
        Clear Element Text    ${input_locator}
        Clear Element Text    ${input_locator2}
    ELSE
        Input Text    ${input_locator}    ${text}
        Input Text    ${input_locator2}    ${text2}
    END
    Click Element    ${confirm_locator}
    Wait Until Ready    ${input_locator}
    Wait Until Element Is Not Visible    ${Please Wait}

Test Searching Of Status Column
    Apply Filter    ${Search Status}    ${Id Search Status}    ${Status 2}
    Element Should Not Be Visible    ${Missing Item}

    Apply Filter    ${EMPTY}    ${Id Search Status}    ${Status 2}
    Element Should Be Visible    ${Missing Item}

Test Searching Of Partner Number Column
    Apply Filter    ${Search Number Parner}    ${Id Search Number Parner}    ${Number Partner}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Add Number 1}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Add Number 3}']

    Apply Filter    ${EMPTY}    ${Id Search Number Parner}    ${Number Partner}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Add Number 1}']

Test Searching Of Number Column
    Wait Until Ready    ${Id Search Number}
    ${updated_value}=    Get Text    xpath=//table[@id='p_all_tbl']//tbody/tr[1]/td[3]
    ${updated_value2}=    Get Text    xpath=//table[@id='p_all_tbl']//tbody/tr[2]/td[3]
    Input Text    ${Id Search Number}    ${updated_value}
    Click Element    ${Number}
    Wait Until Element Is Not Visible    ${Please Wait}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tbody/tr/td[normalize-space(text())="${updated_value}"]
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tbody/tr/td[normalize-space(text())="${updated_value2}"]

    Input Text    ${Id Search Number}    ${EMPTY}
    Click Element    ${Number}
    Wait Until Element Is Not Visible    ${Please Wait}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tbody/tr/td[normalize-space(text())="${updated_value2}"]

Get IDs From Table Column
    [Arguments]    ${column_index}
    ${elements}=    Get WebElements    xpath=//table[@id='p_all_tbl']//tbody/tr/td[${column_index}]
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
    Wait Until Ready    ${Number}
    Click Element    ${Number}
    Sleep    1s
    ${ids_desc}=    Get IDs From Table Column    3

    ${numbers_desc}=    Create List
    FOR    ${id}    IN    @{ids_desc}
        ${num}=    Extract Number From ID    ${id}
        Append To List    ${numbers_desc}    ${num}
    END

    ${expected_desc}=    Copy List    ${numbers_desc}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${numbers_desc}    ${expected_desc}

    Click Element    ${Number}
    Sleep    1s
    ${ids_asc}=    Get IDs From Table Column    3

    ${numbers_asc}=    Create List
    FOR    ${id}    IN    @{ids_asc}
        ${num}=    Extract Number From ID    ${id}
        Append To List    ${numbers_asc}    ${num}
    END

    ${expected_asc}=    Copy List    ${numbers_asc}
    Sort List    ${expected_asc}
    Should Be Equal    ${numbers_asc}    ${expected_asc}

Extract Leading Number
    [Arguments]    ${text}
    ${text}=    Strip String    ${text}
    ${split}=    Split String    ${text}    ${SPACE}
    ${num}=    Convert To Integer    ${split[0]}
    RETURN    ${num}

Get Partner Numbers From Column
    [Arguments]    ${column_index}
    ${elements}=    Get WebElements    xpath=//table[@id='p_all_tbl']//tbody/tr/td[${column_index}]
    ${numbers}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        ${num}=    Extract Leading Number    ${text}
        Append To List    ${numbers}    ${num}
    END
    RETURN    ${numbers}

Test Sorting Of Partner Number Column
    Wait Until Ready    ${Number Partner}
    Click Element    ${Number Partner}
    Sleep    1s
    ${desc_nums}=    Get Partner Numbers From Column    4
    ${expected_desc}=    Copy List    ${desc_nums}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_nums}    ${expected_desc}

    Click Element    ${Number Partner}
    Sleep    1s
    ${asc_nums}=    Get Partner Numbers From Column    4
    ${expected_asc}=    Copy List    ${asc_nums}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_nums}    ${expected_asc}

Search Contracts
    Wait Until Ready    ${Search Contract Subject}
    Input Text    ${Search Contract Subject}    dvTEST
    Click Element    ${Contract Subject}

Test Searching Of Partner Column
    Apply Filter    ${Add Contract partner 1}    ${Id Search Partner}    ${Partner}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Search Partner}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Search Partner 2}']

    Apply Filter    ${EMPTY}    ${Id Search Partner}    ${Partner}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Search Partner}']

Get Partner IDs From Column
    [Arguments]    ${column_index}
    ${elements}=    Get WebElements    xpath=//table[@id='p_all_tbl']//tbody/tr/td[${column_index}]
    ${ids}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        ${id}=    Convert To Integer    ${text}
        Append To List    ${ids}    ${id}
    END
    RETURN    ${ids}

Test Sorting Of Partner ID Column
    Wait Until Ready    ${Partner ID}
    Click Element    ${Partner ID}
    Sleep    1s
    ${desc_ids}=    Get Partner IDs From Column    6
    ${sorted_desc}=    Copy List    ${desc_ids}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Should Be Equal    ${desc_ids}    ${sorted_desc}

    Click Element    ${Partner ID}
    Sleep    1s
    ${asc_ids}=    Get Partner IDs From Column    6
    ${sorted_asc}=    Copy List    ${asc_ids}
    Sort List    ${sorted_asc}
    Should Be Equal    ${asc_ids}    ${sorted_asc}

Test Searching Of Partner ID Column
    Apply Filter    ${Partner ID 1}    ${Id Search Partner ID}    ${Partner ID}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Search Partner ID}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Partner ID 1}']

    Apply Filter    ${EMPTY}    ${Id Search Partner ID}    ${Partner ID}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Search Partner ID}']

Test Searching Of Contract Type Column
    Scroll Element Into View    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Contract Subject Name 4}']
    Apply Filter    ${Contract Subject Name}    ${Id Search Contract Subject}    ${Contract Subject}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Contract Subject Name 4}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Contract Subject Name}']

    Apply Filter    ${EMPTY}    ${Id Search Contract Subject}    ${Contract Subject}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Contract Subject Name 4}']

    Input Text    ${Search Contract Subject}    dvTEST
    Click Element    ${Contract Subject}

Get Column Text Values
    [Arguments]    ${column_index}
    ${elements}=    Get WebElements    xpath=//table[@id='p_all_tbl']//tbody/tr/td[${column_index}]
    ${values}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        Append To List    ${values}    ${text}
    END
    RETURN    ${values}

Test Contract Subject Sorting
    Wait Until Ready    ${Contract Subject}
    Click Element    ${Contract Subject}
    Sleep    1s
    ${desc_subjects}=    Get Column Text Values    7
    ${sorted_desc}=    Copy List    ${desc_subjects}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Should Be Equal    ${desc_subjects}    ${sorted_desc}

    Click Element    ${Contract Subject}
    Sleep    1s
    ${asc_subjects}=    Get Column Text Values    7
    ${sorted_asc}=    Copy List    ${asc_subjects}
    Sort List    ${sorted_asc}
    Should Be Equal    ${asc_subjects}    ${sorted_asc}

Test Searching Of Field Column
    Apply Filter    ${Add Field}    ${Id Search Field}    ${Field}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Add Field 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Add Field}']

    Apply Filter    ${EMPTY}    ${Id Search Field}    ${Field}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Add Field 2}']

Test Field Sorting
    Wait Until Ready    ${Field}
    Click Element    ${Field}
    Sleep    1s
    ${asc_values}=    Get Column Text Values    8
    ${sorted_asc}=    Copy List    ${asc_values}
    Sort List    ${sorted_asc}
    Should Be Equal    ${asc_values}    ${sorted_asc}

    Click Element    ${Field}
    Sleep    1s
    ${desc_values}=    Get Column Text Values    8
    ${sorted_desc}=    Copy List    ${desc_values}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Should Be Equal    ${desc_values}    ${sorted_desc}

Test Searching Of Type Column
    Apply Filter    ${Add Contact Type 1}    ${Id Search Type}    ${Type}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Add Contact Type 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Add Contact Type 1}']

    Apply Filter    ${EMPTY}    ${Id Search Type}    ${Type}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//td[normalize-space(.)='${Add Contact Type 2}']

Test Type Sorting
    Wait Until Ready    ${Type}
    Click Element    ${Type}
    Sleep    1s
    ${desc_values}=    Get Column Text Values    9
    ${sorted_desc}=    Copy List    ${desc_values}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Should Be Equal    ${desc_values}    ${sorted_desc}

    Click Element    ${Type}
    Sleep    1s
    ${asc_values}=    Get Column Text Values    9
    ${sorted_asc}=    Copy List    ${asc_values}
    Sort List    ${sorted_asc}
    Should Be Equal    ${asc_values}    ${sorted_asc}

Test Searching Of Prim. Resp. Column
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[10][normalize-space(.)='${Add Secondary responsible person}']
    Apply Filter    ${Add Primary responsible person}    ${Id Search Primary Resp.}    ${Prim. Resp.}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[10][normalize-space(.)='${Add Secondary responsible person}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[10][normalize-space(.)='${Add Primary Responsible Person}']

    Apply Filter    ${EMPTY}    ${Id Search Primary Resp.}    ${Prim. Resp.}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[10][normalize-space(.)='${Add Secondary responsible person}']

Test Searching Of Sec. Resp. Column
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[11][normalize-space(.)='${Add Primary responsible person}']
    Apply Filter    ${Add Secondary responsible person}    ${Id Search Secondary Resp.}    ${Sec. Resp.}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[11][normalize-space(.)='${Add Primary Responsible Person}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[11][normalize-space(.)='${Add Secondary responsible person}']

    Apply Filter    ${EMPTY}    ${Id Search Secondary Resp.}    ${Sec. Resp.}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[11][normalize-space(.)='${Add Primary responsible person}']

Test Sorting Of Primary Responsible Column
    Wait Until Ready    ${Prim. Resp.}
    Click Element    ${Prim. Resp.}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    10
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Prim. Resp.}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    10
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Sorting Of Secondary Responsible Column
    Wait Until Ready    ${Sec. Resp.}
    Click Element    ${Sec. Resp.}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    11
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Sec. Resp.}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    11
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Bank Account Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View    xpath=//table[@id='p_all_tbl']//tr/td[12][normalize-space(.)='${Add Bank Account}']
    Apply Filter    ${Search Bank Account}    ${Id Search Bank Account}    ${Bank Account}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[12][normalize-space(.)='${Add Bank Account}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[12][normalize-space(.)='${Search Bank Account}']

    Apply Filter    ${EMPTY}    ${Id Search Bank Account}    ${Bank Account}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[12][normalize-space(.)='${Add Bank Account}']

Test Sorting Of Bank Account Column
    Wait Until Ready    ${Bank Account}
    Click Element    ${Bank Account}
    Sleep    1s
    ${desc_values}=    Get Column Text Values    12
    ${expected_desc}=    Copy List    ${desc_values}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_values}    ${expected_desc}

    Click Element    ${Bank Account}
    Sleep    1s
    ${asc_values}=    Get Column Text Values    12
    ${expected_asc}=    Copy List    ${asc_values}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_values}    ${expected_asc}

Test Searching Of Accountant Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[13][normalize-space(.)='${Add Secondary Responsible Person}']
    Apply Filter    ${Add Primary Responsible Person}    ${Id Search Accountant}    ${Accountant}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[13][normalize-space(.)='${Add Secondary Responsible Person}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[13][normalize-space(.)='${Add Primary Responsible Person}']

    Apply Filter    ${EMPTY}    ${Id Search Accountant}    ${Accountant}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[13][normalize-space(.)='${Add Secondary Responsible Person}']

Test Sorting Of Accountant Column
    Wait Until Ready    ${Accountant}
    Click Element    ${Accountant}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    13
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Accountant}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    13
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Appl. Law Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[16][normalize-space(.)='${Add Confidentiality 3}']
    Apply Filter    ${Add Number 2}    ${Id Search Appl. Law}    ${Appl.law}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[14][normalize-space(.)='${Add Number 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[14][normalize-space(.)='${Add Number 2}']

    Apply Filter    ${EMPTY}    ${Id Search Appl. Law}    ${Appl.law}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[14][normalize-space(.)='${Add Number 3}']

Test Sorting Of Appl. Law Column
    Wait Until Ready    ${Appl.law}
    Click Element    ${Appl.law}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    14
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Appl.law}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    14
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Bonus Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Number 3}    ${Id Search Bonus}    ${Bonus}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[15][normalize-space(.)='${Add Bonus}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[15][normalize-space(.)='${Add Bonus 5}']

    Apply Filter    ${EMPTY}    ${Id Search Bonus}    ${Bonus}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[15][normalize-space(.)='${Add Bonus}']

Test Sorting Of Bonus Column
    Wait Until Ready    ${Bonus}
    Click Element    ${Bonus}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    15
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Bonus}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    15
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Confidentiality Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Confidentiality 3}    ${Id Search Confidentiality}    ${Confidentiality}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[16][normalize-space(.)='${Add Confidentiality 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[16][normalize-space(.)='${Add Confidentiality 3}']

    Apply Filter    ${EMPTY}    ${Id Search Confidentiality}    ${Confidentiality}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[16][normalize-space(.)='${Add Confidentiality 2}']

Test Sorting Of Confidentiality Column
    Wait Until Ready    ${Confidentiality}
    Click Element    ${Confidentiality}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    16
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Confidentiality}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    16
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Contact Person Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[19][normalize-space(.)='${Add Total Contract Price Period 3}']
    Apply Filter    ${Add Contact person 2}    ${Id Search Contact Person}    ${Contact person}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[17][normalize-space(.)='${Add Contact person 1}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[17][normalize-space(.)='${Add Contact person 2}']

    Apply Filter    ${EMPTY}    ${Id Search Contact Person}    ${Contact Person}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[17][normalize-space(.)='${Add Contact person 1}']

Test Sorting Of Contact Person Column
    Wait Until Ready    ${Contact Person}
    Click Element    ${Contact Person}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    17
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Contact Person}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    17
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Contract Price Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Contract Price 2}    ${Id Search Contract Price}    ${Contract Price}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[18][normalize-space(.)='${Contract Price 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[18][normalize-space(.)='${Contract Price 2}']

    Apply Filter    ${EMPTY}    ${Id Search Contract Price}    ${Contract Price}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[18][normalize-space(.)='${Contract Price 3}']

Get Price Values From Column
    [Arguments]    ${column_index}
    ${elements}=    Get WebElements    xpath=//table[@id='p_all_tbl']//tbody/tr/td[${column_index}]
    ${prices}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        ${text}=    Replace String    ${text}    ${SPACE}    ${EMPTY}
        ${text}=    Replace String    ${text}    ,    .
        ${num}=    Convert To Number    ${text}
        Append To List    ${prices}    ${num}
    END
    RETURN    ${prices}

Test Sorting Of Contract Price Column
    Wait Until Ready    ${Contract Price}
    Click Element    ${Contract Price}
    Sleep    1s
    ${desc_prices}=    Get Price Values From Column    18
    ${sorted_desc}=    Copy List    ${desc_prices}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Should Be Equal    ${desc_prices}    ${sorted_desc}

    Click Element    ${Contract Price}
    Sleep    1s
    ${asc_prices}=    Get Price Values From Column    18
    ${sorted_asc}=    Copy List    ${asc_prices}
    Sort List    ${sorted_asc}
    Should Be Equal    ${asc_prices}    ${sorted_asc}

Test Searching Of Contract Price Currency Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter
    ...    ${Add Total Contract Price Period 3}
    ...    ${Id Search Contract Price Currency}
    ...    ${Contract Price Currency}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[19][normalize-space(.)='${Add Total Contract Price Period 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[19][normalize-space(.)='${Add Total Contract Price Period 3}']

    Apply Filter    ${EMPTY}    ${Id Search Contract Price Currency}    ${Contract Price Currency}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[19][normalize-space(.)='${Add Total Contract Price Period 2}']

Test Sorting Of Contract Price Currency Column
    Wait Until Ready    ${Contract Price Currency}
    Click Element    ${Contract Price Currency}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    19
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Contract Price Currency}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    19
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Deposit Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View    xpath=//table[@id='p_all_tbl']//tr/td[22][normalize-space(.)='${Name 3}']
    Apply Filter    ${Number 1}    ${Id Search Deposit}    ${Deposit}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[20][normalize-space(.)='${Add Bonus}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[20][normalize-space(.)='${Add Bonus 3}']

    Apply Filter    ${EMPTY}    ${Id Search Deposit}    ${Deposit}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[20][normalize-space(.)='${Add Bonus}']

Test Sorting Of Deposit Column
    Wait Until Ready    ${Deposit}
    Click Element    ${Deposit}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    20
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Deposit}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    20
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Deposit Currency Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter
    ...    ${Add Total Contract Price Period 3}
    ...    ${Id Search Deposit Currency}
    ...    ${Deposit Currency}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[21][normalize-space(.)='${Add Total Contract Price Period 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[21][normalize-space(.)='${Add Total Contract Price Period 3}']

    Apply Filter    ${EMPTY}    ${Id Search Deposit Currency}    ${Deposit Currency}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[21][normalize-space(.)='${Add Total Contract Price Period 2}']

Test Sorting Of Deposit Currency Column
    Wait Until Ready    ${Deposit Currency}
    Click Element    ${Deposit Currency}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    21
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Deposit Currency}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    21
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Deposit Text Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Name 3}    ${Id Search Deposit Text}    ${Deposit Text}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[22][normalize-space(.)='${Name 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[22][normalize-space(.)='${Name 3}']

    Apply Filter    ${EMPTY}    ${Id Search Deposit Text}    ${Deposit Text}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[22][normalize-space(.)='${Name 2}']

Test Sorting Of Deposit Text Column
    Wait Until Ready    ${Deposit Text}
    Click Element    ${Deposit Text}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    22
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Deposit Text}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    22
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Doc.enclosed Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View    xpath=//table[@id='p_all_tbl']//tr/td[26][normalize-space(.)='${Search Date 1}']
    Apply Filter    ${Yes}    ${Id Search Doc.enclosed}    ${Doc.enclosed}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[23][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[23][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search Doc.enclosed}    ${Doc.enclosed}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[23][normalize-space(.)='${No}']

Test Sorting Of Doc.enclosed Column
    Wait Until Ready    ${Doc.enclosed}
    Click Element    ${Doc.enclosed}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    23
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Doc.enclosed}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    23
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Doc.req. Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Yes}    ${Id Search Doc.req.}    ${Doc.req.}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[24][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[24][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search Doc.req.}    ${Doc.req.}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[24][normalize-space(.)='${No}']

Test Sorting Of Doc.req. Column
    Wait Until Ready    ${Doc.req.}
    Click Element    ${Doc.req.}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    24
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Doc.req.}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    24
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Doc.req.date Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Date Filter
    ...    ${Add Date 1}
    ...    ${Add Date 2}
    ...    ${Id Search Doc.req.date From}
    ...    ${Id Search Doc.req.date To}
    ...    ${Doc.req.date}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[25][normalize-space(.)='${Search Date 2}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[25][normalize-space(.)='${Search Date 4}']

    Apply Date Filter
    ...    ${EMPTY}
    ...    ${EMPTY}
    ...    ${Id Search Doc.req.date From}
    ...    ${Id Search Doc.req.date To}
    ...    ${Doc.req.date}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[25][normalize-space(.)='${Search Date 2}']

Test Sorting Of Doc.req.date Column
    Wait Until Ready    ${Doc.req.date}
    Click Element    ${Doc.req.date}
    Sleep    1s
    ${asc_texts}=    Get Date Column Values From Column    25
    ${asc_dates}=    Convert To Dates    @{asc_texts}
    ${sorted_asc}=    Copy List    ${asc_dates}
    Sort List    ${sorted_asc}
    Reverse List    ${sorted_asc}
    Should Be Equal    ${asc_dates}    ${sorted_asc}

    Click Element    ${Doc.req.date}
    Sleep    1s
    ${desc_texts}=    Get Date Column Values From Column    25
    ${desc_dates}=    Convert To Dates    @{desc_texts}
    ${sorted_desc}=    Copy List    ${desc_dates}
    Sort List    ${sorted_desc}
    Should Be Equal    ${desc_dates}    ${sorted_desc}

Get Date Column Values From Column
    [Arguments]    ${column_index}
    ${elements}=    Get WebElements    xpath=//table[@id="p_all_tbl"]//tbody/tr/td[${column_index}]
    ${values}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
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

Test Searching Of Effective Date Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Date Filter
    ...    ${Add Valid Date 1}
    ...    ${Add Valid Date 2}
    ...    ${Id Search Effective Date From}
    ...    ${Id Search Effective Date To}
    ...    ${Effective Date}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[26][normalize-space(.)='${Search Date 1}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[26][normalize-space(.)='${Search Date 3}']

    Apply Date Filter
    ...    ${EMPTY}
    ...    ${EMPTY}
    ...    ${Id Search Effective Date From}
    ...    ${Id Search Effective Date To}
    ...    ${Effective Date}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[26][normalize-space(.)='${Search Date 1}']

Test Sorting Of Effective Date Column
    Wait Until Ready    ${Effective Date}
    Click Element    ${Effective Date}
    Sleep    1s
    ${asc_texts}=    Get Date Column Values From Column    26
    ${asc_dates}=    Convert To Dates    @{asc_texts}
    ${sorted_asc}=    Copy List    ${asc_dates}
    Sort List    ${sorted_asc}
    Reverse List    ${sorted_asc}
    Should Be Equal    ${asc_dates}    ${sorted_asc}

    Click Element    ${Effective Date}
    Sleep    1s
    ${desc_texts}=    Get Date Column Values From Column    26
    ${desc_dates}=    Convert To Dates    @{desc_texts}
    ${sorted_desc}=    Copy List    ${desc_dates}
    Sort List    ${sorted_desc}
    Should Be Equal    ${desc_dates}    ${sorted_desc}

Test Searching Of Eff.from sig Date Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[30][normalize-space(.)='${Add Internal Contract Partner 3}']
    Apply Filter    ${Yes}    ${Id Search Eff.from sig Date}    ${Eff.from sig Date}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[27][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[27][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search Eff.from sig Date}    ${Eff.from sig Date}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[27][normalize-space(.)='${No}']

Test Sorting Of Eff.from sig Date Column
    Wait Until Ready    ${Eff.from sig Date}
    Click Element    ${Eff.from sig Date}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    27
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Eff.from sig Date}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    27
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Edit Effective Date
    Wait Until Element Is Not Visible    ${Please Wait}
    Click Element    xpath=//table[@id='p_all_tbl']//tr/td[30][normalize-space(.)='${Add Internal Contract Partner 3}']
    Click Element    ${Edit Contract Button}
    Wait Until Ready    ${Effective Date CheckBox}
    Select Checkbox    ${Effective Date CheckBox}
    Click Element    ${Update Contract File}
    Wait Until Element Is Not Visible    ${Effective Date CheckBox}

Test Searching Of Interest Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[30][normalize-space(.)='${Add Internal Contract Partner 3}']
    Apply Filter    ${Number 1}    ${Id Search Interest}    ${Interest}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[28][normalize-space(.)='${Add Bonus}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[28][normalize-space(.)='${Add Bonus 3}']

    Apply Filter    ${EMPTY}    ${Id Search Interest}    ${Interest}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[28][normalize-space(.)='${Add Bonus}']

Test Sorting Of Interest Column
    Wait Until Ready    ${Interest}
    Click Element    ${Interest}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    28
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Interest}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    28
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Internal Contact Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Number 1}    ${Id Search Internal Contact}    ${Internal Contact}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[29][normalize-space(.)='${Number 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[29][normalize-space(.)='${Number 1}']

    Apply Filter    ${EMPTY}    ${Id Search Internal Contact}    ${Internal Contact}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[29][normalize-space(.)='${Number 2}']

Test Sorting Of Internal Contact Column
    Wait Until Ready    ${Internal Contact}
    Click Element    ${Internal Contact}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    29
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Internal Contact}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    29
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Int.part. Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Internal Contract Partner 3}    ${Id Search Int.part.}    ${Int.part.}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[30][normalize-space(.)='${Add Internal Contract Partner 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[30][normalize-space(.)='${Add Internal Contract Partner 3}']

    Apply Filter    ${EMPTY}    ${Id Search Int.part.}    ${Int.part.}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[30][normalize-space(.)='${Add Internal Contract Partner 2}']

Test Sorting Of Int.part. Column
    Wait Until Ready    ${Int.part.}
    Click Element    ${Int.part.}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    30
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Reverse List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Int.part.}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    30
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Invoicing Date Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[34][normalize-space(.)='${Add Language}']
    Apply Filter    ${Number 1}    ${Id Search Invoicing Date}    ${Invoicing Date}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[31][normalize-space(.)='${Search Invoicing Date}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[31][normalize-space(.)='${Search Invoicing Date 2}']

    Apply Filter    ${EMPTY}    ${Id Search Invoicing Date}    ${Invoicing Date}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[31][normalize-space(.)='${Search Invoicing Date}']

Test Sorting Of Invoicing Date Column
    Wait Until Ready    ${Invoicing Date}
    Click Element    ${Invoicing Date}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    31
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Invoicing Date}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    31
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Irregular Payment Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Yes}    ${Id Search Irregular Payment}    ${Irregular Payment}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[32][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[32][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search Irregular Payment}    ${Irregular Payment}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[32][normalize-space(.)='${No}']

Test Sorting Of Irregular Payment Column
    Wait Until Ready    ${Irregular Payment}
    Click Element    ${Irregular Payment}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    32
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Irregular Payment}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    32
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Kind Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Contract kind3}    ${Id Search Kind}    ${Kind}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[33][normalize-space(.)='${Contract kind2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[33][normalize-space(.)='${Contract kind3}']

    Apply Filter    ${EMPTY}    ${Id Search Kind}    ${Kind}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[33][normalize-space(.)='${Contract kind2}']

Test Sorting Of Kind Column
    Wait Until Ready    ${Kind}
    Click Element    ${Kind}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    33
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Reverse List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Kind}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    33
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Language Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Language 2}    ${Id Search Language}    ${Language}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[34][normalize-space(.)='${Add Language 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[34][normalize-space(.)='${Add Language 2}']

    Apply Filter    ${EMPTY}    ${Id Search Language}    ${Language}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[34][normalize-space(.)='${Add Language 3}']

Test Sorting Of Language Column
    Wait Until Ready    ${Language}
    Click Element    ${Language}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    34
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Reverse List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Language}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    34
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Lend Date Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[39][normalize-space(.)='${Name 3}']
    Apply Date Filter
    ...    ${Add Date 1}
    ...    ${Add Date 2}
    ...    ${Id Search Lend Date Date From}
    ...    ${Id Search Lend Date Date To}
    ...    ${Lend Date}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[35][normalize-space(.)='${Search Date 2}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[35][normalize-space(.)='${Search Date 4}']

    Apply Date Filter
    ...    ${EMPTY}
    ...    ${EMPTY}
    ...    ${Id Search Lend Date Date From}
    ...    ${Id Search Lend Date Date To}
    ...    ${Lend Date}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[35][normalize-space(.)='${Search Date 2}']

Test Sorting Of Lend Date Column
    Wait Until Ready    ${Lend Date}
    Click Element    ${Lend Date}
    Sleep    1s
    ${asc_texts}=    Get Date Column Values From Column    35
    ${asc_dates}=    Convert To Dates    @{asc_texts}
    ${sorted_asc}=    Copy List    ${asc_dates}
    Sort List    ${sorted_asc}
    Reverse List    ${sorted_asc}
    Should Be Equal    ${asc_dates}    ${sorted_asc}

    Click Element    ${Lend Date}
    Sleep    1s
    ${desc_texts}=    Get Date Column Values From Column    35
    ${desc_dates}=    Convert To Dates    @{desc_texts}
    ${sorted_desc}=    Copy List    ${desc_dates}
    Sort List    ${sorted_desc}
    Should Be Equal    ${desc_dates}    ${sorted_desc}

Test Searching Of Lent To Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Contact person 2}    ${Id Search Lent To}    ${Lent To}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[36][normalize-space(.)='${Add Contact person 1}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[36][normalize-space(.)='${Add Contact person 2}']

    Apply Filter    ${EMPTY}    ${Id Search Lent To}    ${Lent To}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[36][normalize-space(.)='${Add Contact person 1}']

Test Sorting Of Lent To Column
    Wait Until Ready    ${Lent To}
    Click Element    ${Lent To}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    36
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Lent To}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    36
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Maturity 1 Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Number 2}    ${Id Search Maturity 1}    ${Maturity 1}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[37][normalize-space(.)='${Add Number 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[37][normalize-space(.)='${Add Number 2}']

    Apply Filter    ${EMPTY}    ${Id Search Maturity 1}    ${Maturity 1}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[37][normalize-space(.)='${Add Number 3}']

Test Sorting Of Maturity 1 Column
    Wait Until Ready    ${Maturity 1}
    Click Element    ${Maturity 1}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    37
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Maturity 1}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    37
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Maturity 2 Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Number 1}    ${Id Search Maturity 2}    ${Maturity 2}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[38][normalize-space(.)='${Number 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[38][normalize-space(.)='${Number 1}']

    Apply Filter    ${EMPTY}    ${Id Search Maturity 2}    ${Maturity 2}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[38][normalize-space(.)='${Number 2}']

Test Sorting Of Maturity 2 Column
    Wait Until Ready    ${Maturity 2}
    Click Element    ${Maturity 2}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    38
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Maturity 2}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    38
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Note Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Name 3}    ${Id Search Note}    ${Note}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[39][normalize-space(.)='${Name 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[39][normalize-space(.)='${Name 3}']

    Apply Filter    ${EMPTY}    ${Id Search Note}    ${Note}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[39][normalize-space(.)='${Name 2}']

Test Sorting Of Note Column
    Wait Until Ready    ${Note}
    Click Element    ${Note}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    39
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Note}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    39
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Notice Period Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[44][normalize-space(.)='${Add Organisational unit 3}']
    Apply Filter    ${Number 1}    ${Id Search Notice Period}    ${Notice Period}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[40][normalize-space(.)='${Number 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[40][normalize-space(.)='${Number 1}']

    Apply Filter    ${EMPTY}    ${Id Search Notice Period}    ${Notice Period}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[40][normalize-space(.)='${Number 2}']

Test Sorting Of Notice Period Column
    Wait Until Ready    ${Notice Period}
    Click Element    ${Notice Period}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    40
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Notice Period}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    40
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Notice Period Unit Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Notice Period 1}    ${Id Search Notice Period Unit}    ${Notice Period Unit}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[41][normalize-space(.)='${Search Notice Period}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[41][normalize-space(.)='${Search Notice Period 2}']

    Apply Filter    ${EMPTY}    ${Id Search Notice Period Unit}    ${Notice Period Unit}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[41][normalize-space(.)='${Search Notice Period}']

Test Sorting Of Notice Period Unit Column
    Wait Until Ready    ${Notice Period Unit}
    Click Element    ${Notice Period Unit}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    41
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Notice Period Unit}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    41
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Notice Required Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Yes}    ${Id Search Notice Required}    ${Notice Required}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[42][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[42][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search Notice Required}    ${Notice Required}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[42][normalize-space(.)='${No}']

Test Sorting Of Notice Required Column
    Wait Until Ready    ${Notice Required}
    Click Element    ${Notice Required}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    42
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Notice Required}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    42
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Order nr. Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Number 1}    ${Id Search Order nr.}    ${Order nr.}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[43][normalize-space(.)='${Number 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[43][normalize-space(.)='${Number 1}']

    Apply Filter    ${EMPTY}    ${Id Search Order nr.}    ${Order nr.}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[43][normalize-space(.)='${Number 2}']

Test Sorting Of Order nr. Column
    Wait Until Ready    ${Order nr.}
    Click Element    ${Order nr.}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    43
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Order nr.}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    43
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Org.Unit Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Organisational unit 2}    ${Id Search Org.Unit}    ${Org.Unit}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[44][normalize-space(.)='${Add Organisational unit 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[44][normalize-space(.)='${Add Organisational unit 2}']

    Apply Filter    ${EMPTY}    ${Id Search Org.Unit}    ${Org.Unit}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[44][normalize-space(.)='${Add Organisational unit 3}']

Test Sorting Of Org.Unit Column
    Wait Until Ready    ${Org.Unit}
    Click Element    ${Org.Unit}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    44
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Org.Unit}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    44
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Own Account Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[48][normalize-space(.)='${Search Role Partner}']
    Apply Filter    ${Add Number 2}    ${Id Search Own account}    ${Own account}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[45][normalize-space(.)='${Add Number 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[45][normalize-space(.)='${Add Number 2}']

    Apply Filter    ${EMPTY}    ${Id Search Own account}    ${Own account}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[45][normalize-space(.)='${Add Number 3}']

Test Sorting Of Own Account Column
    Wait Until Ready    ${Own account}
    Click Element    ${Own account}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    45
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Own account}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    45
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Postponement Condition Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Name 3}    ${Id Search Postponement Condition}    ${Postponement Condition}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[46][normalize-space(.)='${Name 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[46][normalize-space(.)='${Name 3}']

    Apply Filter    ${EMPTY}    ${Id Search Postponement Condition}    ${Postponement Condition}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[46][normalize-space(.)='${Name 2}']

Test Sorting Of Postponement Condition Column
    Wait Until Ready    ${Postponement Condition}
    Click Element    ${Postponement Condition}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    46
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Postponement Condition}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    46
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Partner VAT ID Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Partner VAT ID 1}    ${Id Search Partner VAT ID}    ${Partner VAT ID}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[47][normalize-space(.)='${Add Partner VAT ID 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[47][normalize-space(.)='${Add Partner VAT ID 1}']

    Apply Filter    ${EMPTY}    ${Id Search Partner VAT ID}    ${Partner VAT ID}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[47][normalize-space(.)='${Add Partner VAT ID 2}']

Test Sorting Of Partner VAT ID Column
    Wait Until Ready    ${Partner VAT ID}
    Click Element    ${Partner VAT ID}
    Sleep    1s
    ${desc_texts}=    Get Column Text Values    47
    ${sorted_desc}=    Copy List    ${desc_texts}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Should Be Equal    ${desc_texts}    ${sorted_desc}

    Click Element    ${Partner VAT ID}
    Sleep    1s
    ${asc_texts}=    Get Column Text Values    47
    ${sorted_asc}=    Copy List    ${asc_texts}
    Sort List    ${sorted_asc}
    Should Be Equal    ${asc_texts}    ${sorted_asc}

Test Searching Of Role Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Search Role Partner}    ${Id Search Role}    ${Role}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[48][normalize-space(.)='${Search Role Partner 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[48][normalize-space(.)='${Search Role Partner}']

    Apply Filter    ${EMPTY}    ${Id Search Role}    ${Role}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[48][normalize-space(.)='${Search Role Partner 2}']

Test Sorting Of Role Column
    Wait Until Ready    ${Role}
    Click Element    ${Role}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    48
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Role}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    48
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Service Contract Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[51][normalize-space(.)='${Add Original Storage 1}']
    Apply Filter    ${Yes}    ${Id Search Service Contract}    ${Service Contract}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[49][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[49][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search Service Contract}    ${Service Contract}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[49][normalize-space(.)='${No}']

Test Sorting Of Service Contract Column
    Wait Until Ready    ${Service Contract}
    Click Element    ${Service Contract}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    49
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Service Contract}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    49
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Text Status Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Contract Status 2}    ${Id Search Status 2}    ${Status}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[50][normalize-space(.)='${Add Contract Status 1}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[50][normalize-space(.)='${Add Contract Status 2}']

    Apply Filter    ${EMPTY}    ${Id Search Status 2}    ${Status}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[50][normalize-space(.)='${Add Contract Status 1}']

Test Sorting Of Text Status Column
    Wait Until Ready    ${Status}
    Click Element    ${Status}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    50
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Status}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    50
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Original Storage Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Sleep    1
    Wait Until Ready    ${Id Select Original Storage}
    Click Element    ${Id Select Original Storage}
    Wait Until Ready    ${Select Original Storage}
    Click Element    ${Select Original Storage}
    Click Element    ${Original Storage Close Button}
    Wait Until Element Is Not Visible    ${Please Wait}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[51][normalize-space(.)='${Add Original Storage 1}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[51][normalize-space(.)='${Add Original Storage 2}']

    Wait Until Ready    ${Id Select Original Storage}
    Click Element    ${Id Select Original Storage}
    Wait Until Ready    ${Select Original Storage}
    Click Element    ${Select Original Storage}
    Click Element    ${Original Storage Close Button}
    Wait Until Element Is Not Visible    ${Please Wait}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[51][normalize-space(.)='${Add Original Storage 1}']

Test Sorting Of Original Storage Column
    Wait Until Ready    ${Original Storage}
    Click Element    ${Original Storage}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    51
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Original Storage}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    51
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Subsidy Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[56][normalize-space(.)='${Add Bonus}']
    Apply Filter    ${Yes}    ${Id Search Subsidy}    ${Subsidy}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[52][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[52][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search Subsidy}    ${Subsidy}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[52][normalize-space(.)='${No}']

Test Sorting Of Subsidy Column
    Wait Until Ready    ${Subsidy}
    Click Element    ${Subsidy}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    52
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Subsidy}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    52
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Supp.payment Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Yes}    ${Id Search Supp.payment}    ${Supp.payment}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[53][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[53][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search Supp.payment}    ${Supp.payment}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[53][normalize-space(.)='${No}']

Test Sorting Of Supp.payment Column
    Wait Until Ready    ${Supp.payment}
    Click Element    ${Supp.payment}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    53
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Supp.payment}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    53
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Tender Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Yes}    ${Id Search Tender}    ${Tender}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[54][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[54][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search Tender}    ${Tender}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[54][normalize-space(.)='${No}']

Test Sorting Of Tender Column
    Wait Until Ready    ${Tender}
    Click Element    ${Tender}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    54
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Tender}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    54
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Termination Method Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Termination Method3}    ${Id Search Termination Method}    ${Termination Method}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[55][normalize-space(.)='${Add Termination Method2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[55][normalize-space(.)='${Add Termination Method3}']

    Apply Filter    ${EMPTY}    ${Id Search Termination Method}    ${Termination Method}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[55][normalize-space(.)='${Add Termination Method2}']

Test Sorting Of Termination Method Column
    Wait Until Ready    ${Termination Method}
    Click Element    ${Termination Method}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    55
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Termination Method}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    55
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of To Pay Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Number 1}    ${Id Search To Pay}    ${To Pay}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[56][normalize-space(.)='${Add Bonus}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[56][normalize-space(.)='${Add Bonus 3}']

    Apply Filter    ${EMPTY}    ${Id Search To Pay}    ${To Pay}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[56][normalize-space(.)='${Add Bonus}']

Test Sorting Of To Pay Column
    Wait Until Ready    ${To Pay}
    Click Element    ${To Pay}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    56
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${To Pay}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    56
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of To Pay Currency Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[60][normalize-space(.)='${Search Date 1}']
    Apply Filter
    ...    ${Add Total Contract Price Period 3}
    ...    ${Id Search To Pay Currency}
    ...    ${To Pay Currency}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[57][normalize-space(.)='${Add Total Contract Price Period 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[57][normalize-space(.)='${Add Total Contract Price Period 3}']

    Apply Filter    ${EMPTY}    ${Id Search To Pay Currency}    ${To Pay Currency}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[57][normalize-space(.)='${Add Total Contract Price Period 2}']

Test Sorting Of To Pay Currency Column
    Wait Until Ready    ${To Pay Currency}
    Click Element    ${To Pay Currency}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    57
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${To Pay Currency}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    57
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of To Pay Interval Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Add Number 2}    ${Id Search To Pay Interval}    ${To Pay Interval}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[58][normalize-space(.)='${Add Number 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[58][normalize-space(.)='${Add Number 2}']

    Apply Filter    ${EMPTY}    ${Id Search To Pay Interval}    ${To Pay Interval}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[58][normalize-space(.)='${Add Number 3}']

Test Sorting Of To Pay Interval Column
    Wait Until Ready    ${To Pay Interval}
    Click Element    ${To Pay Interval}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    58
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${To Pay Interval}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    58
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Valid Since Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Date Filter
    ...    ${Add Date 1}
    ...    ${Add Date 2}
    ...    ${Id Search Valid Since From}
    ...    ${Id Search Valid Since To}
    ...    ${Valid Since}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[59][normalize-space(.)='${Search Date 2}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[59][normalize-space(.)='${Search Date 4}']

    Apply Date Filter
    ...    ${EMPTY}
    ...    ${EMPTY}
    ...    ${Id Search Valid Since From}
    ...    ${Id Search Valid Since To}
    ...    ${Valid Since}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[59][normalize-space(.)='${Search Date 2}']

Test Sorting Of Valid Since Column
    Wait Until Ready    ${Valid Since}
    Click Element    ${Valid Since}
    Sleep    1s
    ${asc_texts}=    Get Date Column Values From Column    59
    ${asc_dates}=    Convert To Dates    @{asc_texts}
    ${sorted_asc}=    Copy List    ${asc_dates}
    Sort List    ${sorted_asc}
    Reverse List    ${sorted_asc}
    Should Be Equal    ${asc_dates}    ${sorted_asc}

    Click Element    ${Valid Since}
    Sleep    1s
    ${desc_texts}=    Get Date Column Values From Column    59
    ${desc_dates}=    Convert To Dates    @{desc_texts}
    ${sorted_desc}=    Copy List    ${desc_dates}
    Sort List    ${sorted_desc}
    Should Be Equal    ${desc_dates}    ${sorted_desc}

Test Searching Of Valid Until Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Date Filter
    ...    ${Add Valid Date 1}
    ...    ${Add Valid Date 2}
    ...    ${Id Search Valid Until From}
    ...    ${Id Search Valid Until To}
    ...    ${Valid Until}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[60][normalize-space(.)='${Search Date 1}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[60][normalize-space(.)='${Search Date 3}']

    Apply Date Filter
    ...    ${EMPTY}
    ...    ${EMPTY}
    ...    ${Id Search Valid Until From}
    ...    ${Id Search Valid Until To}
    ...    ${Valid Until}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[60][normalize-space(.)='${Search Date 1}']

Test Sorting Of Valid Until Column
    Wait Until Ready    ${Valid Until}
    Click Element    ${Valid Until}
    Sleep    1s
    ${asc_texts}=    Get Date Column Values From Column    60
    ${asc_dates}=    Convert To Dates    @{asc_texts}
    ${sorted_asc}=    Copy List    ${asc_dates}
    Sort List    ${sorted_asc}
    Reverse List    ${sorted_asc}
    Should Be Equal    ${asc_dates}    ${sorted_asc}

    Click Element    ${Valid Until}
    Sleep    1s
    ${desc_texts}=    Get Date Column Values From Column    60
    ${desc_dates}=    Convert To Dates    @{desc_texts}
    ${sorted_desc}=    Copy List    ${desc_dates}
    Sort List    ${sorted_desc}
    Should Be Equal    ${desc_dates}    ${sorted_desc}

Test Searching Of VAT ID Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[64][normalize-space(.)='${Add Commodity/service 2}']
    Apply Filter    ${Add Number 2}    ${Id Search VAT ID}    ${VAT ID}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[61][normalize-space(.)='${Add Number 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[61][normalize-space(.)='${Add Number 2}']

    Apply Filter    ${EMPTY}    ${Id Search VAT ID}    ${VAT ID}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[61][normalize-space(.)='${Add Number 3}']

Test Sorting Of VAT ID Column
    Wait Until Ready    ${VAT ID}
    Click Element    ${VAT ID}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    61
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${VAT ID}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    61
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Amount Per Year Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Number 1}    ${Id Search Amount Per Year}    ${Amount Per Year}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[62][normalize-space(.)='${Add Bonus}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[62][normalize-space(.)='${Add Bonus 3}']

    Apply Filter    ${EMPTY}    ${Id Search Amount Per Year}    ${Amount Per Year}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[62][normalize-space(.)='${Add Bonus}']

Test Sorting Of Amount Per Year Column
    Wait Until Ready    ${Amount Per Year}
    Click Element    ${Amount Per Year}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    62
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Amount Per Year}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    62
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Amount Per Year Currency Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter
    ...    ${Add Total Contract Price Period 3}
    ...    ${Id Search Amount Per Year Currency}
    ...    ${Amount Per Year Currency}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[63][normalize-space(.)='${Add Total Contract Price Period 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[63][normalize-space(.)='${Add Total Contract Price Period 3}']

    Apply Filter    ${EMPTY}    ${Id Search Amount Per Year Currency}    ${Amount Per Year Currency}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[63][normalize-space(.)='${Add Total Contract Price Period 2}']

Test Sorting Of Amount Per Year Currency Column
    Wait Until Ready    ${Amount Per Year Currency}
    Click Element    ${Amount Per Year Currency}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    63
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Amount Per Year Currency}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    63
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Item Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter
    ...    ${Add Commodity/service 2}
    ...    ${Id Search Item}
    ...    ${Item}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[64][normalize-space(.)='${Add Commodity/service 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[64][normalize-space(.)='${Add Commodity/service 2}']

    Apply Filter    ${EMPTY}    ${Id Search Item}    ${Item}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[64][normalize-space(.)='${Add Commodity/service 3}']

Test Sorting Of Item Column
    Wait Until Ready    ${Item}
    Click Element    ${Item}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    64
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Item}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    64
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Quantity Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[68][normalize-space(.)='${Contract Price 2}']
    Apply Filter    ${Number 1}    ${Id Search Quantity}    ${Quantity}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[65][normalize-space(.)='${Number 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[65][normalize-space(.)='${Number 1}']

    Apply Filter    ${EMPTY}    ${Id Search Quantity}    ${Quantity}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[65][normalize-space(.)='${Number 2}']

Test Sorting Of Quantity Column
    Wait Until Ready    ${Quantity}
    Click Element    ${Quantity}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    65
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Quantity}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    65
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Unit Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter
    ...    ${Add Unit 1}
    ...    ${Id Search Unit}
    ...    ${Unit}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[66][normalize-space(.)='${Add Unit 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[66][normalize-space(.)='${Add Unit 1}']

    Apply Filter    ${EMPTY}    ${Id Search Unit}    ${Unit}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[66][normalize-space(.)='${Add Unit 2}']

Test Sorting Of Unit Column
    Wait Until Ready    ${Unit}
    Click Element    ${Unit}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    66
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Unit}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    66
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Unit Price Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Maturity Number 2}    ${Id Search Unit Price}    ${Unit Price}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[67][normalize-space(.)='${Search Unit Price}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[67][normalize-space(.)='${Search Unit Price 2}']

    Apply Filter    ${EMPTY}    ${Id Search Unit Price}    ${Unit Price}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[67][normalize-space(.)='${Search Unit Price}']

Test Sorting Of Unit Price Column
    Wait Until Ready    ${Unit Price}
    Click Element    ${Unit Price}
    Sleep    1s
    ${desc_prices}=    Get Price Values From Column    67
    ${sorted_desc}=    Copy List    ${desc_prices}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Should Be Equal    ${desc_prices}    ${sorted_desc}

    Click Element    ${Unit Price}
    Sleep    1s
    ${asc_prices}=    Get Price Values From Column    67
    ${sorted_asc}=    Copy List    ${asc_prices}
    Sort List    ${sorted_asc}
    Should Be Equal    ${asc_prices}    ${sorted_asc}

Test Searching Of Price Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Contract Price 3}    ${Id Search Price}    ${Price}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[68][normalize-space(.)='${Contract Price 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[68][normalize-space(.)='${Contract Price 3}']

    Apply Filter    ${EMPTY}    ${Id Search Price}    ${Price}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[68][normalize-space(.)='${Contract Price 2}']

Test Sorting Of Price Column
    Wait Until Ready    ${Price}
    Click Element    ${Price}
    Sleep    1s
    ${desc_prices}=    Get Price Values From Column    68
    ${sorted_desc}=    Copy List    ${desc_prices}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Should Be Equal    ${desc_prices}    ${sorted_desc}

    Click Element    ${Price}
    Sleep    1s
    ${asc_prices}=    Get Price Values From Column    68
    ${sorted_asc}=    Copy List    ${asc_prices}
    Sort List    ${sorted_asc}
    Should Be Equal    ${asc_prices}    ${sorted_asc}

Test Searching Of Currency Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[73][normalize-space(.)='${Add Bonus 2}']
    Apply Filter
    ...    ${Add Total Contract Price Period 3}    ${Id Search Currency}    ${Currency}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[69][normalize-space(.)='${Add Total Contract Price Period 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[69][normalize-space(.)='${Add Total Contract Price Period 3}']

    Apply Filter    ${EMPTY}    ${Id Search Currency}    ${Currency}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[69][normalize-space(.)='${Add Total Contract Price Period 2}']

Test Sorting Of Currency Column
    Wait Until Ready    ${Currency}
    Click Element    ${Currency}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    69
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Currency}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    69
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Location Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter
    ...    ${Add Location 1}    ${Id Search Location}    ${Location}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[70][normalize-space(.)='${Add Location 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[70][normalize-space(.)='${Add Location 1}']

    Apply Filter    ${EMPTY}    ${Id Search Location}    ${Location}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[70][normalize-space(.)='${Add Location 3}']

Test Sorting Of Location Column
    Wait Until Ready    ${Location}
    Click Element    ${Location}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    70
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Location}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    70
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Delivery Date Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Date Filter
    ...    ${Add Date 1}
    ...    ${Add Date 2}
    ...    ${Id Search Delivery Date From}
    ...    ${Id Search Delivery Date To}
    ...    ${Delivery Date}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[71][normalize-space(.)='${Search Date 2}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[71][normalize-space(.)='${Search Date 4}']

    Apply Date Filter
    ...    ${EMPTY}
    ...    ${EMPTY}
    ...    ${Id Search Delivery Date From}
    ...    ${Id Search Delivery Date To}
    ...    ${Delivery Date}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[71][normalize-space(.)='${Search Date 2}']

Test Sorting Of Delivery Date Column
    Wait Until Ready    ${Delivery Date}
    Click Element    ${Delivery Date}
    Sleep    1s
    ${asc_texts}=    Get Date Column Values From Column    71
    ${asc_dates}=    Convert To Dates    @{asc_texts}
    ${sorted_asc}=    Copy List    ${asc_dates}
    Sort List    ${sorted_asc}
    Reverse List    ${sorted_asc}
    Should Be Equal    ${asc_dates}    ${sorted_asc}

    Click Element    ${Delivery Date}
    Sleep    1s
    ${desc_texts}=    Get Date Column Values From Column    71
    ${desc_dates}=    Convert To Dates    @{desc_texts}
    ${sorted_desc}=    Copy List    ${desc_dates}
    Sort List    ${sorted_desc}
    Should Be Equal    ${desc_dates}    ${sorted_desc}

Test Searching Of Delivery To Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Date Filter
    ...    ${Add Valid Date 1}
    ...    ${Add Valid Date 2}
    ...    ${Id Search Delivery To From}
    ...    ${Id Search Delivery To}
    ...    ${Delivery To}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[72][normalize-space(.)='${Search Date 1}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[72][normalize-space(.)='${Search Date 3}']

    Apply Date Filter
    ...    ${EMPTY}
    ...    ${EMPTY}
    ...    ${Id Search Delivery To From}
    ...    ${Id Search Delivery To}
    ...    ${Delivery To}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[72][normalize-space(.)='${Search Date 1}']

Test Sorting Of Delivery To Column
    Wait Until Ready    ${Delivery To}
    Click Element    ${Delivery To}
    Sleep    1s
    ${asc_texts}=    Get Date Column Values From Column    72
    ${asc_dates}=    Convert To Dates    @{asc_texts}
    ${sorted_asc}=    Copy List    ${asc_dates}
    Sort List    ${sorted_asc}
    Reverse List    ${sorted_asc}
    Should Be Equal    ${asc_dates}    ${sorted_asc}

    Click Element    ${Delivery To}
    Sleep    1s
    ${desc_texts}=    Get Date Column Values From Column    72
    ${desc_dates}=    Convert To Dates    @{desc_texts}
    ${sorted_desc}=    Copy List    ${desc_dates}
    Sort List    ${sorted_desc}
    Should Be Equal    ${desc_dates}    ${sorted_desc}

Test Searching Of Discount Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Number 1}    ${Id Search Discount}    ${Discount}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[73][normalize-space(.)='${Add Bonus 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[73][normalize-space(.)='${Add Bonus 4}']

    Apply Filter    ${EMPTY}    ${Id Search Discount}    ${Discount}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[73][normalize-space(.)='${Add Bonus 2}']

Test Sorting Of Discount Column
    Wait Until Ready    ${Discount}
    Click Element    ${Discount}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    73
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Discount}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    73
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Maturity Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[76][normalize-space(.)='${Add Item type 1}']
    Apply Filter    ${Maturity Number 2}    ${Id Search Maturity}    ${Maturity}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[74][normalize-space(.)='${Maturity Number 1}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[74][normalize-space(.)='${Maturity Number 2}']

    Apply Filter    ${EMPTY}    ${Id Search Maturity}    ${Maturity}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[74][normalize-space(.)='${Maturity Number 1}']

Test Sorting Of Maturity Column
    Wait Until Ready    ${Maturity}
    Click Element    ${Maturity}
    Sleep    1s
    ${desc_prices}=    Get Price Values From Column    74
    ${sorted_desc}=    Copy List    ${desc_prices}
    Sort List    ${sorted_desc}
    Reverse List    ${sorted_desc}
    Should Be Equal    ${desc_prices}    ${sorted_desc}

    Click Element    ${Maturity}
    Sleep    1s
    ${asc_prices}=    Get Price Values From Column    74
    ${sorted_asc}=    Copy List    ${asc_prices}
    Sort List    ${sorted_asc}
    Should Be Equal    ${asc_prices}    ${sorted_asc}

Test Searching Of VAT Rate Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Number 1}    ${Id Search VAT Rate}    ${VAT Rate}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[75][normalize-space(.)='${Add Bonus}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[75][normalize-space(.)='${Add Bonus 3}']

    Apply Filter    ${EMPTY}    ${Id Search VAT Rate}    ${VAT Rate}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[75][normalize-space(.)='${Add Bonus}']

Test Sorting Of VAT Rate Column
    Wait Until Ready    ${VAT Rate}
    Click Element    ${VAT Rate}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    75
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${VAT Rate}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    75
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of Item Type Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter
    ...    ${Add Item type 1}    ${Id Search Item Type}    ${Item Type}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[76][normalize-space(.)='${Add Item type 2}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[76][normalize-space(.)='${Add Item type 1}']

    Apply Filter    ${EMPTY}    ${Id Search Item Type}    ${Item Type}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[76][normalize-space(.)='${Add Item type 2}']

Test Sorting Of Item Type Column
    Wait Until Ready    ${Item Type}
    Click Element    ${Item Type}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    76
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${Item Type}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    76
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of VAT Sign Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Scroll Element Into View
    ...    xpath=//table[@id='p_all_tbl']//tr/td[79][normalize-space(.)='${No}']
    Apply Filter
    ...    ${Add Item type 2}    ${Id Search VAT Sign}    ${VAT Sign}
    Element Should Not Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[77][normalize-space(.)='${Add Item type 3}']
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[77][normalize-space(.)='${Add Item type 2}']

    Apply Filter    ${EMPTY}    ${Id Search VAT Sign}    ${VAT Sign}
    Element Should Be Visible
    ...    xpath=//table[@id='p_all_tbl']//tr/td[77][normalize-space(.)='${Add Item type 3}']

Test Sorting Of VAT Sign Column
    Wait Until Ready    ${VAT Sign}
    Click Element    ${VAT Sign}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    77
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

    Click Element    ${VAT Sign}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    77
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

Test Searching Of GDPR Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Yes}    ${Id Search GDPR}    ${GDPR}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[78][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[78][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search GDPR}    ${GDPR}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[78][normalize-space(.)='${No}']

Test Sorting Of GDPR Column
    Wait Until Ready    ${GDPR}
    Click Element    ${GDPR}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    78
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${GDPR}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    78
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

Test Searching Of Framework Contract Column
    Wait Until Element Is Not Visible    ${Please Wait}
    Apply Filter    ${Yes}    ${Id Search Framework Contract}    ${Framework Contract}
    Element Should Not Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[79][normalize-space(.)='${No}']
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[79][normalize-space(.)='${Yes}']

    Apply Filter    ${EMPTY}    ${Id Search Framework Contract}    ${Framework Contract}
    Element Should Be Visible    xpath=//table[@id='p_all_tbl']//tr/td[79][normalize-space(.)='${No}']

Test Sorting Of Framework Contract Column
    Wait Until Ready    ${Framework Contract}
    Click Element    ${Framework Contract}
    Sleep    1s
    ${asc_names}=    Get Column Text Values    79
    ${expected_asc}=    Copy List    ${asc_names}
    Sort List    ${expected_asc}
    Should Be Equal    ${asc_names}    ${expected_asc}

    Click Element    ${Framework Contract}
    Sleep    1s
    ${desc_names}=    Get Column Text Values    79
    ${expected_desc}=    Copy List    ${desc_names}
    Sort List    ${expected_desc}
    Reverse List    ${expected_desc}
    Should Be Equal    ${desc_names}    ${expected_desc}

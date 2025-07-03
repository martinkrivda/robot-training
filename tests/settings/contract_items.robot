*** Settings ***
Documentation       A test suite for contract items.
...                 Keywords are imported from contract_items.resource

Resource            ${EXECDIR}/resources/contract_items.resource


*** Test Cases ***
Add Edit Commodity/service
    [Documentation]    A test case for commodity/service.
    [Setup]    Contract Items Setup
    Go To Commodity/service
    Enable Or Add Commodity/service
    Edit Commodity/service

Add Edit Item Type
    [Documentation]    A test case for item type.
    Go To Item type
    Enable Or Add Item type
    Edit Item type

Add Edit Account Assignment Type
    [Documentation]    A test case for account assignment type.
    Go To Account Assignment Type
    Enable Or Add Account Assignment Type
    Edit Account Assignment Type

Add Edit Incoterms
    [Documentation]    A test case for account incoterms.
    Go To Incoterms
    Enable Or Add Incoterms
    Edit Incoterms

Add Edit Plant
    [Documentation]    A test case for account plant.
    Go To Plant
    Enable Or Add Plant
    Edit Plant

Add Edit Store
    [Documentation]    A test case for account store.
    Go To Store
    Enable Or Add Store
    Edit Store

Check Created Contract Items
    [Documentation]    A test case for creating contract.
    Check Created Items
    Delete Contract

Disable Commodity/service And Item Type
    [Documentation]    A test case for disabling commodity/service, item type.
    Disable Commodity/service
    Disable Item type

Disable Account Assignment Type And Incoterms
    [Documentation]    A test case for disabling account assignment type, incoterms.
    Disable Account Assignment Type
    Disable Incoterms

Disable Plant And Store
    [Documentation]    A test case for disabling plant, store.
    Disable Plant
    Disable Store

Set Item Type And Account Assignment Type Visibility Back to Normal
    [Documentation]    A test case for fileds visibility.
    Click On Administration
    Set Item Type Back To Invisible
    Set Account Assignment Type Back To Invisible

Set Incoterms And Plant Visibility Back to Normal
    [Documentation]    A test case for fileds visibility.
    Set Incoterms Back To Invisible
    Set Plant Back To Invisible

Set Store And Back to Normal
    [Documentation]    A test case for fileds visibility.
    Set Store Back To Invisible

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

Check Created Contract Items
    [Documentation]    A test case for creating contract.
    Check Created Items
    Delete Contract

Disable Commodity/service And Item Type
    [Documentation]    A test case for disabling commodity/service, item type.
    Disable Commodity/service
    Disable Item type

Disable Account Assignment Type And
    [Documentation]    A test case for disabling account assignment type, .
    Disable Account Assignment Type

Set Fields Visibility Back to Normal
    [Documentation]    A test case for fileds visibility.
    Click On Administration
    Set Item Type Back To Invisible
    Set Account Assignment Type Back To Invisible

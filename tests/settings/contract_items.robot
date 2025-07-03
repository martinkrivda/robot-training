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
    [Documentation]    A test case for incoterms.
    Go To Incoterms
    Enable Or Add Incoterms
    Edit Incoterms

Add Edit Plant
    [Documentation]    A test case for plant.
    Go To Plant
    Enable Or Add Plant
    Edit Plant

Add Edit Store
    [Documentation]    A test case for store.
    Go To Store
    Enable Or Add Store
    Edit Store

Add Edit Batch
    [Documentation]    A test case for batch.
    Go To Batch
    Enable Or Add Batch
    Edit Batch

Add Edit Division
    [Documentation]    A test case for division.
    Go To Division
    Enable Or Add Division
    Edit Division

Add Edit Expedition Center
    [Documentation]    A test case for expedition center.
    Go To Expedition Center
    Enable Or Add Expedition Center
    Edit Expedition Center

Add Edit Packing
    [Documentation]    A test case for packing.
    Go To Packing
    Enable Or Add Packing
    Edit Packing

Add Edit Resource Kind
    [Documentation]    A test case for resource kind.
    Go To Resource kind
    Enable Or Add Resource kind
    Edit Resource kind

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

Disable Batch And Divison
    [Documentation]    A test case for disabling batch, division.
    Disable Batch
    Disable Division

Disable Expedition Center And Packing
    [Documentation]    A test case for disabling expedition center, packing.
    Disable Expedition Center
    Disable Packing

Disable Resource Kind And
    [Documentation]    A test case for disabling resource kind, .
    Disable Resource kind

Set Item Type And Account Assignment Type Visibility Back to Normal
    [Documentation]    A test case for fileds visibility.
    Click On Administration
    Set Item Type Back To Invisible
    Set Account Assignment Type Back To Invisible

Set Incoterms And Plant Visibility Back to Normal
    [Documentation]    A test case for fileds visibility.
    Set Incoterms Back To Invisible
    Set Plant Back To Invisible

Set Store And Batch Back to Normal
    [Documentation]    A test case for fileds visibility.
    Set Store Back To Invisible
    Set Batch Back To Invisible

Set Division And Expedition Center Back to Normal
    [Documentation]    A test case for fileds visibility.
    Set Divison Back To Invisible
    Set Expedition Center Back To Invisible

Set Packing And Resource Kind Back to Normal
    [Documentation]    A test case for fileds visibility.
    Set Packing Back To Invisible
    Set Resource kind Back To Invisible

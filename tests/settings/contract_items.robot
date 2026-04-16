*** Settings ***
Documentation       A test suite for contract items.
...                 Keywords are imported from contract_items.resource

Resource            ${EXECDIR}/resources/contract_items.resource
Resource            ${EXECDIR}/resources/fields.resource

Suite Setup         Save and Set Fields
Suite Teardown      Restore Original Fields State


*** Test Cases ***
Add Edit Commodity/service
    [Documentation]    A test case for commodity/service.
    [Setup]    Contract Items Setup
    Go To Commodity/service
    Retry Keyword With Popup Fix    Enable Or Add Commodity/service
    Retry Keyword With Popup Fix    Edit Commodity/service

Add Edit Item Type
    [Documentation]    A test case for item type.
    Go To Item type
    Retry Keyword With Popup Fix    Enable Or Add Item type
    Retry Keyword With Popup Fix    Edit Item type

Add Edit Account Assignment Type
    [Documentation]    A test case for account assignment type.
    Go To Account Assignment Type
    Retry Keyword With Popup Fix    Enable Or Add Account Assignment Type
    Retry Keyword With Popup Fix    Edit Account Assignment Type

Add Edit Incoterms
    [Documentation]    A test case for incoterms.
    Go To Incoterms
    Retry Keyword With Popup Fix    Enable Or Add Incoterms
    Retry Keyword With Popup Fix    Edit Incoterms

Add Edit Plant
    [Documentation]    A test case for plant.
    Go To Plant
    Retry Keyword With Popup Fix    Enable Or Add Plant
    Retry Keyword With Popup Fix    Edit Plant

Add Edit Store
    [Documentation]    A test case for store.
    Go To Store
    Retry Keyword With Popup Fix    Enable Or Add Store
    Retry Keyword With Popup Fix    Edit Store

Add Edit Batch
    [Documentation]    A test case for batch.
    Go To Batch
    Retry Keyword With Popup Fix    Enable Or Add Batch
    Retry Keyword With Popup Fix    Edit Batch

Add Edit Division
    [Documentation]    A test case for division.
    Go To Division
    Retry Keyword With Popup Fix    Enable Or Add Division
    Retry Keyword With Popup Fix    Edit Division

Add Edit Expedition Center
    [Documentation]    A test case for expedition center.
    Go To Expedition Center
    Retry Keyword With Popup Fix    Enable Or Add Expedition Center
    Retry Keyword With Popup Fix    Edit Expedition Center

Add Edit Packing
    [Documentation]    A test case for packing.
    Go To Packing
    Retry Keyword With Popup Fix    Enable Or Add Packing
    Retry Keyword With Popup Fix    Edit Packing

Add Edit Resource Kind
    [Documentation]    A test case for resource kind.
    Go To Resource kind
    Retry Keyword With Popup Fix    Enable Or Add Resource kind
    Retry Keyword With Popup Fix    Edit Resource kind

Add Edit VAT Sign
    [Documentation]    A test case for VAT sign.
    Go To VAT Sign
    Retry Keyword With Popup Fix    Enable Or Add VAT Sign
    Retry Keyword With Popup Fix    Edit VAT Sign

Add Edit Pricing Type
    [Documentation]    A test case for pricing type.
    Go To Pricing Type
    Retry Keyword With Popup Fix    Enable Or Add Pricing Type
    Retry Keyword With Popup Fix    Edit Pricing Type

Add Edit Currency
    [Documentation]    A test case for currency.
    Go To Currency
    Retry Keyword With Popup Fix    Enable Or Add Currency
    Retry Keyword With Popup Fix    Edit Currency

Add Edit Unit
    [Documentation]    A test case for unit.
    Go To Unit
    Retry Keyword With Popup Fix    Enable Or Add Unit
    Retry Keyword With Popup Fix    Edit Unit

Add Edit Order
    [Documentation]    A test case for order.
    Prepare Order
    Retry Keyword With Popup Fix    Add Order
    Retry Keyword With Popup Fix    Edit Order

Add Edit Location
    [Documentation]    A test case for location.
    Go To Location
    Retry Keyword With Popup Fix    Enable Or Add Location
    Retry Keyword With Popup Fix    Edit Location

Add Edit Maturity
    [Documentation]    A test case for maturity.
    Go To Maturity
    Retry Keyword With Popup Fix    Enable Or Add Maturity
    Retry Keyword With Popup Fix    Edit Maturity

Check Created Contract Items
    [Documentation]    A test case for creating contract.
    Check Created Items
    contract_items.Delete Contract
    contract_items.Go To Settings

Disable Commodity/service And Item Type
    [Documentation]    A test case for disabling commodity/service, item type.
    Go To Commodity/service
    Retry Keyword With Popup Fix    Disable Commodity/service
    Go To Item type
    Retry Keyword With Popup Fix    Disable Item type

Disable Account Assignment Type And Incoterms
    [Documentation]    A test case for disabling account assignment type, incoterms.
    Go To Account Assignment Type
    Retry Keyword With Popup Fix    Disable Account Assignment Type
    Go To Incoterms
    Retry Keyword With Popup Fix    Disable Incoterms

Disable Plant And Store
    [Documentation]    A test case for disabling plant, store.
    Go To Plant
    Retry Keyword With Popup Fix    Disable Plant
    Go To Store
    Retry Keyword With Popup Fix    Disable Store

Disable Batch And Divison
    [Documentation]    A test case for disabling batch, division.
    Go To Batch
    Retry Keyword With Popup Fix    Disable Batch
    Go To Division
    Retry Keyword With Popup Fix    Disable Division

Disable Expedition Center And Packing
    [Documentation]    A test case for disabling expedition center, packing.
    Go To Expedition Center
    Retry Keyword With Popup Fix    Disable Expedition Center
    Go To Packing
    Retry Keyword With Popup Fix    Disable Packing

Disable Resource Kind And VAT Sign
    [Documentation]    A test case for disabling resource kind, VAT sign.
    Go To Resource kind
    Retry Keyword With Popup Fix    Disable Resource kind
    Go To VAT Sign
    Retry Keyword With Popup Fix    Disable VAT Sign

Disable Pricing Type And Currency
    [Documentation]    A test case for disabling pricing type, currency.
    Go To Pricing Type
    Retry Keyword With Popup Fix    Disable Pricing Type
    Go To Currency
    Retry Keyword With Popup Fix    Disable Currency

Disable Unit And Delete Order
    [Documentation]    A test case for disabling unit and deleting order.
    Go To Unit
    Retry Keyword With Popup Fix    Disable Unit
    Go To Order
    Retry Keyword With Popup Fix    Delete Order

Disable Location And Maturity
    [Documentation]    A test case for disabling location, maturity.
    Go To Location
    Retry Keyword With Popup Fix    Disable Location
    Go To Maturity
    Retry Keyword With Popup Fix    Disable Maturity

Set Fields Visibility Back to Normal
    [Documentation]    A test case for fileds visibility.
    contract_items.Click On Administration
    Set Fields Back To Invisible

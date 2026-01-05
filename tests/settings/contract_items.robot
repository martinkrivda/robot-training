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

Add Edit VAT Sign
    [Documentation]    A test case for VAT sign.
    Go To VAT Sign
    Enable Or Add VAT Sign
    Edit VAT Sign

Add Edit Pricing Type
    [Documentation]    A test case for pricing type.
    Go To Pricing Type
    Enable Or Add Pricing Type
    Edit Pricing Type

Add Edit Currency
    [Documentation]    A test case for currency.
    Go To Currency
    Enable Or Add Currency
    Edit Currency

Add Edit Unit
    [Documentation]    A test case for unit.
    Go To Unit
    Enable Or Add Unit
    Edit Unit

Add Edit Order
    [Documentation]    A test case for order.
    Prepare Order
    Add Order
    Edit Order

Add Edit Location
    [Documentation]    A test case for location.
    Go To Location
    Enable Or Add Location
    Edit Location

Add Edit Maturity
    [Documentation]    A test case for maturity.
    Go To Maturity
    Enable Or Add Maturity
    Edit Maturity

Check Created Contract Items
    [Documentation]    A test case for creating contract.
    Check Created Items
    contract_items.Delete Contract

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

Disable Resource Kind And VAT Sign
    [Documentation]    A test case for disabling resource kind, VAT sign.
    Disable Resource kind
    Disable VAT Sign

Disable Pricing Type And Currency
    [Documentation]    A test case for disabling pricing type, currency.
    Disable Pricing Type
    Disable Currency

Disable Unit And Delete Order
    [Documentation]    A test case for disabling unit and deleting    order.
    Disable Unit
    Delete Order

Disable Location And Maturity
    [Documentation]    A test case for disabling location, .
    Disable Location
    Disable Maturity

Set Fields Visibility Back to Normal
    [Documentation]    A test case for fileds visibility.
    contract_items.Click On Administration
    Set Fields Back To Invisible

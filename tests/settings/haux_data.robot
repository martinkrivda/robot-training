*** Settings ***
Documentation       A test suite for header aux data.
...                 Keywords are imported from haux_data.resource

Resource            ${EXECDIR}/resources/haux_data.resource
Resource            ${EXECDIR}/resources/fields.resource
Resource            ${EXECDIR}/resources/hmain_data.resource

Suite Setup         Save and Set Fields
Suite Teardown      Restore Original Fields State

*** Test Cases ***
Add Edit Original Storage
    [Documentation]    A test case for original storage.
    [Setup]    Haux Setup
    Go To Original Storage
    Enable Or Add Original Storage
    Edit Original Storage

Add Edit Keywords
    [Documentation]    A test case for keywords.
    Go To Keywords
    Enable Or Add Keywords
    Edit Keywords

Add Edit Document Type
    [Documentation]    A test case for document type.
    Go To Document Type
    Enable Or Add Document Type
    Edit Document Type

Add Edit Contract Relations
    [Documentation]    A test case for contract relations.
    Go To Contract Relations
    Enable Or Add Contract Relations
    Edit Contract Relations

Add Edit Payment Interval
    [Documentation]    A test case for payment interval.
    Go To Payment Interval
    Enable Or Add Payment Interval
    Edit Payment Interval

Add Edit Business Area
    [Documentation]    A test case for payment interval.
    Go To Business Area
    Enable Or Add Business Area
    Edit Business Area

Add Edit Purchase Org
    [Documentation]    A test case for purchase org.
    Go To Purchase Org
    Enable Or Add Purchase Org
    Edit Purchase Org

Add Edit Purchase Group
    [Documentation]    A test case for purchase group.
    Go To Purchase Group
    Enable Or Add Purchase Group
    Edit Purchase Group

Add Edit Sales Group
    [Documentation]    A test case for sales group.
    Go To Sales Group
    Enable Or Add Sales Group
    Edit Sales Group

Add Edit Sales Office
    [Documentation]    A test case for sales office.
    Go To Sales Office
    Enable Or Add Sales Office
    Edit Sales Office

Add Edit Shipping Condition
    [Documentation]    A test case for shipping condition.
    Go To Shipping Condition
    Enable Or Add Shipping Condition
    Edit Shipping Condition

Add Edit Invoicing date
    [Documentation]    A test case for invoicing date.
    Go To Invoicing date
    Enable Or Add Invoicing date
    Edit Invoicing date

Check Created Aux Data
    [Documentation]    A test case for creating contract.
    Check Created Contract Other Data
    Check Created Contract Document
    Check Created Contract Relations
    haux_data.Delete Contract

Disable Original Storage And Keywords
    [Documentation]    A test case for disabling original storage, keywords.
    Disable Original Storage
    Disable Keywords

Disable Document Type And Contract Relations
    [Documentation]    A test case for disabling document type, contract relations.
    Disable Document Type
    Disable Contract Relations

Disable Document Type And Business Area
    [Documentation]    A test case for disabling payment interval, business area.
    Disable Payment Interval
    Disable Business Area

Disable Purchase Org And Purchase Group
    [Documentation]    A test case for disabling purchase org, purchase group.
    Disable Purchase Org
    Disable Purchase Group

Disable Sales Group And Sales Office
    [Documentation]    A test case for disabling sales group, sales office.
    Disable Sales Group
    Disable Sales Office

Disable Shipping Condition And
    [Documentation]    A test case for disabling shipping condition, invoicing date.
    Disable Shipping Condition
    Disable Invoicing date

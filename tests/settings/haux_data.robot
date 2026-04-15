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
    Retry Keyword With Popup Fix    Enable Or Add Original Storage
    Retry Keyword With Popup Fix    Edit Original Storage

Add Edit Keywords
    [Documentation]    A test case for keywords.
    Go To Keywords
    Retry Keyword With Popup Fix    Enable Or Add Keywords
    Retry Keyword With Popup Fix    Edit Keywords

Add Edit Document Type
    [Documentation]    A test case for document type.
    Go To Document Type
    Retry Keyword With Popup Fix    Enable Or Add Document Type
    Retry Keyword With Popup Fix    Edit Document Type

Add Edit Contract Relations
    [Documentation]    A test case for contract relations.
    Go To Contract Relations
    Retry Keyword With Popup Fix    Enable Or Add Contract Relations
    Retry Keyword With Popup Fix    Edit Contract Relations

Add Edit Payment Interval
    [Documentation]    A test case for payment interval.
    Go To Payment Interval
    Retry Keyword With Popup Fix    Enable Or Add Payment Interval
    Retry Keyword With Popup Fix    Edit Payment Interval

Add Edit Business Area
    [Documentation]    A test case for payment interval.
    Go To Business Area
    Retry Keyword With Popup Fix    Enable Or Add Business Area
    Retry Keyword With Popup Fix    Edit Business Area

Add Edit Purchase Org
    [Documentation]    A test case for purchase org.
    Go To Purchase Org
    Retry Keyword With Popup Fix    Enable Or Add Purchase Org
    Retry Keyword With Popup Fix    Edit Purchase Org

Add Edit Purchase Group
    [Documentation]    A test case for purchase group.
    Go To Purchase Group
    Retry Keyword With Popup Fix    Enable Or Add Purchase Group
    Retry Keyword With Popup Fix    Edit Purchase Group

Add Edit Sales Group
    [Documentation]    A test case for sales group.
    Go To Sales Group
    Retry Keyword With Popup Fix    Enable Or Add Sales Group
    Retry Keyword With Popup Fix    Edit Sales Group

Add Edit Sales Office
    [Documentation]    A test case for sales office.
    Go To Sales Office
    Retry Keyword With Popup Fix    Enable Or Add Sales Office
    Retry Keyword With Popup Fix    Edit Sales Office

Add Edit Shipping Condition
    [Documentation]    A test case for shipping condition.
    Go To Shipping Condition
    Retry Keyword With Popup Fix    Enable Or Add Shipping Condition
    Retry Keyword With Popup Fix    Edit Shipping Condition

Add Edit Invoicing date
    [Documentation]    A test case for invoicing date.
    Go To Invoicing date
    Retry Keyword With Popup Fix    Enable Or Add Invoicing date
    Retry Keyword With Popup Fix    Edit Invoicing date

Check Created Aux Data
    [Documentation]    A test case for creating contract.
    Check Created Contract Other Data
    Check Created Contract Document
    Check Created Contract Relations
    haux_data.Delete Contract
    haux_data.Go To Settings

Disable Original Storage And Keywords
    [Documentation]    A test case for disabling original storage, keywords.
    Go To Original Storage
    Retry Keyword With Popup Fix    Disable Original Storage
    Go To Keywords
    Retry Keyword With Popup Fix    Disable Keywords

Disable Document Type And Contract Relations
    [Documentation]    A test case for disabling document type, contract relations.
    Go To Document Type
    Retry Keyword With Popup Fix    Disable Document Type
    Go To Contract Relations
    Retry Keyword With Popup Fix    Disable Contract Relations

Disable Document Type And Business Area
    [Documentation]    A test case for disabling payment interval, business area.
    Go To Payment Interval
    Retry Keyword With Popup Fix    Disable Payment Interval
    Go To Business Area
    Retry Keyword With Popup Fix    Disable Business Area

Disable Purchase Org And Purchase Group
    [Documentation]    A test case for disabling purchase org, purchase group.
    Go To Purchase Org
    Retry Keyword With Popup Fix    Disable Purchase Org
    Go To Purchase Group
    Retry Keyword With Popup Fix    Disable Purchase Group

Disable Sales Group And Sales Office
    [Documentation]    A test case for disabling sales group, sales office.
    Go To Sales Group
    Retry Keyword With Popup Fix    Disable Sales Group
    Go To Sales Office
    Retry Keyword With Popup Fix    Disable Sales Office

Disable Shipping Condition And
    [Documentation]    A test case for disabling shipping condition, invoicing date.
    Go To Shipping Condition
    Retry Keyword With Popup Fix    Disable Shipping Condition
    Go To Invoicing date
    Retry Keyword With Popup Fix    Disable Invoicing date

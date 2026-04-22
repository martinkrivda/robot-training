*** Settings ***
Documentation       A test suite for header main data.
...                 Keywords are imported from hmain_data.resource

Resource            ${EXECDIR}/resources/hmain_data.resource
Resource            ${EXECDIR}/resources/fields.resource

Suite Setup         Save and Set Fields
Suite Teardown      Restore Original Fields State

*** Test Cases ***
Add Edit Templates
    [Documentation]    A test case for templates.
    [Setup]    hmain_data.Field Setup
    Add Template
    Edit Template

Add Edit Field
    [Documentation]    A test case for fields.
    Go To Header Main Data Fields
    Retry Keyword With Popup Fix    Enable Fields Or Add Field
    Retry Keyword With Popup Fix    Enable Contract Kind Or Add Contract Kind
    Retry Keyword With Popup Fix    Edit Field
    Retry Keyword With Popup Fix    Edit Contract Kind

Add Edit Contract Type
    [Documentation]    A test case for contract type.
    Go To Contract Type
    Retry Keyword With Popup Fix    Enable Contract Type Or Add Contract Type
    Retry Keyword With Popup Fix    Edit Contract Type

Add Edit SAP Contract Kind
    [Documentation]    A test case for SAP contract kind.
    Go To SAP Contract Kind
    Retry Keyword With Popup Fix    Enable Sap Or Add Sap
    Retry Keyword With Popup Fix    Edit Sap

Add Edit Accounting area
    [Documentation]    A test case for accounting area.
    Go To Accounting area
    Retry Keyword With Popup Fix    Enable Accounting area Or Add Accounting area
    Retry Keyword With Popup Fix    Edit Accounting area

Add Edit Profit Center
    [Documentation]    A test case for profit center.
    Go To Profit Center
    Retry Keyword With Popup Fix    Enable Profit Center Or Add Profit Center
    Retry Keyword With Popup Fix    Edit Profit Centrum

Add Edit Contract Status
    [Documentation]    A test case for contract status.
    Go To Contract Status
    Retry Keyword With Popup Fix    Enable Contract Status Or Add Contract Status
    Retry Keyword With Popup Fix    Edit Contract Status

Add Edit Partner Role
    [Documentation]    A test case for partner role.
    Go To Partner Role
    Retry Keyword With Popup Fix    Enable Parner Role Or Add Partner Role
    Retry Keyword With Popup Fix    Edit Partner Role

Add Edit Confidentiality level
    [Documentation]    A test case for confidentiality level.
    Go To Confidentiality level
    Retry Keyword With Popup Fix    Enable Confidentiality level Or Add Confidentiality level
    Retry Keyword With Popup Fix    Edit Confidentiality level

Add Edit Internal Partner
    [Documentation]    A test case for internal partner.
    Go To Internal Partner
    Retry Keyword With Popup Fix    Enable Internal Partner Or Add Internal Partner
    Retry Keyword With Popup Fix    Enable Organization Unit Or Add Organization Unit
    Retry Keyword With Popup Fix    Edit Internal Partner
    Retry Keyword With Popup Fix    Edit Organization Unit

Add Edit Business Case
    [Documentation]    A test case for business case.
    Go To Business Case
    Retry Keyword With Popup Fix    Enable Business Case Or Add Business Case
    Retry Keyword With Popup Fix    Edit Business Case

Add Edit Contract Language
    [Documentation]    A test case for contract language.
    Go To Contract Language
    Retry Keyword With Popup Fix    Enable Contract Language Or Add Contract Language
    Retry Keyword With Popup Fix    Edit Contract Language

Add Edit VAD ID
    [Documentation]    A test case for VAD ID.
    Go To VAT ID
    Retry Keyword With Popup Fix    Enable VAT ID Or Add VAD ID
    Retry Keyword With Popup Fix    Edit VAT ID

Add Edit Bank Account
    [Documentation]    A test case for bank account.
    Go To Bank Account
    Retry Keyword With Popup Fix    Enable Bank Account Or Add Bank Account
    Retry Keyword With Popup Fix    Edit Bank Account

Add Edit Applicable Law
    [Documentation]    A test case for applicable law.
    Go To Applicable Law
    Retry Keyword With Popup Fix    Enable Applicable Law Or Add Applicable Law
    Retry Keyword With Popup Fix    Edit Applicable Law

Check Created Main Data
    [Documentation]    A test case for creating contract, contract template.
    Check Created Contract Data
    Check Created Template
    hmain_data.Delete Contract

Delete Template And Disable Field
    [Documentation]    A test case for deleting template, disabling field.
    Delete Template
    Retry Keyword With Popup Fix    Disable Fields
    Retry Keyword With Popup Fix    Disable Contract Kind

Disable Contract Type And Sap
    [Documentation]    A test case for disabling contract type, SAP contract kind.
    Retry Keyword With Popup Fix    Disable Contract Type
    Retry Keyword With Popup Fix    Disable Sap

Disable Accounting area And Profit Centrum
    [Documentation]    A test case for disabling Accounting area, profit centrum.
    Retry Keyword With Popup Fix    Disable Accounting area
    Retry Keyword With Popup Fix    Disable Profit Centrum

Disable Contract Status And Partner Role
    [Documentation]    A test case for disabling contract status, partner role.
    Retry Keyword With Popup Fix    Disable Contract Status
    Retry Keyword With Popup Fix    Disable Partner Role

Disable Confidentiality level And Internal Partner
    [Documentation]    A test case for disabling confidentiality level, internal partner.
    Retry Keyword With Popup Fix    Disable Confidentiality level
    Retry Keyword With Popup Fix    Disable Internal Partner
    Retry Keyword With Popup Fix    Disable Organization Unit

Disable Business Case
    [Documentation]    A test case for disabling business case.
    Retry Keyword With Popup Fix    Disable Business Case

Disable Contract Language And VAD ID
    [Documentation]    A test case for disabling contract language, VAD ID.
    Retry Keyword With Popup Fix    Disable Contract Language
    Retry Keyword With Popup Fix    Disable VAT ID

Disable Bank Account And Applicable Law
    [Documentation]    A test case for disabling bank account, applicable law.
    Retry Keyword With Popup Fix    Disable Bank Account
    Retry Keyword With Popup Fix    Disable Applicable Law

Set Fields Visibility Back to Normal
    [Documentation]    A test case for fileds visibility.
    hmain_data.Click On Administration
    Set SAP Visibility Back to Invisible
    Set Accounting area Visibility Back to Invisible

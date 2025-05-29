*** Settings ***
Documentation       A test suite for header main data.
...                 Keywords are imported from hmain_data.resource

Resource            ${EXECDIR}/resources/hmain_data.resource


*** Test Cases ***
Add Edit Templates
    [Documentation]    A test case for templates.
    [Setup]    Field Setup
    Add Template
    Edit Template

Add Edit Field
    [Documentation]    A test case for fields.
    Go To Header Main Data Fields
    Enable Fields Or Add Field
    Enable Contract Kind Or Add Contract Kind
    Edit Field
    Edit Contract Kind

Add Edit Contract Type
    [Documentation]    A test case for contract type.
    Go To Contract Type
    Enable Contract Type Or Add Contract Type
    Edit Contract Type

Add Edit SAP Contract Kind
    [Documentation]    A test case for SAP contract kind.
    Go To SAP Contract Kind
    Enable Sap Or Add Sap
    Edit Sap

Add Edit Accounting area
    [Documentation]    A test case for accounting area.
    Go To Accounting area
    Enable Accounting area Or Add Accounting area
    Edit Accounting area

Add Edit Profit Center
    [Documentation]    A test case for profit center.
    Go To Profit Center
    Enable Profit Center Or Add Profit Center
    Edit Profit Centrum

Add Edit Contract Status
    [Documentation]    A test case for contract status.
    Go To Contract Status
    Enable Contract Status Or Add Contract Status
    Edit Contract Status

Add Edit Partner Role
    [Documentation]    A test case for partner role.
    Go To Partner Role
    Enable Parner Role Or Add Partner Role
    Edit Partner Role

Add Edit Confidentiality level
    [Documentation]    A test case for confidentiality level.
    Go To Confidentiality level
    Enable Confidentiality level Or Add Confidentiality level
    Edit Confidentiality level

Add Edit Internal Partner
    [Documentation]    A test case for internal partner.
    Go To Internal Partner
    Enable Internal Partner Or Add Internal Partner
    Enable Organization Unit Or Add Organization Unit
    Edit Internal Partner
    Edit Organization Unit

Add Edit Business Case
    [Documentation]    A test case for business case.
    Go To Business Case
    Enable Business Case Or Add Business Case
    Edit Business Case

Add Edit Contract Language
    [Documentation]    A test case for contract language.
    Go To Contract Language
    Enable Contract Language Or Add Contract Language
    Edit Contract Language

Add Edit VAD ID
    [Documentation]    A test case for VAD ID.
    Go To VAT ID
    Enable VAT ID Or Add VAD ID
    Edit VAT ID

Add Edit Bank Account
    [Documentation]    A test case for bank account.
    Go To Bank Account
    Enable Bank Account Or Add Bank Account
    Edit Bank Account

Add Edit Applicable Law
    [Documentation]    A test case for applicable law.
    Go To Applicable Law
    Enable Applicable Law Or Add Applicable Law
    Edit Applicable Law

Check Created Main Data
    [Documentation]    A test case for creating contract, contract template.
    Check Created Contract Data
    Check Created Template
    Delete Contract

Delete Template And Disable Field
    [Documentation]    A test case for deleting template, disabling field.
    Delete Template
    Disable Fields
    Disable Contract Kind

Disable Contract Type And Sap
    [Documentation]    A test case for disabling contract type, SAP contract kind.
    Disable Contract Type
    Disable Sap

Disable Accounting area And Profit Centrum
    [Documentation]    A test case for disabling Accounting area, profit centrum.
    Disable Accounting area
    Disable Profic Centrum

Disable Contract Status And Partner Role
    [Documentation]    A test case for disabling contract status, partner role.
    Disable Contract Status
    Disable Partner Role

Disable Confidentiality level And Internal Partner
    [Documentation]    A test case for disabling confidentiality level, internal partner.
    Disable Confidentiality level
    Disable Internal Partner
    Disable Organization Unit

Disable Business Case
    [Documentation]    A test case for disabling business case.
    Disable Business Case

Disable Contract Language And VAD ID
    [Documentation]    A test case for disabling contract language, VAD ID.
    Disable Contract Language
    Disable VAT ID

Disable Bank Account And Applicable Law
    [Documentation]    A test case for disabling bank account, applicable law.
    Disable Bank Account
    Disable Applicable Law

Set Fields Visibility Back to Normal
    [Documentation]    A test case for fileds visibility.
    Click On Administration
    Set SAP Visibility Back to Invisible
    Set Accounting area Visibility Back to Invisible

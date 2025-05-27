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

# Add Edit SAP contract kind


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

Disable Contract Type
    [Documentation]    A test case for disabling contract type.
    Disable Contract Type

# Set Fields Visibility Back to Normal


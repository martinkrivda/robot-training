*** Settings ***
Documentation       A test suite for fields.
...                 Keywords are imported from fields.resource

Resource            ${EXECDIR}/resources/fields.resource


*** Test Cases ***
Test Fields
    [Documentation]    A test case for fields.
    [Setup]    Field Setup
    Check If Tender Number Is Not Visible
    Edit Fields
    Check If Tender Number Is Visible
    Check If Tender Number Is Optional
    Add Required To Tender Number
    Check If Tender Number Is Required
    Try To Create Contract Without Required Tender Number
    Create Contract With All Required
    Delete Contract

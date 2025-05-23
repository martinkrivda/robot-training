*** Settings ***
Documentation       A test suite for fields.
...                 Keywords are imported from fields.resource

Resource            ${EXECDIR}/resources/fields.resource


*** Test Cases ***
Turn Off/On Visibility of Field
    [Documentation]    A test case for visibility of fields.
    [Setup]    Field Setup
    Edit Fields
    Check If Tender Number Is Visible

Turn Off/On Required of Field
    [Documentation]    A test case for required fields.
    Check If Tender Number Is Optional
    Add Required To Tender Number
    Check If Tender Number Is Required

Not Possible To Create a Contract Without a Required Field
    [Documentation]    A test case for creating contracts.
    Try To Create Contract Without Required Tender Number
    Create Contract With All Required
    Delete Contract
    Edit Field Back To Normal

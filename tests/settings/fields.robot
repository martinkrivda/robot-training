*** Settings ***
Documentation       A test suite for fields.
...                 Keywords are imported from fields.resource

Resource            ${EXECDIR}/resources/fields.resource


*** Test Cases ***
Turn Off/On Visibility of Header Field
    [Documentation]    A test case for visibility of fields.
    [Setup]    Field Setup
    Check If Tender Number Is Not Visible
    Go To Fields
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
    Edit Field Back To Normal

Turn Off/On Visibility of Item Field
    [Documentation]    A test case for visibility of item fields.
    Check If Packing Is Not Visible
    Edit Item Fields
    Check If Packing Is Visible

Turn Off/On Required of Item Field
    [Documentation]    A test case for required item fields.
    Check If Packing Is Optional
    Add Required To Packing
    Check If Packing Is Required

Not Possible To Create a Contract Item Without a Required Field
    [Documentation]    A test case for creating contract items.
    Try To Create Contract Item Without Required Packing
    Create Contract Item With All Required
    Edit Item Field Back To Normal

 Delete Contract Item and Contract
    [Documentation]    A test case for deleting contract.
    Delete Contract Item
    Delete Contract
    Disable Packing Item

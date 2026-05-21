*** Settings ***
Documentation       A test suite for process.
...                 Keywords are imported from process.resource

Resource            ${EXECDIR}/resources/process.resource
Resource            ${EXECDIR}/resources/fields.resource
# Suite Setup    Save and Set Fields
# Suite Teardown    Restore Original Fields State


*** Test Cases ***
Check Name Of User And Create, Edit Contract
    [Documentation]    A test case for creating contracts.
    [Setup]    Process Setup
    Check Name Of User
    Create Contract
    Create Contract 2
    Edit Contract
    Check Edited Contract

Test Creating, Editing Contract Item
    [Documentation]    A test case for creating, editing contract item.
    Create Contract Item
    Edit Contract Item
    Check Edited Contract Item

Add Documents, Final Version And Start SignOff Process
    [Documentation]    A test case for creating, editing contract item.
    Add Documents
    Add Final Version
    Start SignOff Process

Create Contract Item, Documents, Final Version To Second Contract And Start SignOff Process
    [Documentation]    A test case for creating contract item, documents, final version to second contract and starting signoff process.
    Create Contract Item 2
    Add Documents
    Add Final Version
    Start SignOff Process

Test Contract SingOff
    [Documentation]    A test case for contract signoff.
    Contract SignOff
    Contract SignOff 2
    Check Signed Off Contract And Create Cover Sheet
    Add Original
    Wait Until Comparing Finished
    Check Signed Off Contract And Create Cover Sheet 2
    Add Original
    Wait Until Comparing Finished

Test Differences
    [Documentation]    A test case for testing differences.
    Test Differences
    Check Signature Date And Partner Signature Date
    Release Contract

Test Differences And Release
    [Documentation]    A test case for testing differences and release.
    Test Differences And Release
    Check Signature Date And Partner Signature Date 2
    Check Released Contract

Test Searching
    [Documentation]    A test case for searching.
    Search First Contract
    Search Second Contract

Delete Contracts
    [Documentation]    A test case for deleting contracts.
    Delete First Contract
    Delete Second Contract

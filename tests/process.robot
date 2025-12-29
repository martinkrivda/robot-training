*** Settings ***
Documentation       A test suite for process.
...                 Keywords are imported from process.resource

Resource            ${EXECDIR}/resources/process.resource


*** Test Cases ***
Test Filter And Searching
    [Documentation]    A test case for filter, searching.
    [Setup]    Process Setup
    Check Name Of User
    Create Contract
    Edit Contract
    Check Edited Contract
    Create Contract Item
    Edit Contract Item
    Check Edited Contract Item
    Add Documents
    Add Final Version
    Start SignOff Process
    Contract SignOff
    Check Signed Off Contract And Create Cover Sheet
    Original
    Wait Until Comparing Finished


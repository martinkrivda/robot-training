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

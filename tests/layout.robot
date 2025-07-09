*** Settings ***
Documentation       A test suite for layout.
...                 Keywords are imported from layout.resource

Resource            ${EXECDIR}/resources/layout.resource


*** Test Cases ***
Select None And Select All
    [Documentation]    A test case for selecting none and all.
    [Setup]    Layout Setup
    Layout Select None
    Layout Select All

Select Status
    [Documentation]    A test case for selecting.
    Unselect Partner
    Select Partner
    Unselect Kind
    Select Kind
    Unselect Termination Method
    Select Termination Method

Verify Sorting And Searching
    [Documentation]    A test case for sorting.
    Select Contract Subject, Partner, Kind And Termination Method
    Search Contract Subject
    Verify Column Sorting - Descending Then Ascending
    Test Alphabetical Sorting Of Kind Column
    Test Alphabetical Sorting Of Termination Method Column
    Remove Search

Set Layout Back To Normal And Delete Test Contracts
    [Documentation]    A test case for deleting test contracts.
    Layout Select All
    Delete Test Contracts

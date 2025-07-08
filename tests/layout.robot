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

Check Sorting
    [Documentation]    A test case for sorting.
    Select Partner, Kind And Termination Method

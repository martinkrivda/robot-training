*** Settings ***
Documentation       A test suite for search.
...                 Keywords are imported from search.resource

Resource            ${EXECDIR}/resources/search.resource


*** Test Cases ***
Test Filter And Searching
    [Documentation]    A test case for filter, searching.
    [Setup]    Search Setup
    Go To Search
    Test Searching Of Partner Contract Number
    Test Searching Of Field
    Test Searching Of Contract Subject
    Test Filter

Test Sorting
    [Documentation]    A test case for sorting.
    Test Sorting Of Columns

Set Data Back To Normal And Delete Test Contracts
    [Documentation]    A test case for deleting test contracts.
    Layout Select All
    Delete Test Contracts
    Disable Fields
    Disable Data

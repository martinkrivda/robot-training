*** Settings ***
Documentation       A test suite for search.
...                 Keywords are imported from search.resource

Resource            ${EXECDIR}/resources/search.resource


*** Test Cases ***
Test Searching
    [Documentation]    A test case for selecting none and all.
    [Setup]    Search Setup
    Sleep    1
    Go To Search
    Test Searching Of Partner Contract Number
    Test Searching Of Field
    Test Searching Of Contract Subject
    Sleep    4

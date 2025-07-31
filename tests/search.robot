*** Settings ***
Documentation       A test suite for search.
...                 Keywords are imported from search.resource

Resource            ${EXECDIR}/resources/search.resource


*** Test Cases ***
Select None And Select All
    [Documentation]    A test case for selecting none and all.
    [Setup]    Search Setup
    Create Contract Test 1
    Create Contract Item 1

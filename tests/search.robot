*** Settings ***
Documentation       A test suite for search.
...                 Keywords are imported from search.resource

Resource            ${EXECDIR}/resources/search.resource


*** Test Cases ***
Test Filter And Searching
    [Documentation]    A test case for filter, searching.
    [Setup]    Search Setup
    Sleep    1
    Go To Search
    Test Searching Of Partner Contract Number
    Test Searching Of Field
    Test Searching Of Contract Subject
    Test Filter

Test Sorting
    [Documentation]    A test case for sorting.
    Test Sorting Of Number Column
    Test Contract Subject Sorting
    Test Partner Sorting
    Sleep    5
    # Click Element    xpath=//div[contains(@class,"dataTables_scroll")]//tr/th[3][normalize-space(.)="Předmět"]

*** Settings ***
Documentation    A test suite for login.
...              Keywords are imported from keywords.resource
Resource    ${EXECDIR}/resources/login.resource
Test Setup    Open Browser And Logged In
Test Teardown    Close Browser

*** Test Cases ***
Valid login
    [Documentation]    A test case for valid login.
    Type In Valid Username
    Type In Valid Password
    Submit Credentials
    Welcome Page Should Be Open


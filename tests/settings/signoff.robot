*** Settings ***
Documentation    A test suite for signoff schemas.
...              Keywords are imported from signoff.resource
Resource    ${EXECDIR}/resources/signoff.resource
Test Setup    Open Browser And Logged In
Test Teardown    Close Browser

*** Test Cases ***
Add Edit Delete Signoff Schema
    [Documentation]    A test case for signoff schemas.
    Go To Settings
    Click On Administration
    Click On SignOff Schemas
    Add SignOff Schema
    Sleep    1
    Edit SignOff Schema
    Sleep    1
    Add User
    Sleep    1
    Edit User
    Sleep    1
    Delete User
    Sleep    1
    Delete SignOff Schema
    Sleep    1

*** Settings ***
Documentation    A test suite for login.
...              Keywords are imported from keywords.resource
Resource    ../../resources/settings.resource
Test Setup    Open Browser And Logged In
Test Teardown    Close Browser

*** Test Cases ***
Open Settings
    Go To Settings
    Click On Administration
    Click On SignOff Schemas
    Add SignOff Schema
    Sleep    3
    Edit SignOff Schema
    Sleep    2
    Add User
    Sleep    2

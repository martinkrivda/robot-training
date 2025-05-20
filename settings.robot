*** Settings ***
Documentation    A test suite for login.
...              Keywords are imported from keywords.resource
Resource    keywords.resource
Test Setup    Open Browser And Logged In
Test Teardown    Close Browser

*** Test Cases ***
Login With Valid Credentials
    Sleep  3

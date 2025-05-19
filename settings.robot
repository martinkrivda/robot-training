*** Settings ***
Documentation    A test suite for login.
...              Keywords are imported from keywords.resource
Resource    keywords.resource
Test Setup    Open Browser To Login Page
Test Teardown    Close Browser

*** Test Cases ***
Open Browser And Logged In
    Sleep  3

*** Settings ***
Documentation    A test suite for login.
...              Keywords are imported from keywords.resource
Resource    keywords.resource
Test Setup    Open Browser To Login Page
Test Teardown    Close Browser

*** Test Cases ***
Valid login
    [Documentation]    A test case for valid login.
    Type In Username    ${Valid User}
    Type In Password    ${Valid Password}
    Submit Credentials
    Welcome Page Should Be Open

Invalid Login (Invalid Password)
    [Documentation]    A test case for invalid login with wrong password.
    Type In Username    ${Valid User}
    Type In Password    ${Invalid Password}
    Submit Credentials
    Login Should Have Failed
    [Teardown]    NONE

Invalid Login (Invalid Username)
    [Documentation]    A test case for invalid login with wrong username.
    [Setup]    Go To Login Page
    Type In Username    ${Invalid User}
    Type In Password    ${Valid Password}
    Submit Credentials
    Login Should Have Failed
    [Teardown]    NONE

Invalid Login (Invalid Username and Password)
    [Documentation]    A test case for invalid login with wrong username and password.
    [Setup]    Go To Login Page
    Type In Username    ${Invalid User}
    Type In Password    ${Invalid Password}
    Submit Credentials
    Login Should Have Failed
    [Teardown]    NONE

Invalid Login (Empty Password)
    [Documentation]    A test case for invalid login with empty password.
    [Setup]    Go To Login Page
    Type In Username    ${Valid User}
    Type In Password    ${EMPTY}
    Submit Credentials
    Login Should Have Failed
    [Teardown]    NONE

Invalid Login (Empty Username)
    [Documentation]    A test case for invalid login with empty username.
    [Setup]    Go To Login Page
    Type In Username    ${EMPTY}
    Type In Password    ${Valid Password}
    Submit Credentials
    Login Should Have Failed
    [Teardown]    NONE

Invalid Login (Empty Username and Password)
    [Documentation]    A test case for invalid login with empty username and password.
    [Setup]    Go To Login Page
    Type In Username    ${EMPTY}
    Type In Password    ${EMPTY}
    Submit Credentials
    Login Should Have Failed
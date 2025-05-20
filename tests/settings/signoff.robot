*** Settings ***
Documentation    A test suite for signoff schemas.
...              Keywords are imported from signoff.resource
Resource    ${EXECDIR}/resources/signoff.resource
Test Setup    Go To SignOff Schemas
Test Teardown    Close Browser

*** Test Cases ***
Add Edit Delete Signoff Schema
    [Documentation]    A test case for signoff schemas.
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
    [Teardown]    NONE

Invalid Addition Of Signoff Schema (Empty Schema)
    [Documentation]    A test case for adding signoff schema with empty schema.
    [Setup]    NONE
    Add Empty SignOff Schema
    Sleep    1
    [Teardown]    NONE

Invalid Addition Of Signoff Schema (Empty Level)
    [Documentation]    A test case for adding signoff schema with empty level.
    [Setup]    NONE
    Add Empty SignOff Levels
    Sleep    1
    [Teardown]    NONE

Invalid Addition Of Signoff Schema (Empty Schema and Level)
    [Documentation]    A test case for adding signoff schema with empty schema and level.
    [Setup]    NONE
    Add Empty SignOff Schema And Levels


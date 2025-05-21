*** Settings ***
Documentation    A test suite for signoff schemas.
...              Keywords are imported from signoff_sch.resource
Resource    ${EXECDIR}/resources/signoff_sch.resource
# Test Setup    Go To SignOff Schemas
# Test Teardown    Close Browser

*** Test Cases ***
Add Edit Delete Signoff Schema
    [Documentation]    A test case for signoff schemas.
    [Setup]    Prepare Test
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

Invalid Addition Of Signoff Schema (Empty Schema)
    [Documentation]    A test case for adding signoff schema with empty schema.
    Add Empty SignOff Schema
    Sleep    1

Invalid Addition Of Signoff Schema (Empty Level)
    [Documentation]    A test case for adding signoff schema with empty level.
    Add Empty SignOff Levels
    Sleep    1

Invalid Addition Of Signoff Schema (Empty Schema and Level)
    [Documentation]    A test case for adding signoff schema with empty schema and level.
    Add Empty SignOff Schema And Levels
    Sleep    1

Invalid Addition Of Schema User (Empty User)
    [Documentation]    A test case for adding signoff user with empty user.
    Add SignOff Schema
    Sleep    1
    Click Element    //td[normalize-space(text())="dvtest1"]
    Add Empty Schema User
    Sleep    1

Invalid Addition Of Schema User (Empty Level)
    [Documentation]    A test case for adding signoff user with empty level.
    Add Empty Schema Levels
    Sleep    1

Invalid Addition Of Schema User (Empty User and Level)
    [Documentation]    A test case for adding signoff user with empty user and level.
    Add Empty Schema User And Levels
    Sleep    1
    Delete SignOff Schema User Test
    Sleep    1
    [Teardown]    Close Browser

*** Settings ***
Documentation       A test suite for signoff schemas.
...                 Keywords are imported from signoff_sch.resource

Resource            ${EXECDIR}/resources/signoff_sch.resource


*** Test Cases ***
Add Edit Delete Signoff Schema
    [Documentation]    A test case for signoff schemas.
    [Setup]    Prepare Test
    Add SignOff Schema
    Edit SignOff Schema
    Add User
    Edit User
    Delete User
    Delete SignOff Schema

Invalid Addition Of Signoff Schema (Empty Schema)
    [Documentation]    A test case for adding signoff schema with empty schema.
    Add Empty SignOff Schema

Invalid Addition Of Signoff Schema (Empty Level)
    [Documentation]    A test case for adding signoff schema with empty level.
    Add Empty SignOff Levels

Invalid Addition Of Signoff Schema (Empty Schema and Level)
    [Documentation]    A test case for adding signoff schema with empty schema and level.
    Add Empty SignOff Schema And Levels

Invalid Addition Of Schema User (Empty User)
    [Documentation]    A test case for adding signoff user with empty user.
    Add SignOff Schema
    Add Empty Schema User

Invalid Addition Of Schema User (Empty Level)
    [Documentation]    A test case for adding signoff user with empty level.
    Add Empty Schema Levels

Invalid Addition Of Schema User (Empty User and Level)
    [Documentation]    A test case for adding signoff user with empty user and level.
    Add Empty Schema User And Levels
    Delete SignOff Schema User Test

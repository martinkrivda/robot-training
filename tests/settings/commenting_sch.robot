*** Settings ***
Documentation       A test suite for commenting schemas.
...                 Keywords are imported from commenting_sch.resource

Resource            ${EXECDIR}/resources/commenting_sch.resource


*** Test Cases ***
Add Edit Delete Commenting Schemas
    [Documentation]    A test case for commenting schemas.
    [Setup]    Prepare Test
    Add Commenting Schemas
    Edit Commenting Schema
    Add User
    Edit User
    Delete User
    Delete Commenting Schema

Invalid Addition Of Commenting Schema
    [Documentation]    A test case for adding commenting schema with empty schema.
    Add Empty Commenting Schema

Invalid Addition Of Commenting Schema User
    [Documentation]    A test case for adding commenting user with empty user.
    Add Commenting Schemas
    Click Element    //td[normalize-space(text())="${Commenting Schema Name}"]
    Add Empty Commenting Schema User
    Delete Commenting Schema User Test
    [Teardown]    Close Browser

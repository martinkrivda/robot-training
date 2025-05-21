*** Settings ***
Documentation    A test suite for commenting schemas.
...              Keywords are imported from commenting_sch.resource
Resource    ${EXECDIR}/resources/commenting_sch.resource
# Test Setup    Go To SignOff Schemas
# Test Teardown    Close Browser

*** Test Cases ***
Add Edit Delete Commenting Schemas
    [Documentation]    A test case for commenting schemas.
    [Setup]    Prepare Test
    Add Commenting Schemas
    Sleep    1
    Edit Commenting Schema
    Sleep    1
    Add User
    Sleep    1
    Edit User
    Sleep    1
    Delete User
    Sleep    1
    Delete Commenting Schema
    Sleep    1

Invalid Addition Of Commenting Schema
    [Documentation]    A test case for adding commenting schema with empty schema.
    Add Empty Commenting Schema
    Sleep    1

Invalid Addition Of Commenting Schema User
    [Documentation]    A test case for adding commenting user with empty user.
    Add Commenting Schemas
    Sleep    1
    Click Element    //td[normalize-space(text())="${Commenting Schema Name}"]
    Add Empty Commenting Schema User
    Sleep    1
    Delete Commenting Schema User Test
    [Teardown]    Close Browser

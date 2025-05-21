*** Settings ***
Documentation       A test suite for commenting schemas.
...                 Keywords are imported from commenting_sch.resource

Resource            ${EXECDIR}/resources/fields.resource


*** Test Cases ***
Field
    [Documentation]    A test case for commenting schemas.
    [Setup]    Go To Fields
    Edit Fields
    Sleep    2

*** Settings ***
Documentation       A test suite for header aux data.
...                 Keywords are imported from haux_data.resource

Resource            ${EXECDIR}/resources/haux_data.resource


*** Test Cases ***
Add Edit Original Storage
    [Documentation]    A test case for templates.
    [Setup]    Haux Setup
    Go To Original Storage
    Enable Or Add Original Storage
    Edit Original Storage

Check Created Aux Data
    [Documentation]    A test case for creating contract.
    Check Created Contract Other Data
    Delete Contract

Disable Original Storage
    [Documentation]    A test case for disabling original storage.
    Disable Original Storage


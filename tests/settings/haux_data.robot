*** Settings ***
Documentation       A test suite for header aux data.
...                 Keywords are imported from haux_data.resource

Resource            ${EXECDIR}/resources/haux_data.resource


*** Test Cases ***
Add Edit Original Storage
    [Documentation]    A test case for original storage.
    [Setup]    Haux Setup
    Go To Original Storage
    Enable Or Add Original Storage
    Edit Original Storage

Add Edit Keywords
    [Documentation]    A test case for keywords.
    Go To Keywords
    Enable Or Add Keywords
    Edit Keywords

Add Edit Document Type
    [Documentation]    A test case for document type.
    Go To Document Type
    Enable Or Add Document Type
    Edit Document Type

Add Edit Contract Relations
    [Documentation]    A test case for contract relations.
    Go To Contract Relations
    Enable Or Add Contract Relations
    Edit Contract Relations

Check Created Aux Data
    [Documentation]    A test case for creating contract.
    Check Created Contract Other Data
    Delete Contract

Disable Original Storage And Keywords
    [Documentation]    A test case for disabling original storage, keywords.
    Disable Original Storage
    Disable Keywords

Disable Document Type And Contract Relations
    [Documentation]    A test case for disabling document type, contract relations.
    Disable Document Type
    Disable Contract Relations

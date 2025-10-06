*** Settings ***
Documentation       A test suite for fields_setup.
...                 Keywords are imported from fields.resource

Resource            ${EXECDIR}/resources/fields.resource

Suite Setup         Save and Set Fields
Suite Teardown      Restore Original Fields State


*** Test Cases ***
Test Zachovani A Obnova Stavu Tabulky
    Open Browser And Logged In
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Sleep    10
    Click Element    ${Close Button}

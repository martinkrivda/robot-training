*** Settings ***
Documentation       A test suite for restoring backup of fields settings.
...                 Keywords are imported from fields.resource

Resource            ${EXECDIR}/resources/fields.resource

*** Test Cases ***
Obnova zálohy nastavení polí
    Restore Backup of Fields Settings

Kontrola změny nastavení polí
    Open Browser And Logged In
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Sleep    3
    Click Element    ${Close Button}

*** Settings ***
Library         SeleniumLibrary
Library         Process
Library         OperatingSystem
Variables       ../credentials.py
Resource        ${EXECDIR}/resources/fields.resource


*** Test Cases ***
Test Zachovani A Obnova Stavu Tabulky
    Spustit Ulozeni A Nastaveni Stavu
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}
    Wait Until Ready    ${Create Contract}
    Click Element    ${Create Contract}
    Wait Until Ready    ${Id Number Sequence}
    Click Element    ${Close Button}
    Spustit Obnovu Stavu


*** Keywords ***
Spustit Ulozeni A Nastaveni Stavu
    Open Browser And Logged In
    Go To Fields
    Run Process    python    save_and_set_states.py

Spustit Obnovu Stavu
    Open Browser And Logged In
    Go To Fields
    Run Process    python    restore_states.py
    Close Browser

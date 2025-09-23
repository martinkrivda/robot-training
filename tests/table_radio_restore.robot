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
Ulozit Session Info
    ${selenium}=    Get Library Instance    SeleniumLibrary
    ${driver}=    Evaluate    $selenium.driver
    ${session_id}=    Evaluate    $driver.session_id
    ${executor_url}=    Evaluate    $driver.command_executor._url
    IF    '${session_id}'=='${None}' or '${executor_url}'=='${None}'
        Fail    Failed to retrieve session info
    END
    ${session_data}=    Create Dictionary    executor_url=${executor_url}    session_id=${session_id}
    ${json_data}=    Evaluate    json.dumps($session_data)    modules=json
    Create File    session_info.json    ${json_data}
    Log    Session info saved to session_info.json

Spustit Ulozeni A Nastaveni Stavu
    Remove File    initial_states.json
    Open Browser And Logged In
    Go To Fields
    Ulozit Session Info
    Run Process
    ...    python
    ...    ${EXECDIR}/tests/save_and_set_states.py
    ...    stdout=stdout.txt
    ...    stderr=stderr.txt
    ...    env:PYTHONIOENCODING=utf-8
    ${stdout}=    Get File    stdout.txt    encoding=utf-8
    ${stderr}=    Get File    stderr.txt    encoding=utf-8
    Log    stdout: ${stdout}
    Log    stderr: ${stderr}

Spustit Obnovu Stavu
    Open Browser And Logged In
    Go To Fields
    Ulozit Session Info
    Run Process
    ...    python
    ...    ${EXECDIR}/tests/restore_states.py
    ...    stdout=stdout.txt
    ...    stderr=stderr.txt
    ...    env:PYTHONIOENCODING=utf-8
    ${stdout}=    Get File    stdout.txt    encoding=utf-8
    ${stderr}=    Get File    stderr.txt    encoding=utf-8
    Log    stdout: ${stdout}
    Log    stderr: ${stderr}

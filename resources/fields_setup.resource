*** Settings ***
Library         SeleniumLibrary
Library         Process
Library         OperatingSystem
Variables       ../credentials.py
Resource        login.resource


*** Variables ***
${Settings}                                 //a[@class="main_tabs" and @href="#tab_settings"]
${Id Administration and Configuration}      admin_config
${Id Fields}                                settings_custom_fields
${Timeout}                                  5s
${Field Name}                               //tr[td[normalize-space(.)="Číslo výb.řízení"]]/td[1]
${Id Fields Edit Button}                    ts_edit_custom_fields_btn
${Contract creation1}                       //label[@for="s_required"]
${Finish Button}                            //button[normalize-space(text())="Dokončit"]


*** Keywords ***
Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Go To Settings
    Wait Until Ready    ${Settings}
    Click Element    ${Settings}

Click On Administration
    Wait Until Ready    ${Id Administration and Configuration}
    Click Element    ${Id Administration and Configuration}

Click On Fields
    Wait Until Ready    ${Id Fields}
    Click Element    ${Id Fields}

Go To Fields
    Go To Settings
    Click On Administration
    Click On Fields

# Add Required To Tender Number
#    Wait Until Ready    ${Field Name}
#    Click Element    ${Field Name}
#    Wait Until Ready    ${Id Fields Edit Button}
#    Click Button    ${Id Fields Edit Button}
#    Wait Until Ready    ${Contract creation1}
#    Click Element    ${Contract creation1}
#    Click Element    ${Finish Button}

Save Session Info
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

Save Original Fields State
    Remove File    initial_states.json
    Open Browser And Logged In
    Go To Fields
    Save Session Info
    Run Process
    ...    python
    ...    ${EXECDIR}/tests/save_states.py
    ...    stdout=stdout.txt
    ...    stderr=stderr.txt
    ...    env:PYTHONIOENCODING=utf-8
    ${stdout}=    Get File    stdout.txt    encoding=utf-8
    ${stderr}=    Get File    stderr.txt    encoding=utf-8
    Log    stdout: ${stdout}
    Log    stderr: ${stderr}
    Close Browser

Set Test Fields State
    Open Browser And Logged In
    Go To Fields
    Save Session Info
    Run Process
    ...    python
    ...    ${EXECDIR}/tests/set_states.py
    ...    stdout=stdout.txt
    ...    stderr=stderr.txt
    ...    env:PYTHONIOENCODING=utf-8
    ${stdout}=    Get File    stdout.txt    encoding=utf-8
    ${stderr}=    Get File    stderr.txt    encoding=utf-8
    Log    stdout: ${stdout}
    Log    stderr: ${stderr}
    Close Browser

Save and Set Fields
    Save Original Fields State
    Set Test Fields State

Restore Original Fields State
    Open Browser And Logged In
    Go To Fields
    Save Session Info
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
    Close Browser

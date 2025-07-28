*** Settings ***
Documentation       This is a resource file for Change Password.
...                 Keywords defined here can be used where this "change_pw.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Timeout}                          5s
${Personal Space}                   //a[@href="#tab_personal"]
${Id Personal Settings}             personal_settings
${Id Password Change}               password_change
${Please Wait}                      please_wait
${Id Old Password}                  old_pw
${Id New Password}                  new_pw
${Id Retype New Password}           new_pw2
${New Password}                     TestNewPW26
${Id PW Change Button}              pw_change_button
${Id Alert Area}                    //*[@id="alert_area"]
${PW Succesful Change Msg}          Heslo úspěšně změněno!
${PW Empty Fields Msg}              Vyplňte prosím všechna povinná pole!
${Old PW Wrong Msg}                 Původní heslo je nesprávné!
${PW Not Matching Msg}              Zopakované heslo se neshoduje s novým heslem!
${PW Required Complexity Msg}       Nové heslo nesplňuje požadavky komplexnosti!
${Random Password}                  mstest01
${Wrong Complexity}                 ms


*** Keywords ***
Wait Until Ready
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${Timeout}
    Wait Until Element Is Enabled    ${locator}    timeout=${Timeout}

Go To Personal Space
    Wait Until Ready    ${Personal Space}
    Click Element    ${Personal Space}

Click On Personal Settings
    Wait Until Ready    ${Id Personal Settings}
    Click Element    ${Id Personal Settings}

Click On Password Change
    Wait Until Ready    ${Id Password Change}
    Click Element    ${Id Password Change}

Go To Password Change
    Go To Personal Space
    Click On Personal Settings
    Click On Password Change

Type In Current Password
    Wait Until Element Is Not Visible    ${Please Wait}
    Input Text    ${Id Old Password}    ${VALIDPASSWORD}

Type In New Password
    Input Text    ${Id New Password}    ${New Password}

Retype In New Password
    Input Text    ${Id Retype New Password}    ${New Password}

Type In Changed Password
    Wait Until Element Is Not Visible    ${Please Wait}
    Input Text    ${Id Old Password}    ${New Password}

Type In Old Password
    Input Text    ${Id New Password}    ${VALIDPASSWORD}

Retype In Old Password
    Input Text    ${Id Retype New Password}    ${VALIDPASSWORD}

Submit Password Change
    Click Button    ${Id PW Change Button}

Password Should Be Changed
    Wait Until Element Is Visible    ${Id Alert Area}
    Element Text Should Be    ${Id Alert Area}    ${PW Succesful Change Msg}

Login With Changed Password
    Input Text    ${Id Password}    ${New Password}

Open Browser And Logged In With Changed Password
    Open Browser To Login Page
    Type In Valid Username
    Login With Changed Password
    Submit Credentials
    Welcome Page Should Be Open

Type In Wrong Old Password
    Input Text    ${Id Old Password}    ${Random Password}

Type In Random Password
    Input Text    ${Id New Password}    ${Random Password}

Type In Short Password
    Input Text    ${Id New Password}    ${Wrong Complexity}

Retype In Short Password
    Input Text    ${Id Retype New Password}    ${Wrong Complexity}

PW Change Should Have Failed With Empty Fields
    Wait Until Element Is Visible    ${Id Alert Area}
    Element Text Should Be    ${Id Alert Area}    ${PW Empty Fields Msg}

PW Change Should Have Failed With Wrong Old PW
    Wait Until Element Is Visible    ${Id Alert Area}
    Element Text Should Be    ${Id Alert Area}    ${Old PW Wrong Msg}

PW Change Should Have Failed Without Matching PWs
    Wait Until Element Is Visible    ${Id Alert Area}
    Element Text Should Be    ${Id Alert Area}    ${PW Not Matching Msg}

PW Change Should Have Failed Without Required Complexity
    Wait Until Element Is Visible    ${Id Alert Area}
    Element Text Should Be    ${Id Alert Area}    ${PW Required Complexity Msg}

*** Settings ***
Documentation       This is a resource file for Change Password.
...                 Keywords defined here can be used where this "change_pw.resource" is loaded.

Library             OperatingSystem
Library             SeleniumLibrary
Variables           ../credentials.py
Resource            login.resource


*** Variables ***
${Id Personal Settings}         personal_settings
${Id Password Change}           password_change
${Id Old Password}              old_pw
${Id New Password}              new_pw
${Id Retype New Password}       new_pw2
${New Password}                 MsTestNewPW26
${Id PW Change Button}          pw_change_button


*** Keywords ***
Go To Personal Space
    Click Element    //a[@href="#tab_personal"]

Click On Personal Settings
    # Wait Until Element Is Visible    ${Id Personal Settings}    timeout=5s
    Click Element    ${Id Personal Settings}

Click On Password Change
    # Wait Until Element Is Visible    ${Id Password Change}    timeout=5s
    Click Element    ${Id Password Change}

Go To Password Change
    Open Browser And Logged In
    Go To Personal Space
    Click On Personal Settings
    Click On Password Change

Type In Current Password
    Wait Until Element Is Not Visible    please_wait
    Input Text    ${Id Old Password}    ${VALIDPASSWORD}

Type In New Password
    Input Text    ${Id New Password}    ${New Password}

Retype In New Password
    Input Text    ${Id Retype New Password}    ${New Password}

Submit Password Change
    Click Button    ${Id PW Change Button}

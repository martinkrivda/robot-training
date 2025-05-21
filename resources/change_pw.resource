*** Settings ***
Documentation    This is a resource file for Change Password.
...              Keywords defined here can be used where this "change_pw.resource" is loaded.
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../credentials.py
Resource    login.resource

*** Variables ***
${Id Personal Settings}    personal_settings
${Id Password Change}    password_change
*** Keywords ***
# Go To Personal Space
#     # Wait Until Element Is Visible
#     Click Element    //a[@class="addMenu" and @href="#tab_personal"]

Click On Personal Settings
    Wait Until Element Is Visible    ${Id Personal Settings}    timeout=5s
    Click Element    ${Id Personal Settings}

Click On Password Change
    Wait Until Element Is Visible    ${Id Password Change}    timeout=5s
    Click Element    ${Id Password Change}

Go To Password Change
    Open Browser And Logged In
    # Go To Personal Space
    Click On Personal Settings
    Click On Password Change

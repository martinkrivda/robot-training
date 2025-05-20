*** Settings ***
Documentation    This is a resource file for Change Password.
...              Keywords defined here can be used where this "change_pw.resource" is loaded.
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../credentials.py
Resource    login.resource

*** Variables ***

*** Keywords ***
Go To Settings
    Click Element    //a[@class="main_tabs" and @href="#tab_settings"]

Click On Administration
    Wait Until Element Is Visible    id=personal_settings    timeout=5s
    Click Element    id=admin_config

Click On SignOff Schemas
    Wait Until Element Is Visible    id=settings_schemas    timeout=5s
    Click Element    id=settings_schemas

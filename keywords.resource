*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this "keywords.resource" is loaded.
Library    SeleniumLibrary

*** Variables ***
${Login Url}    https://centristest.agrofert.cz/csmrc/login.php
${Browser}    Chrome
${User Name}    Michal Svtest03
${Valid User}    mstest03
${Valid Password}    MsTest03
${Invalid User}    mstestXX
${Invalid Password}    MsTestXX
${Title Login}    CSM
${Title Welcome Page}    CSM Agrofert, a.s. TEST (1)
${Invalid Login Message}    Nemáte oprávnění k použití této aplikace!


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${Login Url}    ${Browser}
    Maximize Browser Window
    Title Should Be    ${Title Login}

Go To Login Page
    Go To    ${Login Url}
    Title Should Be    ${Title Login}

Type In Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Type In Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    login_btn

Welcome Page Should Be Open
    Title Should Be    ${Title Welcome Page}
    Element Text Should Be    //*[@id="user"]/em    ${User Name}

Login Should Have Failed
    Location Should Be    ${Login Url}
    Title Should Be    ${Title Login}
    Element Text Should Be    //*[@id="messages"]/center    ${Invalid Login Message}
    Element Text Should Be    username    ${EMPTY}
    Element Text Should Be    password    ${EMPTY}
*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this "keywords.resource" is loaded.
Library    OperatingSystem
Library    SeleniumLibrary
Variables    credentials.py

*** Variables ***
${Login Url}    https://apps.iss-europe.eu/csmtest/login.php
${Browser}    Chrome
# ${User Name}    %{USERNAME}
# ${Valid User}    ${VALIDUSER}
# ${Valid Password}    ${VALIDPASSWORD}
${Invalid User}    mstestXX
${Invalid Password}    MsTestXX
${Title Login}    CSM
${Title Welcome Page}    CSM ISS Europe (1)
${Invalid Login Message}    Nemáte oprávnění k použití této aplikace!


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${Login Url}    ${Browser}
    Maximize Browser Window
    Title Should Be    ${Title Login}

Go To Login Page
    Go To    ${Login Url}
    Title Should Be    ${Title Login}

Type In Valid Username
    Input Text    username    ${VALIDUSER}

Type In Invalid Username
    Input Text    username    ${Invalid User}

Type In Valid Password
    Input Text    password    ${VALIDPASSWORD}

Type In Invalid Password
    Input Text    password    ${Invalid Password}

Submit Credentials
    Click Button    login_btn

Welcome Page Should Be Open
    Title Should Be    ${Title Welcome Page}
    Element Text Should Be    //*[@id="user"]/em    ${USERNAME}

Login Should Have Failed
    Location Should Be    ${Login Url}
    Title Should Be    ${Title Login}
    Element Text Should Be    //*[@id="messages"]/center    ${Invalid Login Message}
    Element Text Should Be    username    ${EMPTY}
    Element Text Should Be    password    ${EMPTY}

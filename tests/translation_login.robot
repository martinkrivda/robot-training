*** Settings ***
Documentation       A test suite for translation in login page.
...                 Keywords are imported from login.resource

Resource            ${EXECDIR}/resources/login.resource

Suite Setup         Open Browser To Login Page
Suite Teardown      Close Browser
Test Setup          Go To Login Page
Test Template       Check login page translation


*** Test Cases ***    LANGUAGE
Czech Translation
    cs_CZ
Slovak Translation
    sk_SK
English Translation
    en_EN
German Translation
    de_DE


*** Keywords ***
Check login page translation
    [Arguments]    ${lang}
    Click Link    flag
    Click Element    //*[@id="${lang}"]
    IF    '${lang}' == 'cs_CZ'
        actions_when_czech
    ELSE IF    '${lang}' == 'sk_SK'
        actions_when_slovak
    ELSE IF    '${lang}' == 'en_EN'
        actions_when_english
    ELSE IF    '${lang}' == 'de_DE'
        actions_when_german
    END

actions_when_czech
    Element Text Should Be    //*[@id="user_login"]/div[1]/p[1]    Uživatelské jméno
    Element Text Should Be    //*[@id="user_login"]/div[1]/p[3]    Heslo
    Element Attribute Value Should Be    login_btn    value    Přihlášení
    Element Text Should Be    //*[@id="logininbox"]/p[3]/span    Zapomenuté heslo?

actions_when_slovak
    Element Text Should Be    //*[@id="user_login"]/div[1]/p[1]    Užívateľské meno
    Element Text Should Be    //*[@id="user_login"]/div[1]/p[3]    Heslo
    Element Attribute Value Should Be    login_btn    value    Prihlásenie
    Element Text Should Be    //*[@id="logininbox"]/p[3]/span    Zabudnuté heslo?

actions_when_english
    Element Text Should Be    //*[@id="user_login"]/div[1]/p[1]    Username
    Element Text Should Be    //*[@id="user_login"]/div[1]/p[3]    Password
    Element Attribute Value Should Be    login_btn    value    Login
    Element Text Should Be    //*[@id="logininbox"]/p[3]/span    Forgotten password?

actions_when_german
    Element Text Should Be    //*[@id="user_login"]/div[1]/p[1]    Benutzername
    Element Text Should Be    //*[@id="user_login"]/div[1]/p[3]    Passwort
    Element Attribute Value Should Be    login_btn    value    Login    # Anmeldung
    Element Text Should Be    //*[@id="logininbox"]/p[3]/span    Passwort vergessen?

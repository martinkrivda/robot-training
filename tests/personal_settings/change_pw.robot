*** Settings ***
Documentation       A test suite for password change.
...                 Keywords are imported from change_pw.resource

Resource            ${EXECDIR}/resources/change_pw.resource

Test Teardown       Close Browser


*** Test Cases ***
Valid Password Change
    [Documentation]    A test case for valid password change.
    [Setup]    Open Browser And Logged In
    Go To Password Change
    Type In Current Password
    Type In New Password
    Retype In New Password
    Submit Password Change
    Password Should Be Changed

Return Of Old Password
    [Documentation]    A test case for changing back to previous password.
    [Setup]    Open Browser And Logged In With Changed Password
    Go To Password Change
    Type In Changed Password
    Type In Old Password
    Retype In Old Password
    Submit Password Change
    Password Should Be Changed

Invalid Password Change (Empty Fields)
    [Documentation]    A test case for invalid password change with empty fields.
    [Setup]    Open Browser And Logged In
    Go To Password Change
    Type In Current Password
    Type In New Password
    Submit Password Change
    PW Change Should Have Failed With Empty Fields
    [Teardown]    NONE

Invalid Password Change (Wrong Old PW)
    [Documentation]    A test case for invalid password change with wrong old password.
    Type In Wrong Old Password
    Type In New Password
    Retype In New Password
    Submit Password Change
    PW Change Should Have Failed With Wrong Old PW
    [Teardown]    NONE

Invalid Password Change (New PWs Not Matching)
    [Documentation]    A test case for invalid password change without matching new passwords.
    Type In Current Password
    Type In Random Password
    Retype In New Password
    Submit Password Change
    PW Change Should Have Failed Without Matching PWs
    [Teardown]    NONE

Invalid Password Change (New PW Without Required Complexity)
    [Documentation]    A test case for invalid password change without matching new passwords.
    Type In Current Password
    Type In Short Password
    Retype In Short Password
    Submit Password Change
    PW Change Should Have Failed Without Required Complexity

*** Settings ***
Documentation       A test suite for password change.
...                 Keywords are imported from change_pw.resource

Resource            ${EXECDIR}/resources/change_pw.resource
# Test Teardown    Close Browser


*** Test Cases ***
Valid Password Change
    [Documentation]    A test case for valid password change.
    Go To Password Change
    Type In Current Password
    Type In New Password
    Retype In New Password
    Submit Password Change
    Password Should Be Changed

# Return Of Old Password
#    [Documentation]    A test case for changing back to previous password.
#    Go To Password Change
#    Type In Changed Password
#    Type In Old Password
#    Retype In Old Password
#    Submit Password Change
#    Sleep    3

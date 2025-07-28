*** Settings ***
Documentation       A test suite for show detail settings.
...                 Keywords are imported from show_detail.resource

Resource            ${EXECDIR}/resources/show_detail.resource


*** Test Cases ***
Turn Off Show Detail
    Open Browser And Logged In
    Go to Show Detail Settings
    Turn Off Show Detail Checkbox
    [Teardown]    NONE

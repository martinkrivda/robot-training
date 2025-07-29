*** Settings ***
Documentation       A test suite for show detail settings.
...                 Keywords are imported from show_detail.resource

Resource            ${EXECDIR}/resources/show_detail.resource


*** Test Cases ***
Turn Off Show Detail
    Open Browser And Logged In
    Go to Show Detail Settings
    Turn Off Show Detail Checkbox

Check Personal Space Without Detail
    Go To My Contracts
    Click On Contract

Turn On Show Detail
    Go to Show Detail Settings
    Turn On Show Detail Checkbox

Check Personal Space With Detail
    Go To My Contracts
    Click On Contract

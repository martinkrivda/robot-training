*** Settings ***
Documentation       A test suite for dependencies.
...                 Keywords are imported from dependencies.resource

Resource            ${EXECDIR}/resources/dependencies.resource
Resource            ${EXECDIR}/resources/fields.resource

Suite Setup         Save and Set Fields
Suite Teardown      Restore Original Fields State

*** Test Cases ***
Add Dependencies Master and Slave Field
    [Documentation]    A test case for adding dependencies fields.
    [Setup]    Dependencies Setup
    Add Master Field
    Add Slave Field

Edit Dependencies Master and Slave Field
    [Documentation]    A test case for editing dependencies fields.
    Edit Master Field
    Edit Slave Field

Check If Org Unit Is Optional/Required
    Check If Org Unit Is Optional
    Check If Org Unit Is Required

Not Possible To Create a Contract Without a Required Field
    Try To Create Contract Without Required Org Unit
    dependencies.Create Contract With All Required

Delete Added Contract
    dependencies.Delete Contract

Delete Added Dependencies
    Delete Dependencies

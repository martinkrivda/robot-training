*** Settings ***
Documentation       A test suite for dependencies.
...                 Keywords are imported from dependencies.resource

Resource            ${EXECDIR}/resources/dependencies.resource


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

Check If Primary Person Is Optional/Required
    Check If Primary Person Is Optional
    Check If Primary Person Is Required

Not Possible To Create a Contract Without a Required Field
    Try To Create Contract Without Required Primary Person
    Create Contract With All Required

Delete Added Contract
    Delete Contract

Delete Added Dependencies
    Delete Dependencies

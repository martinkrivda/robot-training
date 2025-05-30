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

Check If Applicable Law Is Optional/Required
    Check If Applicable Law Is Optional
    Check If Applicable Law Is Required

Not Possible To Create a Contract Without a Required Field
    Try To Create Contract Without Required Applicable Law
    Create Contract With All Required

Delete Contract and Added Dependencies
    Delete Contract
    Delete Dependencies

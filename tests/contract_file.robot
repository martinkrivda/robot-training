*** Settings ***
Documentation       A test suite for contract file.
...                 Keywords are imported from contract_file.resource

Resource            ${EXECDIR}/resources/contract_file.resource


*** Test Cases ***
Add Edit Delete Contract Items
    [Documentation]    A test case for contract items.
    [Setup]    Contract File Setup
    Go To Contract File
    Try To Create Contract Item Without Required Field
    Add Contract Item
    Edit Contract Item
    Delete Contract Item

Add Edit Delete Contract Document
    [Documentation]    A test case for contract document.
    Go To Contract Documents
    Try To Create Contract Document Without Required Field
    Add Contract Document
    Edit Contract Document
    Delete Contract Document

Add Edit Delete Additional Document
    [Documentation]    A test case for additional document.
    Go To Additional Documents
    Try To Create Additional Document Without Required Field
    Add Additional Document
    Edit Additional Document
    Delete Additional Document

Add Edit Delete Contract Relations
    [Documentation]    A test case for contract relations.
    Go To Contract Relations
    Try To Create Contract Relations Without Required Field
    Add Contract Relations
    Edit Contract Relations
    Delete Contract Relations

Add Edit Delete Contract Partners
    [Documentation]    A test case for contract partners.
    Go To Contract Partners
    Try To Create Contract Partners Without Required Field
    Add Contract Partners
    Delete Contract Partners

Add Edit Delete Milestones
    [Documentation]    A test case for milestones.
    Go To Milestones
    Try To Create Milestones Without Required Field
    Add Milestones
    Edit Milestones
    Delete Milestones

Complete Contract File
    [Documentation]    A test case for sign-off process.
    Add Contract Item, Final Version And Contract Partner
    Check Completed Contract File

Delete Contract
    [Documentation]    A test case for deleting contract.
    Delete Contract

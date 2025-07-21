*** Settings ***
Documentation       A test suite for layout.
...                 Keywords are imported from layout.resource

Resource            ${EXECDIR}/resources/layout.resource


*** Test Cases ***
Select None And Select All
    [Documentation]    A test case for selecting none and all.
    [Setup]    Layout Setup
    Sleep    1
#    Layout Select None
#    Layout Select All

# Select Status
#    [Documentation]    A test case for selecting.
#    Unselect Partner
#    Select Partner
#    Unselect Kind
#    Select Kind
#    Unselect Termination Method
#    Select Termination Method

Verify Sorting And Searching
    [Documentation]    A test case for sorting.
    Select Fields Test
    Test Searching Of Contract Type Column
    # Test Searching Of Status Column
    # Test Alphabetical Sorting Of Status Column
    # Create Contract Item 3
    # Test Updated Text Sorting
    # Test Searching Of Number Column
    # Test Sorting Of Number Column
    # Test Searching Of Partner Number Column
    # Test Sorting Of Partner Number Column
    # Test Searching Of Partner Column
    # Test Alphabetical Sorting Of Partner Column
    # Test Searching Of Partner ID Column
    # Test Sorting Of Partner ID Column
    # Test Contract Subject Sorting
    # Test Searching Of Field Column
    # Test Field Sorting
    # Test Searching Of Type Column
    # Test Type Sorting
    # Test Searching Of Prim. Resp. Column
    # Test Sorting Of Primary Responsible Column
    # Test Searching Of Sec. Resp. Column
    # Test Sorting Of Secondary Responsible Column
    # Test Searching Of Bank Account Column
    # Test Sorting Of Bank Account Column
    Test Searching Of Accountant Column
    Test Sorting Of Accountant Column
    Test Searching Of Appl. Law Column
    Test Sorting Of Appl. Law Column
    Test Searching Of Bonus Column
    Test Sorting Of Bonus Column

# Set Data Back To Normal And Delete Test Contracts
#    [Documentation]    A test case for deleting test contracts.
#    Layout Select All
#    Delete Test Contracts
#    Disable Fields
#    Disable Data

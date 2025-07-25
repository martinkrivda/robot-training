*** Settings ***
Documentation       A test suite for layout.
...                 Keywords are imported from layout.resource

Resource            ${EXECDIR}/resources/layout.resource


*** Test Cases ***
Select None And Select All
    [Documentation]    A test case for selecting none and all.
    [Setup]    Layout Setup
    Sleep    1
    Layout Select None
    Layout Select All

Select Status
    [Documentation]    A test case for selecting.
    Unselect Partner
    Select Partner
    Unselect Kind
    Select Kind
    Unselect Termination Method
    Select Termination Method

Verify Sorting And Searching
    [Documentation]    A test case for sorting.
    Select Fields Test
    Test Searching Of Contract Type Column
    Test Searching Of Status Column
    Test Alphabetical Sorting Of Status Column
    Create Contract Item 3
    Test Updated Text Sorting
    Test Searching Of Number Column
    Test Sorting Of Number Column
    Test Searching Of Partner Number Column
    Test Sorting Of Partner Number Column
    Test Searching Of Partner Column
    Test Alphabetical Sorting Of Partner Column
    Test Searching Of Partner ID Column
    Test Sorting Of Partner ID Column
    Test Contract Subject Sorting
    Test Searching Of Field Column
    Test Field Sorting
    Test Searching Of Type Column
    Test Type Sorting
    Test Searching Of Prim. Resp. Column
    Test Sorting Of Primary Responsible Column
    Test Searching Of Sec. Resp. Column
    Test Sorting Of Secondary Responsible Column
    Test Searching Of Bank Account Column
    Test Sorting Of Bank Account Column
    Test Searching Of Accountant Column
    Test Sorting Of Accountant Column
    Test Searching Of Appl. Law Column
    Test Sorting Of Appl. Law Column
    Test Searching Of Bonus Column
    Test Sorting Of Bonus Column
    Test Searching Of Confidentiality Column
    Test Sorting Of Confidentiality Column
    Test Searching Of Contact Person Column
    Test Sorting Of Contact Person Column
    Test Searching Of Contract Price Column
    Test Sorting Of Contract Price Column
    Test Searching Of Contract Price Currency Column
    Test Sorting Of Contract Price Currency Column
    Test Searching Of Deposit Column
    Test Sorting Of Deposit Column
    Test Searching Of Deposit Currency Column
    Test Sorting Of Deposit Currency Column
    Test Searching Of Deposit Text Column
    Test Sorting Of Deposit Text Column
    Test Searching Of Doc.enclosed Column
    Test Sorting Of Doc.enclosed Column
    Test Searching Of Doc.req. Column
    Test Sorting Of Doc.req. Column
    Test Searching Of Doc.req.date Column
    Test Sorting Of Doc.req.date Column
    Test Searching Of Effective Date Column
    Test Sorting Of Effective Date Column
    Edit Effective Date
    Test Searching Of Eff.from sig Date Column
    Test Sorting Of Eff.from sig Date Column
    Test Searching Of Interest Column
    Test Sorting Of Interest Column
    Test Searching Of Internal Contact Column
    Test Sorting Of Internal Contact Column
    Test Searching Of Int.part. Column
    Test Sorting Of Int.part. Column
    Test Searching Of Invoicing Date Column
    Test Sorting Of Invoicing Date Column
    Test Searching Of Irregular Payment Column
    Test Sorting Of Irregular Payment Column
    Test Searching Of Kind Column
    Test Sorting Of Kind Column
    Test Searching Of Language Column
    Test Sorting Of Language Column
    Test Searching Of Lend Date Column
    Test Sorting Of Lend Date Column
    Test Searching Of Lent To Column
    Test Sorting Of Lent To Column
    Test Searching Of Maturity 1 Column
    Test Sorting Of Maturity 1 Column
    Test Searching Of Maturity 2 Column
    Test Sorting Of Maturity 2 Column
    Test Searching Of Note Column
    Test Sorting Of Note Column
    Test Searching Of Notice Period Column
    Test Sorting Of Notice Period Column
    Test Searching Of Notice Period Unit Column
    Test Sorting Of Notice Period Unit Column
    Test Searching Of Notice Required Column
    Test Sorting Of Notice Required Column
    Test Searching Of Order nr. Column
    Test Sorting Of Order nr. Column
    Test Searching Of Org.Unit Column
    Test Sorting Of Org.Unit Column
    Test Searching Of Own Account Column
    Test Sorting Of Own Account Column
    Test Searching Of Postponement Condition Column
    Test Sorting Of Postponement Condition Column
    Test Searching Of Partner VAT ID Column
    Test Sorting Of Partner VAT ID Column
    Test Searching Of Role Column
    Test Sorting Of Role Column
    Test Searching Of Service Contract Column
    Test Sorting Of Service Contract Column
    Test Searching Of Text Status Column
    Test Sorting Of Text Status Column
    Test Searching Of Original Storage Column
    Test Sorting Of Original Storage Column
    Test Searching Of Subsidy Column
    Test Sorting Of Subsidy Column
    Test Searching Of Supp.payment Column
    Test Sorting Of Supp.payment Column
    Test Searching Of Tender Column
    Test Sorting Of Tender Column
    Test Searching Of Termination Method Column
    Test Sorting Of Termination Method Column
    Test Searching Of To Pay Column
    Test Sorting Of To Pay Column
    Test Searching Of To Pay Currency Column
    Test Sorting Of To Pay Currency Column

# Set Data Back To Normal And Delete Test Contracts
#    [Documentation]    A test case for deleting test contracts.
#    Layout Select All
#    Delete Test Contracts
#    Disable Fields
#    Disable Data

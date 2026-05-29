*** Settings ***
Resource            ${EXECDIR}/resources/fields.resource

Suite Setup         Init Setup
Suite Teardown      Run Final Teardown
Test Setup          Check If Current Suite Failed
Test Teardown       Collect Failure Data And Track Status

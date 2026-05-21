*** Settings ***
Resource            ${EXECDIR}/resources/fields.resource
Suite Setup       Save and Set Fields
Suite Teardown    Restore Original Fields State


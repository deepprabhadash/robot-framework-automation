*** Settings ***
Library    SeleniumLibrary
Resource   ../../resources/keywords.robot
Resource   ../../resources/variables.robot

*** Test Cases ***

Successful Refund
    Open Checkout Page
    Enter Payment Details    ${VALID_CARD}    ${EXPIRY_DATE}    ${CVV}
    Verify Payment Success
    Request Refund
    Page Should Contain    Refund Successful
    Close Browser

Refund On Failed Transaction
    Open Checkout Page
    Enter Payment Details    ${INVALID_CARD}    ${EXPIRY_DATE}    ${CVV}
    Verify Payment Failure
    Click Button    xpath=//button[contains(text(),'Request Refund')]
    Page Should Contain    No Transaction Found
    Close Browser

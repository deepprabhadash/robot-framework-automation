*** Settings ***
Library    SeleniumLibrary
Resource   ../../resources/keywords.robot
Resource   ../../resources/variables.robot

*** Test Cases ***

Successful Payment With Valid Card
    Open Checkout Page
    Enter Payment Details    ${VALID_CARD}    ${EXPIRY_DATE}    ${CVV}
    Verify Payment Success
    Close Browser

Payment With Expired Card
    Open Checkout Page
    Enter Payment Details    ${EXPIRED_CARD}    ${EXPIRED_DATE}    ${CVV}
    Verify Payment Failure
    Close Browser

Payment With Invalid Card Number
    Open Checkout Page
    Enter Payment Details    ${INVALID_CARD}    ${EXPIRY_DATE}    ${CVV}
    Verify Payment Failure
    Close Browser

Payment With Wrong CVV
    Open Checkout Page
    Enter Payment Details    ${VALID_CARD}    ${EXPIRY_DATE}    ${INVALID_CVV}
    Verify Payment Failure
    Close Browser

*** Settings ***
Library     SeleniumLibrary

# -------------------- GENERAL KEYWORDS -------------------- #
Open Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//input[@name='username']    10s

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    xpath=//input[@name='username']    ${username}
    Input Text    xpath=//input[@name='password']    ${password}
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains    Dashboard    5s

Close Browser
    Close Browser

# -------------------- PAYMENT KEYWORDS -------------------- #
Open Checkout Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//input[@name='cardNumber']    10s

Enter Payment Details
    [Arguments]    ${card_number}    ${expiry}    ${cvv}
    Input Text    xpath=//input[@name='cardNumber']    ${card_number}
    Input Text    xpath=//input[@name='expiryDate'}    ${expiry}
    Input Text    xpath=//input[@name='cvv'}    ${cvv}
    Input Text    xpath=//input[@name='zipCode'}    ${ZIP}
    Click Button    xpath=//button[contains(text(),'Pay Now')]

Verify Payment Success
    Wait Until Page Contains    Payment Successful    10s

Verify Payment Failure
    Wait Until Page Contains    Payment Failed    10s

Request Refund
    Click Button    xpath=//button[contains(text(),'Request Refund')]
    Wait Until Page Contains    Refund Successful    10s

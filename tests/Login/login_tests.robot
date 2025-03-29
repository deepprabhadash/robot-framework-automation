*** Settings ***
Library    SeleniumLibrary
Resource   ../../resources/keywords.robot
Resource   ../../resources/variables.robot

*** Test Cases ***

Login With Valid Credentials
    Open Login Page
    Login With Credentials    ${USERNAME}    ${PASSWORD}
    Page Should Contain    Dashboard
    Close Browser

Login With Invalid Credentials
    Open Login Page
    Login With Credentials    ${INVALID_USER}    ${INVALID_PASS}
    Page Should Contain    Invalid credentials
    Close Browser

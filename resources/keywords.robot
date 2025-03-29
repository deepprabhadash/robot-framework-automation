*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
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

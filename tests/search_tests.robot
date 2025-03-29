*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Search For Employee
    Open Login Page
    Login With Credentials    ${USERNAME}    ${PASSWORD}
    Click Element    xpath=//span[text()='PIM']
    Input Text    xpath=//input[@placeholder='Type for hints...']    John
    Press Keys    xpath=//input[@placeholder='Type for hints...']    ENTER
    Page Should Contain    John
    Close Browser

*** Settings ***
Library    DotEnv    .env
Library    SAPGUI

*** Variables ***
${SAP_SERVER}      /H/10.10.10.10/S/3200
${USERNAME}      ${ENV_SAP_USERNAME}
${PASSWORD}      ${ENV_SAP_PASSWORD}

*** Test Cases ***
Login to SAP SCM
    Open SAP Connection    ${SAP_SERVER}
    Input Text    wnd[0]/usr/txtRSYST-BNAME    ${USERNAME}
    Input Password    wnd[0]/usr/pwdRSYST-BCODE    ${PASSWORD}
    Click Button    wnd[0]/tbar[0]/btn[0]
    Wait Until Element Exists    wnd[0]/sbar
    Capture Screenshot
    Log To Console    Successfully logged in to SAP SCM

*** Settings ***
Library    YAML

*** Variables ***
${CREDENTIALS}    Load YAML    credentials.yaml
${USERNAME}       ${CREDENTIALS.sap.username}
${PASSWORD}       ${CREDENTIALS.sap.password}


*** Test Cases ***
Login to SAP SCM
    Open SAP Connection    ${SAP_SERVER}
    Input Text    wnd[0]/usr/txtRSYST-BNAME    ${USERNAME}
    Input Password    wnd[0]/usr/pwdRSYST-BCODE    ${PASSWORD}
    Click Button    wnd[0]/tbar[0]/btn[0]
    Wait Until Element Exists    wnd[0]/sbar
    Capture Screenshot
    Log To Console    Successfully logged in to SAP SCM

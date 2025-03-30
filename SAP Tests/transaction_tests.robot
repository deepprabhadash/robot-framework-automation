*** Test Cases ***
Open Production Planning Transaction
    [Setup]    Login to SAP SCM
    Send SAP Keys    /n/SAPAPO/RRP3
    Wait Until Element Exists    wnd[0]/usr/ctxtRRP3-PRODUCT
    Capture Screenshot
    Log To Console    Opened SAPAPO/RRP3 Successfully

*** Test Cases ***
Logout from SAP
    Click Menu    wnd[0]/mbar/menu[0]/menu[12]
    Click Button    wnd[1]/usr/btnSPOP-OPTION1
    Close SAP Connection
    Log To Console    Logged out successfully

*** Variables ***
${PRODUCT_ID}      FG12345

*** Test Cases ***
Check Product Availability
    [Setup]    Open Production Planning Transaction
    Input Text    wnd[0]/usr/ctxtRRP3-PRODUCT    ${PRODUCT_ID}
    Click Button    wnd[0]/tbar[1]/btn[8]
    Wait Until Element Exists    wnd[0]/usr/lbl[10,1]
    ${availability}=    Get Text    wnd[0]/usr/lbl[10,1]
    Log    Product ${PRODUCT_ID} availability: ${availability}
    Capture Screenshot

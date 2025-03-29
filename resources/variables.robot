*** Variables ***

# -------------------- GENERAL VARIABLES -------------------- #

${URL}         https://opensource-demo.orangehrmlive.com/
${BROWSER}     Chrome
${USERNAME}    Admin
${PASSWORD}    admin123
${INVALID_USER}  invalidUser
${INVALID_PASS}  invalidPass

# -------------------- PAYMENT VARIABLES -------------------- #
${PAYMENT_URL}       https://demo-payment-site.com/checkout  # Payment Page URL
${VALID_CARD}        4242424242424242  # Visa test card (Stripe test data)
${EXPIRED_CARD}      4000000000000069
${INVALID_CARD}      1234567812345678
${CVV}               123
${INVALID_CVV}       000
${EXPIRY_DATE}       12/30
${EXPIRED_DATE}      12/22
${ZIP}               10001

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}     Chrome
${URL}         file:///U:/software%20testing/swag_labs.html
${USERNAME}    standard_user
${PASSWORD}    secret_sauce
${SLEEP_TIME}  2s

*** Test Cases ***
Verify User Can Add, Remove Products, And Complete Checkout
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=login-button
    Wait Until Page Contains    Products
    Sleep    ${SLEEP_TIME}  # Wait for the page to load after login

    # Add products
    Click Element    xpath=//button[@onclick='addToCart(1)']
    Sleep    ${SLEEP_TIME}
    Click Element    xpath=//button[@onclick='addToCart(2)']
    Sleep    ${SLEEP_TIME}
    Click Element    xpath=//button[@onclick='addToCart(3)']
    Sleep    ${SLEEP_TIME}
    Click Element    xpath=//button[@onclick='addToCart(4)']
    Sleep    ${SLEEP_TIME}

    # Click the shopping cart icon directly
    Click Element    xpath=//div[@class='cart-icon']  # Targeting the cart icon
    Sleep    ${SLEEP_TIME}  # Wait for the cart page to load

    # Wait for the remove button of the second product to be visible
    Wait Until Element Is Visible    xpath=//button[@onclick='removeFromCart(1)']
    # Remove the second product (index 1)
    Click Element    xpath=//button[@onclick='removeFromCart(1)']
    Sleep    ${SLEEP_TIME}  # Wait after removing the product


     # Fill in the checkout form
    Clear Element Text    id=first-name
    Input Text    id=first-name    Yal
    Clear Element Text    id=last-name
    Input Text    id=last-name     Sad
    Clear Element Text    id=postal-code
    Input Text    id=postal-code   50100
    Sleep    ${SLEEP_TIME}  # Wait after filling the form

    # Complete the purchase by clicking the 'Complete Purchase' button
    Wait Until Element Is Visible    xpath=//button[@onclick='completeCheckout()']
    Click Element    xpath=//button[@onclick='completeCheckout()']
    Sleep    ${SLEEP_TIME}  # Wait for the confirmation

    # Verify the order completion (e.g., check for a success message or final step)
    Wait Until Page Contains    Checkout Complete
    Sleep    ${SLEEP_TIME}  # Wait before closing the browser

    Close Browser






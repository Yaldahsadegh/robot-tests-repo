*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest

    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    http://demowebshop.tricentis.com/register   edge
    maximize browser window
    set selenium speed  2 seconds
    select radio button     Gender      M
    input text      name:FirstName      David
    input text      name:LastName       John
    input text      name:Email      anhc@gmail.com
    input text      name:Password       davidjohn
    input text      name:ConfirmPassword    davidjohn
    ${speed}=   get selenium speed
    log to console  ${speed}
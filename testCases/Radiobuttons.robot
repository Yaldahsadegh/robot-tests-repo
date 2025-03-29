#The exercise is copy pasted from the Youtube video, the website doesn't exist anymore but I understand the logic :)

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  edge
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  2seconds

    # Selecting Radio buttons
    select radio button     sex     Female
    select radio button     exp     5

    # Selecting Check Box
    select checkbox     BlackTea
    select checkbox     RedTea

    unselect checkbox   BlackTea



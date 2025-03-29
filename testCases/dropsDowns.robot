#The exercise is copy pasted from the Youtube video, the website doesn't exist anymore but I understand the logic :)

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  edge
${url}  http://practiceselenium.com/practice-form.html

*** Test Cases ***
Handling Dropdowns and lists
    open browser    ${url}    ${browser}
    maximize browser window

    select from list by label   continents  Asia
    sleep   3
    select from list by index   continents  5

    #Select from list by value  continents  value

    #list box
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   WebElement Commands
    sleep   3
    unselect from list by label     selenium_commands   Switch Commands

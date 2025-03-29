*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/   edge
    click element   xpath://*[@id="HTML9"]/div[1]/button    #opens alert
    sleep   3
    #handle alert    accept
    #handle alert    dismiss
    #handle alert   leave
    #alert should not be present     I am an alert box!

*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MyTestCase
    open browser    http://demowebshop.tricentis.com/register   edge
    maximize browser window

    open browser    http://automationpractice.com/index.php     edge
    maximize browser window

    #close browser
    close all browsers
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/      edge
    maximize browser window
    input text          id:txtUsername      Admin
    iput text           id:txtPassword      admin123

    #capture element screenshot  xpath://*[@id="divLogo"]/img    C:/Users/Carolina/PycharmProjects/Automation/Logo.img
    #capture page screenshot     C:/Users/Carolina/PycharmProjects/Automation/LoginTC.img

    capture element screenshot  xpath://*[@id="divLogo"]/img    Logo.png
    capture page screenshot     LoginTC.png


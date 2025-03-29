*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   edge
    maximize browser window
    #execute javascript  window.scrollTo(0,2500)
    #scroll element into view    xpath://*[@id="content"]/div[2]/table[1]/tbody/tr[86]/td[1]/img

    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep   5

    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
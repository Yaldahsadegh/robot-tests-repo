*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser    http://www.newtours.demoaut.com/    edge
    maximize browser window
    ${AllLinksCount}=  get element count   xpath://a
    log to console  ${AllLinksCount}

    @{LinkItems}    create list

    FOR     ${i}    IN RANGE    1   ${AllLinksCount}+1
        ${linktext}=    get text xpath:(//a)[${i}]
        log to console  ${linktext}
    END
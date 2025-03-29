*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resource.robot


*** Variables ***
${url}      http://www.newtours.demoaut.com/
${browser}  edge

*** Test Cases ***
TC1
    ${PageTitle}=   launchBrowser   ${url}  ${browser}
    log to console  ${PageTitle}
    log     ${PageTitle}
    input text      name:userName   mercury
    input text      name:password   mercury


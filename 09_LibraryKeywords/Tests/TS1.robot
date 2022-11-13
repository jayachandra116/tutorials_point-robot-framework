*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
BrowserDetails
    [Arguments]    ${url}
    Open Browser    ${url}    gc
    Maximize Browser Window

*** Test Cases ***
TC1
    BrowserDetails    url=https://www.tutorialspoint.com
    Input Text    name:key    this is entered from the testcase
*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    https://www.tutorialspoint.com    gc
Test Teardown    Close Browser

*** Test Cases ***
TC1
    Input Text    key    hi
*** Settings ***
Documentation    This is a resource file for browser operations
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.tutorialspoint.com
${BROWSER}    gc

*** Keywords ***
Test Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
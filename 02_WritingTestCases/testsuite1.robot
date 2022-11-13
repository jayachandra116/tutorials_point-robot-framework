*** Settings ***
Library    SeleniumLibrary
Resource    Resources/Browser.robot

*** Variables ***
${number}    100
${URL}    https://www.tutorialspoint.com
${BROWSER}    gc

*** Test Cases ***
testcase1
    [Documentation]    This is the first test case
    Browser.Test Browser
    Close Browser

testcase2
    [Documentation]    This is the second test case
    ${a}    Set Variable    Hi
    Log    ${a}
    ${b}    Set Variable    If ${number}>0    Yes    No
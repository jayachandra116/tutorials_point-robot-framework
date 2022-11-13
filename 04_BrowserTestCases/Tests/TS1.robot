*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TC1
    Open Browser    https://www.tutorialspoint.com/    gc
    Maximize Browser Window
    Capture Page Screenshot    page.png
    Close Browser
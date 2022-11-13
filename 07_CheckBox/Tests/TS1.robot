*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    C:\\Users\\mjaya\\Desktop\\robotScripts\\07_CheckBox\\Resources\\index.html
${BROWSER}    gc

*** Test Cases ***
TC1
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    3s
    Select Checkbox    name:option1    
    Sleep    3s
    Close Browser

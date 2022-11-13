*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    C:\\Users\\mjaya\\Desktop\\robotScripts\\06_RadioButton\\Resources\\index.html
${BROWSER}    gc

*** Test Cases ***
TC1
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    3s
    Select Radio Button    gender    female
    Sleep    3s
    Close Browser

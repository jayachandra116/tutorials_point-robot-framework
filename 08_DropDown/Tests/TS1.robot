*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    C:\\Users\\mjaya\\Desktop\\robotScripts\\08_DropDown\\Resources\\index.html
${BROWSER}    gc

*** Test Cases ***
TC1
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    3s
    Select From List By Index    name:months    5
    Select From List By Label    name:days    17
    Select From List By Value    name:year    17
    Sleep    3s
    Close Browser

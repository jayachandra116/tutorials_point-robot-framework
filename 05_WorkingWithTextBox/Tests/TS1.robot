*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.tutorialspoint.com
${BROWSER}    gc
${SEARCHTEXT}    Reactjs
${SEARCHBOX_ID}    search-strings  
${SEARCHBOX_XPATH}  //*[@id="btnSearch"] 

*** Test Cases ***
TC1
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id=${SEARCHBOX_ID}    ${SEARCHTEXT}
    Click Button    xpath:${SEARCHBOX_XPATH}
    Close Browser
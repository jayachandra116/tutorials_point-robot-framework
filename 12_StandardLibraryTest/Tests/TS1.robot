*** Variables ***
${number}    100
${name}    riya

*** Test Cases ***
TC1
    Log    Hello There!
    Should Be True    ${number}==100
    ${str1}    Catenate    Hello world
    Log    ${str1}
    ${a}    Set Variable    Hi
    Log    ${a}
    ${b}    Set Variable If    ${number}>0    Yes    No
    Log    ${b}

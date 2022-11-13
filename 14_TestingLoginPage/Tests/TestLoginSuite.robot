*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Login Page    ${loginpage}    ${BROWSER}
Suite Teardown    Close Browser
Test Setup    Login Page Display    ${loginpage}
Test Template       Test Login 

*** Variables ***
${loginpage}    C:\\Users\\mjaya\\Desktop\\robotScripts\\14_TestingLoginPage\\Resources\\index.html
${BROWSER}    gc
${email}    admin@gmail.com
${password}    admin
${successpage}    C:\\Users\\mjaya\\Desktop\\robotScripts\\14_TestingLoginPage\\Resources\\success.html
${failurepage}    C:/Users/mjaya/Desktop/robotScripts/14_TestingLoginPage/Resources/loginfailed.html

#file:///C:/Users/mjaya/Desktop/robotScripts/14_TestingLoginPage/Resources/loginfailed.html

*** Test Cases ***
Invalid EmailId
    abcd@gmail.com    ${password}

Invalid Password
    ${email}    xyz

Invalid EmailId and Password
    invalid    invalid

Empty EmailId
    ${EMPTY}    ${password}

Empty Password
    ${email}    ${EMPTY}

Empty Email and Password
    ${EMPTY}    ${EMPTY}

*** Keywords ***
Open Login Page
    [Arguments]    ${url}    ${browsername}
    Open Browser    ${url}    ${browsername}
    Maximize Browser Window
    Title Should Be    Login Page

Login Page Display
    [Arguments]    ${loginpage}
    Go To    ${loginpage}
    Title Should Be    Login Page

Test Login
    [Arguments]    ${email}    ${password}
    Enter Email    ${email}
    Enter Password    ${password}
    Submit Details
    Login Should Fail


Enter Email
    [Arguments]    ${email}
    Input Text    email    ${email}

Enter Password
    [Arguments]    ${pwd}
    Input Text    passwd    ${pwd}

Submit Details
    Click Button    btnsubmit

Login Should Fail
    Location Should Be    file:///${failurepage}
    Title Should Be    Login Failed
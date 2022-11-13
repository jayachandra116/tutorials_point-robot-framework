*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    C:\\Users\\mjaya\\Desktop\\robotScripts\\10_WorkingWithVariables\\Resources\\login.html
@{LOGIN_DETAILS}    admin@gmail.com    admin
&{LOGIN_VARS}    emailId=admin@gmail.com    pwd=admin


*** Keywords ***

*** Test Cases ***
TC1
    Open Browser    ${url}    gc

*** Settings ***
Resource    ../Resources/keywordstyle.robot

*** Variables ***

*** Test Cases ***
TC1
    keywordstyle.Display Message    Hello there!

TC2
    [Template]    Display Message
    My first test case
    Testing template
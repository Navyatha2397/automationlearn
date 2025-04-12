*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Test Cases ***
Logintest
    open browser    https://www.automationexercise.com/    chrome
    Set Selenium Speed    2s
    Click Link    xpath://*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    Input Text    name:email    navs@gmail.com
    Input Text    name:password    navya@123
    Click Button    xpath://*[@id="form"]/div/div/div[1]/div/form/button
    Sleep    5s
    
*** Keywords ***



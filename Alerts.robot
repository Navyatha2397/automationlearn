*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Test Cases ***
alertslearn
    open browser    https://www.automationexercise.com/    chrome
    Set Selenium Speed    1s
    Click Link    xpath:/html/body/section[2]/div[1]/div/div[2]/div[1]/div[2]/div/div[2]/ul/li/a
    Click Button    xpath:/html/body/section/div/div/div[2]/div[2]/div[2]/div/span/button
    Handle Alert    accept    #accepts the alert
    Handle Alert    dismiss    #rejects the alert
    Handle Alert    leave    #keep displaying the alert
    Alert Should Be Present    okay    #checks whether the alert is present or not

    Sleep    2s
*** Keywords ***



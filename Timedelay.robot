*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Test Cases ***
Timedelay
    open browser    https://www.automationexercise.com/    chrome
    Set Selenium Speed    2s    #This add 2 seconds delay between execution of each command(default value is 0)
    Set Selenium Timeout    10s    #This makes next command to wait for 10s for mentioned text to appear this is applicable only for next command(default value is 5s)
    Wait Until Page Contains    AutomationExercise    #This waits for 5 seconds for the mentioned text to appear

    Set Selenium Implicit Wait    10s    #waits for 10s to find particular locator after that it will throw en error, if it finds locator immediately it will go to next line(default value is 0s)
    Click Link    xpath://*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    Input Text    name:email    navs@gmail.com
    Input Text    name:password    navya@123
    Click Button    xpath://*[@id="form"]/div/div/div[1]/div/form/button
    Sleep    5s
*** Keywords ***



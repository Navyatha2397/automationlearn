*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}     https://www.automationexercise.com/

*** Test Cases ***
Switchingtabs
    #This when you click on an item and it opens in new window so you want to switch window
    open browser    ${url}    ${browser}
    Set Selenium Speed    2s
    Click Link    xpath://*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    select Window    title=Automation Exercise    #slects whichever window you need
    sw
    

*** Keywords ***

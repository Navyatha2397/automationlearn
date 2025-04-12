*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://www.automationexercise.com/
${browser}    chrome

*** Test Cases ***
Logintest
    ${gettitlekey}=    Launch Browser   ${url}     ${browser}
    #Log To Console    ${gettitlekey}
    #log    ${gettitlekey}
    Set Selenium Speed    2s
    Set Selenium Implicit Wait    5s
    Click Link    xpath://*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    Login    navs@gmail.com    navya@123
    Log To Console    ${gettitlekey}
    log    ${gettitlekey}
    Sleep    5s
    Click Button    xpath://*[@id="form"]/div/div/div[1]/div/form/button
    Sleep    5s
    
*** Keywords ***
Launch Browser
    [Arguments]    ${keyurl}    ${keybrowser}
    open browser    ${keyurl}    ${keybrowser}
    #${pagetitle}=    Get Title
    #[Return]    ${pagetitle}
    
Login
    [Arguments]    ${username}    ${password}
    Input Text    name:email    ${username}
    Input Text    name:password    ${password}
    ${pagetitle}=    Get Title
    RETURN    ${pagetitle}
    


*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}   chrome
${url}     https://www.automationexercise.com/


*** Test Cases ***
Logintest
    open browser    ${url}    ${browser}
    Set Selenium Speed    2s
    Click Link    xpath://*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    ${Email_text}    Set Variable    name:email
    Element Should Be Visible    ${Email_text}
    Element Should Be Enabled    ${Email_text}
    Input Text    ${Email_text}    navthaam@gmail.com
    Clear Element Text    ${Email_text}
    Close Browser


*** Keywords ***



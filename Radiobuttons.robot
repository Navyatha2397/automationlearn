*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}     https://practiceselenium/practice-form.html


*** Test Cases ***
Testing radio buttons and check boxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    2s    #to set time of execution between 2 lines

    #selecting radio buttons
    Select Radio Button    sex    female
    Select Radio Button    exp    5

    #selecting check boxes
    Select Checkbox    Blacktea
    Select Checkbox    Redtea

    Unselect Checkbox    Blacktea


*** Keywords ***

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.automationexercise.com/
${Browser}    chrome


*** Test Cases ***
Dropdownandlists
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    
    #To select country from dropdown(only one value will be selected)
    Select From List By Label    continents    NA    #this selects using value
    Select From List By Index    continents    6    #this selects using index(index starts from 0)
    Select From List By value    continents    North America    #label and value differ when you want to show particular label to user but need value to process the data

    #To select value/values from the list(one or multiple values can be selected)

    Select From List By Label    selenium commands    switch commands
    Select From List By Label    selenium commands    web browser commands
    Unselect From List By Label    selenium commands    switch commands

    
*** Keywords ***




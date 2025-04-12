*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Forloop1
    FOR    ${i}    IN    1  2  3
        Log To Console    ${i}
    END
    
Forloop2
    FOR    ${i}    IN RANGE    1    10
        Log To Console    ${i}
    END
    

Forloop3
    @{numbers}    Create List    1 2 3 4
    FOR    ${i}    IN    @{numbers}
        Log To Console    ${i}
    END

Forloop4
    @{names}    Create List    navya    wahida    tejeswini    shravanthi
    FOR    ${i}    IN    @{names}
        Log To Console    ${i}
        Exit For Loop If    ${i}=tejeswini
    END
    

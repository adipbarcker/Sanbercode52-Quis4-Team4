*** Settings ***
Resource        ../base/base.robot
Variables       searchLocator.yaml

*** Keywords ***
Input Invalid Flight Number
    Wait Until Element Is Visible    ${flightNumberSearch}
    Clear Text    ${flightNumberSearch}
    Input Text    ${flightNumberSearch}    CADX2214

Input Valid Flight Number
    Wait Until Element Is Visible    ${flightNumberSearch}
    Clear Text    ${flightNumberSearch}
    Input Text    ${flightNumberSearch}    DA935

Click Search Button
    Click Element    ${searchFlightNumberButton}

Valid Flight Number
    Wait Until Page Contains    DA 935
    
Invalid Notification Flight Number 
    Wait Until Page Contains    Please enter valid Flight Number


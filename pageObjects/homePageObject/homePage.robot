*** Settings ***
Resource        ../base/base.robot
Variables        home-locators.yaml

*** Keywords ***
Click Sign In Button on Home Page
    Click Element    ${sign-in-button}

Verify Homepage Appears
    Wait Until Element Is Visible    ${appLogo}
    Wait Until Element Is Visible    ${sign-in-button}
    Wait Until Element Is Visible    ${searchButton}
    Wait Until Element Is Visible    ${checkinButton}

Click Button Sign In Home Page
    Click Element    ${sign-in-button}

Click Button Check In
    Click Element    ${checkinButton}

Click Button Search
    Wait Until Page Contains     Search
    Click Text                   Search

Click Button Book
    Wait Until Page Contains    Book
    Click Text    Book

Verify Signed In
    Wait Until Element Is Visible    ${ngendigitText}
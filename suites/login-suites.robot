*** Settings ***
Resource        ../pageObjects/homePageObject/homePage.robot
Resource        ../pageObjects/loginPageObject/loginPage.robot
Test Setup       Open Flight Application
Test Teardown    Close Flight Application

*** Variables ***
${VALID_USERNAME}      support@ngendigital.com
${VALID_PASSWORD}      abc123
${INVALID_USERNAME}    invalid
${INVALID_PASSWORD}    invalid

*** Test Cases ***
Login Valid Credential
    Click Sign In Button on Home Page
    Input Username on login Page    ${VALID_USERNAME}
    Input Password on Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Direct to Main Home Tab
   
Login Invalid Credential
    Click Sign In Button on Home Page
    Input Username on login Page    ${INVALID_USERNAME}
    Input Password on Login Page    ${INVALID_PASSWORD}
    Click Sign In Button on Login Page
    Invalid Notification

Login Invalid Empty Username
    Click Sign In Button on Home Page
    Input Password on Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Invalid Notification

Login Invalid Empty Password
    Click Sign In Button on Home Page
    Input Username on login Page    ${VALID_USERNAME}
    Click Sign In Button on Login Page
    Invalid Notification
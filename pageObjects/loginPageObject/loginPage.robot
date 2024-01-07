*** Settings ***
Resource         ../base/base.robot
Variables        login-locators.yaml

*** Keywords ***
Input Username on login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${username-input}
    Input Text    ${username-input}    ${username}

Input Password on Login Page
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${password-input}
    Input Text    ${password-input}    ${password}

Click Sign In Button on Login Page
    Click Element    ${log-in-button}

Login User
    Wait Until Element Is Visible    ${username-input}
    Input Text    ${username-input}    support@ngendigital.com
    Input Password    ${password-input}    abc123

Click Button Sign In Login Page
    Click Element    ${log-in-button}

Clear Username Password
    Wait Until Element Is Visible    ${username-input}
    Wait Until Element Is Visible    ${password-input}
    Clear Text    ${username-input}
    Clear Text    ${password-input}

Invalid Notification
    Wait Until Page Contains    Invalid username/password

Login Successfully 
    Wait Until Page Does Not Contain Element    ${username-input}
    Wait Until Page Does Not Contain Element    ${password-input}

Direct to Main Home Tab
    Wait Until Page Contains Element    ${main-home-tab}
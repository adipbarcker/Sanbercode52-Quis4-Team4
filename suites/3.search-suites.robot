*** Settings ***
Resource    ../pageObjects//base/base.robot
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Resource    ../pageObjects/Search/Search.robot
Test Setup       Open Flight Application
Test Teardown    Close Flight Application

*** Test Cases ***
Successfully Open Flight Application
    Open Flight Application
    Verify Homepage Appears
    Click Button Sign In Home Page
    Login User
    Click Button Sign In Login Page
    Login Successfully
    Click Button Search
    
Search Scenario - Invalid Flight Number
    Input Invalid Flight Number
    Click Search Button
    Invalid Notification Flight Number

Search Scenario - Valid Flight Number
    Input Valid Flight Number
    Click Search Button
    Valid Flight Number
*** Settings ***
Resource    ../pageObjects/base/base.robot
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Resource    ../pageObjects/BookflightObject/BookFlight.robot

Test Setup       Run Keywords
...             Open Flight Application 
...             AND    Click Button Sign In Home Page
...             AND    Login User
...             AND    Click Button Sign In Login Page
...             AND    Login Successfully
Test Teardown    Close Flight Application

*** Test Cases ***
#Round Trip New York

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
# One Way From Chicago

Positive Case 1: Chicago -> Paris - Business Class - Flight+Hotel - No Click CheckBox
    Click Menu Book
    Select From City Chicago
    Set To City Paris
    Set Business Class
    Set Start Date
    Set End Date
    Set Flight And Hotel RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully
    
Positive Case 2: Chicago -> Ottawa - Economy Class - Only Flight - Click CheckBox
    Click Menu Book
    Select From City Chicago
    Set To City Ottawa
    Set Economy Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Set OneDay CheckBox
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Positive Case 3: Chicago -> Paris - Business Class - Only Flight - Click CheckBox
    Click Menu Book
    Select From City Chicago
    Set To City Paris
    Set Business Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Set OneDay CheckBox
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Positive Case 4: Chicago -> Ottawa - First Class - Flight+Hotel - No Click CheckBox 
    Click Menu Book
    Select From City Chicago
    Set To City Ottawa
    Set First Class
    Set Start Date
    Set End Date
    Set Flight And Hotel RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Positive Case 5: Chicago -> Paris - First Class - Flight+Hotel - Click CheckBox 
    Click Menu Book
    Select From City Chicago
    Set To City Paris
    Set First Class
    Set Start Date
    Set End Date
    Set Flight And Hotel RadioButton
    Set OneDay CheckBox
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Negative Case: Booking tanpa memilih city, flight class, date, dan harga 
    Click Menu Book
    Click Book Confirm
    Click Price Confirm




    
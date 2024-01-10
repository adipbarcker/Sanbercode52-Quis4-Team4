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
# ROUND TRIP CHICAGO (Dipika Syaiban Ainun)

Case 1 (Negative): Booking tanpa memilih city, flight class, date, dan harga
    Click Menu Book
    Select Round Trip Button
    Click Book Confirm
    Click Price Confirm

Case 2 (Positive): Chicago -> Paris - Business Class - Only Flight 
    Click Menu Book
    Select Round Trip Button
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

Case 3 (Positive): Chicago -> London - First Class - Flight - Click CheckBox
    Click Menu Book
    Select Round Trip Button
    Select From City Chicago
    Set To City London
    Set First Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Set OneDay CheckBox
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Case 4 (Positive): Chicago -> London - Business Class - Flight + Hotel
    Click Menu Book
    Select Round Trip Button
    Select From City Chicago
    Set To City London
    Set Business Class
    Set Start Date
    Set End Date
    Set Flight And Hotel RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Case 5 (Positive): Chicago -> Paris - Economy Class - Flight + Hotel
    Click Menu Book
    Select Round Trip Button
    Select From City Chicago
    Set To City Paris
    Set Economy Class
    Set Start Date
    Set End Date
    Set Flight And Hotel RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully
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
# ONE WAY FROM NEWYORK (Mega Trisna Wulandari)

Case 1 (Negative): Booking tanpa memilih city, flight class, date, flight type dan harga
    Click Menu Book
    Click Book Confirm
    Click Price Confirm
    Book Successfully

Case 2 (Negative): Booking Newyork -> London, tanpa memilih date dan flight type, with CheckBox
    Click Menu Book
    Select From City New York
    Set To City London
    Set Economy Class
    Set OneDay CheckBox
    Click Book Confirm
    Click Price Confirm
    Book Successfully

Case 3 (Positive): New York -> London - Economy Class - Only Flight - With CheckBox
    Click Menu Book
    Select From City New York
    Set To City London
    Set Economy Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Set OneDay CheckBox
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully
    
Case 4 (Positive): New York -> Paris - First Class - Only Flight - With CheckBox
    Click Menu Book
    Select From City New York
    Set To City Paris
    Set First Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Set OneDay CheckBox
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Case 5 (Positive): New York -> Ottawa - Business Class - Only Flight - No CheckBox
    Click Menu Book
    Select From City New York
    Set To City Ottawa
    Set Business Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Case 6 (Positive): New York -> London - First Class - Flight+Hotel - With CheckBox 
    Click Menu Book
    Select From City New York
    Set To City London
    Set First Class
    Set Start Date
    Set End Date
    Set Flight And Hotel RadioButton
    Set OneDay CheckBox
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Case 7 (Positive): New York -> London - Business Class - Flight+Hotel - No CheckBox 
    Click Menu Book
    Select From City New York
    Set To City London
    Set Business Class
    Set Start Date
    Set End Date
    Set Flight And Hotel RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully
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

Case 1: Round Trip - New York --> London - Economy - Flight - No Click CheckBox
    Click Menu Book
    Select Round Trip Button
    Select From City New York
    Set To City London
    Set Economy Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Case 2: Round Trip - New York --> London - Economy - Flight+Hotel - No Click ChechkBox
    Click Menu Book
    Select Round Trip Button
    Select From City New York
    Set To City London
    Set Economy Class
    Set Start Date
    Set End Date
    Set Flight And Hotel RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Case 3: Round Trip - New York --> London - Economy - Flight - Click CheckBox
    Click Menu Book
    Select Round Trip Button
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

Case 4: Round Trip - New York --> Paris - Economy - Flight - No Click CheckBox
    Click Menu Book
    Select Round Trip Button
    Select From City New York
    Set To City Paris
    Set Economy Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Case 5: Round Trip - New York --> Ottawa - Economy - Flight - No Click CheckBox
    Click Menu Book
    Select Round Trip Button
    Select From City New York
    Set To City Ottawa
    Set Economy Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Case 6: Round Trip - New York --> London - First - Flight - No Click CheckBox
    Click Menu Book
    Select Round Trip Button
    Select From City New York
    Set To City London
    Set First Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully

Case 7: Round Trip - New York --> London - Business - Flight - No Click CheckBox
    Click Menu Book
    Select Round Trip Button
    Select From City New York
    Set To City London
    Set Business Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully
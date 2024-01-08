*** Settings ***
Resource        ../base/base.robot
Variables       bookFlightLocator.yaml

*** Keywords ***
Select From City New York
    Wait Until Element Is Visible    ${fromCitySpinner}
    Click Element    ${fromCitySpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="New York"]
    Click Text    New York
    Element Should Contain Text    //android.widget.TextView[@text="New York"]    New York  

Select From City Chicago
    Wait Until Element Is Visible    ${fromCitySpinner}
    Click Element    ${fromCitySpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="Chicago"]
    Click Text    Chicago
    Element Should Contain Text    //android.widget.TextView[@text="Chicago"]    Chicago  

Set To City London
    Wait Until Element Is Visible    ${toCitySpinner}
    Click Element    ${toCitySpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="London"]
    Click Text    London
    Element Should Contain Text    //android.widget.TextView[@text="London"]    London  

Set To City Paris
    Wait Until Element Is Visible    ${toCitySpinner}
    Click Element    ${toCitySpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="Paris"]
    Click Text    Paris
    Element Should Contain Text    //android.widget.TextView[@text="Paris"]    Paris 

Set To City Ottawa
    Wait Until Element Is Visible    ${toCitySpinner}
    Click Element    ${toCitySpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="Ottawa"]
    Click Text    Ottawa
    Element Should Contain Text    //android.widget.TextView[@text="Ottawa"]    Ottawa 

Set Economy Class
    Wait Until Element Is Visible    ${classSpinner}
    Click Element    ${classSpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="Economy"]
    Click Text    Economy
    Element Should Contain Text    //android.widget.TextView[@text="Economy"]    Economy

Set First Class
    Wait Until Element Is Visible    ${classSpinner}
    Click Element    ${classSpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="First"]
    Click Text    First
    Element Should Contain Text    //android.widget.TextView[@text="First"]    First

Set Business Class
    Wait Until Element Is Visible    ${classSpinner}
    Click Element    ${classSpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="Business"]
    Click Text    Business
    Element Should Contain Text    //android.widget.TextView[@text="Business"]    Business

Set Start Date
    Click Element    ${startDateTextView}
    Wait Until Element Is Visible    ${datePicker}
    Click Element    ${StartDatePicker}
    Click Element    ${okButtonDatePicker}

Set End Date
    Click Element    ${endDateTextView}
    Wait Until Element Is Visible    ${datePicker}
    Click Element    ${EndDatePicker}
    Click Element    ${okButtonDatePicker}

Set Flight RadioButton
    Click Element    ${flightRadioButton}

Set Flight And Hotel RadioButton
    Click Element    ${flightHotelRadioButton}

Set OneDay CheckBox
    Click Element    ${oneDayCheckBox}

Click Book Confirm
    Wait Until Element Is Visible    ${bookFlightButton}
    Click Element    ${bookFlightButton}

Select Price
    Wait Until Element Is Visible    ${priceButton}
    Click Element    ${priceButton}

Click Price Confirm
    Wait Until Element Is Visible    ${priceConfirmButton}
    Click Element    ${priceConfirmButton}

Book Successfully
    Wait Until Element Is Visible    ${yourFlightIsBooked}



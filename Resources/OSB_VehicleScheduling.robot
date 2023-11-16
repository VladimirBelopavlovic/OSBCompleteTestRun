*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Go Through Step 1 Vehicle Info
    Press Keys  //*[@id="show-form"]  [Return]
    Sleep  2 seconds
    Select From List By Label  brand  Land Rover
    Select From List By Label  model  DISCOVERY
    Input Text  //*[@id="year"]  2011
    Select From List By Index  fuel  1
    Input Text  //*[@id="mileage"]  20000
    Sleep  3 seconds
    Press Keys  //*[@id="submit_vehicle"]/div[2]/button  [Return]
    Sleep  2 seconds

Go Through Step 2 Retailer
    Press Keys  //*[@id="div-buttons"]/button[2]  [Return]
    Sleep  2 seconds

Go Through Step 3 Service
    Input Text  //*[@id="own-service"]  test service
    Sleep  2 seconds
    Press Keys  //*[@id="serviceNextStep"]  [Return]
    Sleep  2 seconds

Go Through Step 4 Schedule Date
    Press Keys  //*[@id="datepicker"]/div/div/a[2]/span  [Return]
    Sleep  2 seconds
    Press Keys  //*[@id="datepicker"]/div/table/tbody/tr[3]/td[2]/a  [Return]
    Sleep  2 seconds
    Press Keys  //*[@id="timeslot-container"]/div[4]/button  [Return]
    Sleep  2 seconds
    Press Keys  //*[@id="setBookingType"]  [Return]

Go Through Step 5 Personal Details
    Input Text  //*[@id="firstname"]  Vladimir
    Input Text  //*[@id="submit_customer_details"]/div[1]/div[2]/div[1]/div[2]/input  Belopavlovic
    Input Text  //*[@id="input-email"]  vbelopavlovic@gmail.com
    Input Text  //*[@id="input-sms"]  0603322082
    Press Keys  //*[@id="submit_customer_details"]/div[2]/button[2]  [Return]
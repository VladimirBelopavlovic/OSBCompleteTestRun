*** Settings ***
Documentation  Vehicle Info Page Testing
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${website}  https://jlr-vtab.com/en_GB/osb/booking/vehicle?client_code=KVBZDSBS


*** Test Cases ***
Testing entering invalid VIN Number
    [Documentation]  Testing entering invalid VIN Number in VIN Number field
    [Tags]  Nonfunctional

    Open Browser  ${website}  ${browser}
    Input Text  //*[@id="vin"]  84127412783934947
    Sleep  3 seconds
    Page Should Contain  We could not indentify this vehicle
    Close Browser


Testing entering invalid Registration Number
    [Documentation]  Testing entering invalid Registration number in Registration number field
    [Tags]  Nonfunctional

    Open Browser  ${website}  ${browser}
    Input Text  //*[@id="registration"]  23892137
    Sleep  3 seconds
    Page Should Contain  We could not indentify this vehicle
    Close Browser


Testing selecting I don't have this information button
    [Documentation]  Testing functionality of the I don't have this information button
    [Tags]  Functional

    Open Browser  ${website}  ${browser}
    Press Keys  //*[@id="show-form"]  [Return]
    Sleep  2 seconds
    Page Should Contain  Model
    Close Browser


Testing chosing Brand
    [Documentation]  Testing functionality of the Brand menu
    [Tags]  Functional

    Open Browser  ${website}  ${browser}
    Press Keys  //*[@id="show-form"]  [Return]
    Sleep  2 seconds
    Select From List By Label  brand  Land Rover
    Sleep  2 seconds
    Close Browser


Testing moving to the next step without entering required info
    [Documentation]  This test verifies that you can't procede to the next step without providing required info
    [Tags]  Nonfunctional

    Open Browser  ${website}  ${browser}
    Maximize Browser Window
    Input Text  //*[@id="registration"]  23892137
    Sleep  3 seconds
    Press Keys  //*[@id="submit_vehicle"]/div[2]/button  [Return]
    Sleep  2 seconds
    Page Should Contain  We could not indentify this vehicle
    Close Browser


Testing complete Vehicle Info step

    [Documentation]  This test runs whole proces required to procede from step 1 to step 2
    [Tags]  Functional

    Open Browser  ${website}  ${browser}
    Maximize Browser Window
    Press Keys  //*[@id="show-form"]  [Return]
    Sleep  2 seconds
    Select From List By Label  brand  Land Rover
    Select From List By Label  model  DISCOVERY
    Input Text  //*[@id="year"]  2011
    Select From List By Index  fuel  1
    Input Text  //*[@id="mileage"]  20000
    Sleep  3 seconds
    Press Keys  //*[@id="submit_vehicle"]/div[2]/button  [Return]
    Close Browser

*** Keywords ***

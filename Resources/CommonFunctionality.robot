*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${website}  https://jlr-vtab.com/en_GB/osb/booking/vehicle?client_code=KVBZDSBS

*** Keywords ***

Start TestCase
    Open Browser  ${website}  ${browser}
    Maximize Browser Window

Finish TestCase
    Close Browser

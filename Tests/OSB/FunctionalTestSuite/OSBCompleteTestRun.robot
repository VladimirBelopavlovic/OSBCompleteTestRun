*** Settings ***
Documentation  Full Vehicle Repair Scheduling on OSB Test
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/OSB_VehicleScheduling.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***


*** Test Cases ***
Complete OSB Vehicle Repair Scheaduling Test

    [Documentation]  This test runs whole proces from step 1 to step 6
    [Tags]  Functional

    OSB_VehicleScheduling.Go Through Step 1 Vehicle Info
    OSB_VehicleScheduling.Go Through Step 2 Retailer
    OSB_VehicleScheduling.Go Through Step 3 Service
    OSB_VehicleScheduling.Go Through Step 4 Schedule Date
    OSB_VehicleScheduling.Go Through Step 5 Personal Details

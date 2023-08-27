*** Settings ***
Documentation    This is Demo1 test suit
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot
Test Setup  Start Browser and Maximize
Test Teardown  close Browsers

*** Test Cases ***
Test Case one
    create folders using userkeywords  Hello  Testing

*** Keywords ***
Provided precondition
    Setup system under test
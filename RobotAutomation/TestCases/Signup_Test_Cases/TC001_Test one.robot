*** Settings ***
Documentation    This is Demo1 test suit
Library  SeleniumLibrary
Test Timeout  2 minutes
Resource  ../../Resources/Resources1.robot
Test Setup  Start Browser and Maximize
Test Teardown  close Browsers


*** Test Cases ***
Test Case one
    [Documentation]    This is my 1st test case
    [Tags]  Smoke
    input text  name:fld_username  Jitu Kumar Singh
    input text  name:fld_email  testjitu@gmail.com

Test Case Two
    [Documentation]    This is my 2nd test case
    [Tags]  Smoke  Sanity
    input text  name:fld_username  Jitu Kumar Singh
    input text  name:fld_email  testjitu@gmail.com


*** Keywords ***
Provided precondition
    Setup system under test
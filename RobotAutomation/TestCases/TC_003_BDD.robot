*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***

*** Test Cases ***
Test Case in BDD format
    Given Start Browser and Maximize
    When Create Folders using userkeywords  BDD  Testing
    Then close Browsers


*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library  ../../ExternalKeywords/Locators.py


*** Variables ***

*** Test Cases ***
Test title
    [Tags]    API
    ${username}=  Read Element Locator  Registration.username_textbox
    ${password}=  Read Element Locator  Registration.password_textbox
    log  ${username}
    log  ${password}

*** Keywords ***
Read Element Locator
    [Arguments]  ${JsonPath}
    ${result}=  read_locator_from_json  ${JsonPath}
    [return]  ${result}
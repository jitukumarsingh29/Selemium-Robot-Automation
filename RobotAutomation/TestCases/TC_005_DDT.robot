*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../Resources/Resources2.robot

*** Variables ***
${URL}  https://thetestingworld.com/testings/
${Browser}  Chrome
*** Test Cases ***
Test title
    [Tags]    DDT
    start and maximize browser
    fill signup form and click

*** Keywords ***
start and maximize browser
    open browser  ${URL}  ${Browser}
    maximize browser window
fill signup form and click
    ${row}=  Read Number of row  Sheet1
    FOR  ${i}  IN RANGE  1  ${row}+1
        ${username}=  Read Excel Data  Sheet1  ${i}  1
        ${email}=  Read Excel Data  Sheet1  ${i}  2
         input text  name:fld_username  ${username}
         input text  name:fld_email  ${email}
         select radio button  add_type  office
         select checkbox  //*[@id="tab-content1"]/form/div/input[1]
         click element  //input[@value='Sign up']
         sleep  5 seconds
    END
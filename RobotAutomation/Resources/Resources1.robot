*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py

*** Variables ***
${URL}  https://thetestingworld.com/testings/
${Browser}  Chrome

*** Keywords ***
Start Browser and Maximize
    open browser  ${URL}  ${Browser}
    maximize browser window
    Red

close Browsers
    close all browsers

Create Folders using userkeywords
    [Arguments]  ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create_sub_folder  ${subfoldername}
    log  "task Done successfully"

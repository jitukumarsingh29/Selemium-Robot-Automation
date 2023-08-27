*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/ReadExcelforTest.py

*** Variables ***


*** Keywords ***
Start Browser and Maximize
    [Arguments]  ${UserURL}  ${InputBrowser}
    open browser  ${UserURL}  ${InputBrowser}
    maximize browser window
    ${Title}=  get title
    [Return]  ${Title}

Read Number of row
    [Arguments]  ${sheetname}
    ${maxr}  fetch_no_of_rows  ${sheetname}
    [Return]  ${maxr}
Read Excel data
    [Arguments]  ${sheetname}  ${row}  ${cell}
    ${cell_data}=  fetch_cell_data  ${sheetname}  ${row}  ${cell}
    [Return]  ${cell_data}




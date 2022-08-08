*** Settings ***
Documentation       Suite description
Resource            ../bases/helpersBase.robot


*** Variables ***


*** Keywords ***
Click Button 0

    Click Element                       xpath=//XCUIElementTypeStaticText[@name="1"]
    Wait Until Element Is Visible       xpath=//XCUIElementTypeStaticText[@name="numberField"]


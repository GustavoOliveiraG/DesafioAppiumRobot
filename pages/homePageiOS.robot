*** Settings ***
Documentation       Suite description
Resource            ../bases/helpersBase.robot


*** Variables ***
${display}=            xpath=//XCUIElementTypeStaticText[@name="numberField"]

*** Keywords ***
Click Button 0
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="0"]

Click Button 1
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="1"]

Click Button 2
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="2"]

Click Button 3
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="3"]

Click Button 4
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="4"]

Click Button 5
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="5"]

Click Button 6
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="6"]

Click Button 7
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="7"]

Click Button 8
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="8"]

Click Button 9
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="9"]

Click Button +
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="+"]

Click Button -
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="-"]

Click Button =
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="="]

Click General Button
    [Arguments]          ${number}
    Click Element                       xpath=//XCUIElementTypeStaticText[@name="${number}"]

Display Value
    [Arguments]          ${number}
    Element Attribute Should Match      ${display}       value     ${number}

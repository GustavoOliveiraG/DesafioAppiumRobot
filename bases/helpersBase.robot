*** Settings ***
Documentation       Suite description
Library             AppiumLibrary


*** Keywords ***
Select an Option in the Menu
    [Arguments]          ${MENU}        ${TEXT}

    Wait Until Page Contains            AWS Device Farm Sample App for Android
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="ReferenceApp"]
    Wait Until Element Is Visible       id=com.amazonaws.devicefarm.android.referenceapp:id/drawerHeader
    Click Element                       xpath=${MENU}
    Wait Until Page Contains            ${TEXT}

Vertical Scroll
    Swipe By Percent                    85.00   49.00   15.00   49.00
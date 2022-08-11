*** Settings ***
Documentation       Suite description
Library             AppiumLibrary
Library             ../utility/generalUtility.py


*** Keywords ***
Horizontal Scroll
    ${id}=             Set Variable            com.amazonaws.devicefarm.android.referenceapp:id/input_refresh_scrollview
    Pull To Refresh     ${id}       3      0
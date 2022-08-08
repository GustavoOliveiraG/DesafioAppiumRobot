*** Settings ***
Documentation       Suite description
Library             AppiumLibrary
Library             ../utility/environmentUtility.py


*** Keywords ***
Open to App
    ${appium_automationName}=       environmentConfig        0
    ${platformName}=                environmentConfig        1
    ${appium_deviceName}=           environmentConfig        2
    ${appium_app}=                  environmentConfig        3
    ${appium_udid}=                 environmentConfig        4

    Set Appium Timeout  5
    Open Application    http://localhost:4723/wd/hub
    ...     automationName=${appium_automationName}
    ...     platformName=${platformName}
    ...     deviceName=${appium_deviceName}
    ...     app=${appium_app}
    ...     udid=${appium_udid}
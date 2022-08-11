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


Open to App Browserstack
    ${usuario}=                 environmentConfigBrowserstack        0
    ${password}=                environmentConfigBrowserstack        1
    ${device}=                  environmentConfigBrowserstack        2
    ${os_version}=              environmentConfigBrowserstack        3
    ${app}=                     environmentConfigBrowserstack        4
    ${project}=                 environmentConfigBrowserstack        5
    ${build}=                   environmentConfigBrowserstack        6
    ${name}=                    environmentConfigBrowserstack        7

    Set Appium Timeout  5
    Open Application    http://${usuario}:${password}@hub-cloud.browserstack.com/wd/hub
    ...     device= ${device}
    ...     os_version= ${os_version}
    ...     app= ${app}
    ...     project= ${project}
    ...     build= ${build}
    ...     name= ${name}
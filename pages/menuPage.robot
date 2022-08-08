*** Settings ***
Documentation       Suite description
Resource            ../bases/helpersBase.robot


*** Variables ***


*** Keywords ***
Click on Menu Native Components
    ${XPATH}=       Set Variable       (//android.widget.TextView[@content-desc="Row Category Name"])[3]
    ${NAME}=        Set Variable        Native Components

    Select an Option in the Menu        ${XPATH}        ${NAME}


Click on Menu Input Controls
    ${XPATH}=       Set Variable       (//android.widget.TextView[@content-desc="Row Category Name"])[4]
    ${NAME}=        Set Variable        Input Controls

    Select an Option in the Menu        ${XPATH}        ${NAME}
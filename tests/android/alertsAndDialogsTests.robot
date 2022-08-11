*** Settings ***
Documentation       Suite description
Resource            ../../bases/testsBase.robot
Resource            ../../pages/menuPage.robot

Test Setup          Open Session
Test Teardown       Close Session


*** Variables ***
${toast_button}         id=com.amazonaws.devicefarm.android.referenceapp:id/notifications_toast_button
${alert_button}         id=com.amazonaws.devicefarm.android.referenceapp:id/notifications_alert_button


*** Test Cases ***
Deve acessar a tela de Alerts and Dialogs
    ${element}=     Set Variable         ${toast_button}

    Click on Menu Alerts and Dialogs
    Element Attribute Should Match      ${element}       text     TOAST


Deve clicar no botao TOAST
    ${element}=     Set Variable         ${toast_button}
    ${toast}=       Set Variable         xpath=/hierarchy/android.widget.Toast

    Click on Menu Alerts and Dialogs
    Click Element                       ${element}
    #Wait Until Element Is Visible       ${toast}
    #Element Attribute Should Match      ${toast}       text     Toast


Deve clicar no botao ALERT
    ${element}=     Set Variable         ${alert_button}
    ${alert}=       Set Variable         id=android:id/message

    Click on Menu Alerts and Dialogs
    Click Element                       ${element}
    Wait Until Element Is Visible       ${alert}
    Element Attribute Should Match      ${alert}       text     This is the alert message
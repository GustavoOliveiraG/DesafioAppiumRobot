*** Settings ***
Documentation       Suite description
Resource            ../../bases/testsBase.robot


*** Test Cases ***
Deve estar na pagina home do app
    Open Session
    Wait Until Page Contains            AWS Device Farm Sample App for Android
    Wait Until Page Contains            version 1
    Close Session


Deve acessar o menu do app
    Open Session
    Wait Until Page Contains            AWS Device Farm Sample App for Android
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="ReferenceApp"]
    Wait Until Element Is Visible       id=com.amazonaws.devicefarm.android.referenceapp:id/drawerHeader
    Close Session


Deve clicar em uma opcao do menu
    Open Session
    Wait Until Page Contains            AWS Device Farm Sample App for Android
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="ReferenceApp"]
    Wait Until Element Is Visible       id=com.amazonaws.devicefarm.android.referenceapp:id/drawerHeader
    Click Element                       xpath=(//android.widget.TextView[@content-desc="Row Category Name"])[7]
    Wait Until Page Contains            Alerts and Dialogs
#    Sleep                               5
    Wait Until Page Does Not Contain    id=com.amazonaws.devicefarm.android.referenceapp:id/drawerHeader
    Close Session


Deve clicar em uma opcao do menu codigo simplificado
    ${MENU}=        Set Variable        (//android.widget.TextView[@content-desc="Row Category Name"])[7]
    ${TEXT}=        Set Variable        Alerts and Dialogs

    Open Session
    Select an Option in the Menu        ${MENU}     ${TEXT}
    Wait Until Page Contains            Alerts and Dialogs
    Wait Until Page Does Not Contain    id=com.amazonaws.devicefarm.android.referenceapp:id/drawerHeader
    Close Session
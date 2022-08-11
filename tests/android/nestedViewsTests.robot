*** Settings ***
Documentation       Suite description
Resource            ../../bases/testsBase.robot
Resource            ../../pages/menuPage.robot

Test Setup          Open Session
Test Teardown       Close Session


*** Variables ***
${button_up}            id=com.amazonaws.devicefarm.android.referenceapp:id/nested_up_button
${return}               xpath=//android.widget.ImageButton[@content-desc="Navigate up"]
${button_back}          id=com.amazonaws.devicefarm.android.referenceapp:id/nested_back_button


*** Test Cases ***
Deve acessar a tela de Nested Views
    ${element}=     Set Variable         id=com.amazonaws.devicefarm.android.referenceapp:id/nested_textview

    Click on Menu Nested Views
    Element Attribute Should Match      ${element}       text     Navigation


Deve clicar no Up Navegator
    Click on Menu Nested Views
    Click Element                       ${button_up}
    Wait Until Page Contains            Press to go to the next level


Deve clicar segundo nivel do Up Navegator
    Click on Menu Nested Views
    Click Element                       ${button_up}
    Wait Until Page Contains            Press to go to the next level
    Click Element                       ${button_up}
    Wait Until Page Contains            Final Level


Deve chegar ao final e voltar uma tela
    Click on Menu Nested Views
    Click Element                       ${button_up}
    Wait Until Page Contains            Press to go to the next level
    Click Element                       ${button_up}
    Wait Until Page Contains            Final Level
    Click Element                       ${return}
    Wait Until Page Contains            Press to go to the next level


Deve chegar ao final e voltar a tela principal
    Click on Menu Nested Views
    Click Element                       ${button_up}
    Wait Until Page Contains            Press to go to the next level
    Click Element                       ${button_up}
    Wait Until Page Contains            Final Level
    Click Element                       ${return}
    Wait Until Page Contains            Press to go to the next level
    Click Element                       ${return}
     Wait Until Page Contains           Navigation


Deve clicar no botao Back
    Click on Menu Nested Views
    Click Element                       ${button_back}
    Wait Until Page Contains            1


Deve avancar 3 telas
    ${button}=      Set Variable        id=com.amazonaws.devicefarm.android.referenceapp:id/back_navigation_next_button

    Click on Menu Nested Views
    Click Element                       ${button_back}
    Wait Until Page Contains            1
    Click Element                       ${button}
    Wait Until Page Contains            2
    Click Element                       ${button}
    Wait Until Page Contains            3
    Click Element                       ${button}
    Wait Until Page Contains            4
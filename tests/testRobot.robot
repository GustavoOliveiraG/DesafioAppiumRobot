*** Settings ***
Documentation       Suite description
Resource            C:\\MyProjects\\Mobile\\Robot_Python\\bases\\testsBase.robot
Resource            ../pages/menuPage.robot
Library             AppiumLibrary

Test Setup          Open Session
Test Teardown       Close Session


*** Test Cases ***
Deve digitar um texto no campo Text Field

    Click on Menu Input Controls
    Input Text                          id=com.amazonaws.devicefarm.android.referenceapp:id/input_edit_text         Teste QA Escrevendo no campo Text Field001
    Wait Until Page Contains            Teste QA Escrevendo no campo Text Field001


Deve digitar um texto no campo Text Field2

    Click on Menu Input Controls
    Input Text                          id=com.amazonaws.devicefarm.android.referenceapp:id/input_edit_text         Teste QA Escrevendo no campo Text Field
    Wait Until Page Contains            Teste QA Escrevendo no campo Text Field

*** Settings ***
Documentation       Suite description
Resource            ../../bases/testsBase.robot
Resource            ../../pages/menuPage.robot
Library             DataDriver          ../DataDriven.xls

Test Template       Leitura de dados via EXCEL
Test Setup          Open Session
Test Teardown       Close Session


*** Test Cases ***
Deve digitar um texto no campo Text Field lendo de uma planilha do EXCEL


*** Keywords ***
Leitura de dados via EXCEL
    [Arguments]     ${username}

    Click on Menu Input Controls
    Input Text                          id=com.amazonaws.devicefarm.android.referenceapp:id/input_edit_text         ${username}
    Wait Until Page Contains            ${username}

*** Settings ***
Documentation       Suite description
Resource            ../../bases/testsBase.robot
Resource            ../../pages/homePageiOS.robot
Library             DataDriver          DataDriven.xls

Test Template       Leitura de dados via EXCEL
Test Setup          Open Session
Test Teardown       Close Session


*** Test Cases ***
Deve ler um valor e digitar na calculadora


*** Keywords ***
Leitura de dados via EXCEL
    [Arguments]     ${number}

    Click General Button    ${number}
    Display Value           ${number}
    Close Session
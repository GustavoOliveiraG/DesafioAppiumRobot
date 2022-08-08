*** Settings ***
Documentation       Suite description
Resource            base.resource

Library             DataDriver          DataDriven.xls
Test Template       Leitura DDT


*** Test Cases ***
Fazendo leitura de um DDT


*** Keywords ***
Leitura DDT
    [Arguments]    ${username}
    Log to Console      ${username}
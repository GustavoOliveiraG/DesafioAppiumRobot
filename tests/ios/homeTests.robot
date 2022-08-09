*** Settings ***
Documentation       Suite description
Resource            ../../bases/testsBase.robot
Resource            ../../pages/homePageiOS.robot


*** Test Cases ***
Deve abrir o app com sucesso
    Open Session
    Wait Until Element Is Visible       xpath=//XCUIElementTypeApplication[@name="calculator"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther
    Close Session

Deve clicar no numero 1
    Open Session
    Click Button 1
    Display Value           1
    Close Session

Deve clicar no numero 2
    Open Session
    Click Button 2
    Display Value           2
    Close Session
    
Deve clicar no numero 3
    Open Session
    Click Button 3
    Display Value           3
    Close Session
    
Deve clicar no numero 4
    Open Session
    Click Button 4
    Display Value           4
    Close Session
    
Deve clicar no numero 5
    Open Session
    Click Button 5
    Display Value           5
    Close Session

Deve clicar no numero 6
    Open Session
    Click Button 6
    Display Value           6
    Close Session
    
Deve clicar no numero 7
    Open Session
    Click Button 7
    Display Value           7
    Close Session

Deve clicar no numero 8
    Open Session
    Click Button 8
    Display Value           8
    Close Session
    
Deve clicar no numero 9
    Open Session
    Click Button 9
    Display Value           9
    Close Session
    
Deve clicar no numero 0
    Open Session
    Click Button 5
    Click Button 0
    Display Value           50
    Close Session

Deve clicar no numero 12 usando funcao geral
    Open Session
    Click General Button    1
    Click General Button    2
    Display Value           12
    Close Session

Deve somar 2 numeros
    Open Session
    Click General Button    1
    Click General Button    +
    Click General Button    2
    Click General Button    =
    Display Value           3
    Close Session

Deve subtrair 2 numeros
    Open Session
    Click General Button    4
    Click General Button    -
    Click General Button    1
    Click General Button    =
    Display Value           3
    Close Session

Deve zerar o display
    Open Session
    Click General Button    4
    Click General Button    3
    Click General Button    2
    Click General Button    C
    Display Value           0
    Close Session

Deve subtrair de forma negativa
    Open Session
    Click General Button    5
    Click General Button    -
    Click General Button    10
    Click General Button    =
    Display Value           -5
    Close Session

Deve efetuar expressao digitando de forma direta
    Open Session
    Click General Button    8
    Click General Button    -
    Click General Button    2
    Click General Button    +
    Click General Button    5
    Display Value           7
    Close Session

Deve efetuar expressao digitando de forma separada
    Open Session
    Click General Button    8
    Click General Button    -
    Click General Button    2
    Click General Button    =
    Click General Button    +
    Click General Button    5
    Click General Button    =
    Display Value           11
    Close Session

Deve digitar de 1 a 9
    Open Session
    Click General Button    1
    Click General Button    2
    Click General Button    3
    Click General Button    4
    Click General Button    5
    Click General Button    6
    Click General Button    7
    Click General Button    8
    Click General Button    9
    Click General Button    =
    Display Value           123456789
    Close Session

Deve digitar de 9 a 1
    Open Session
    Click General Button    9
    Click General Button    8
    Click General Button    7
    Click General Button    6
    Click General Button    5
    Click General Button    4
    Click General Button    3
    Click General Button    2
    Click General Button    1
    Click General Button    =
    Display Value           987654321
    Close Session
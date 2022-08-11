# **Desafio Automação - Appium**

Desafio da Base 2 para automação mobile com appium





*Template desenvolvido em Python + robot framework.*

https://robotframework.org/

https://github.com/serhatbolsu/robotframework-appiumlibrary

http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html



###  Instalação

- **Instalação do Python** https://www.python.org/downloads/

   CMD >>

  ```
  * python --version
  * pip --version
  ```

- **Instalação do JDK8**

  *Conferir versão do JAVA*

   CMD>>

  ```
  * java --version
  ```

- **Instalação do NodeJS(LTS) / Appium**

  https://nodejs.org/pt-br/

  CMD>>

  ```
  * node --version
  * npm --version
  * npm install appium - g (Servidor appium) ou npm install -g appium 
  * npm install appium-doctor - g 
  ```

  *Erro HTTP.: https://stackoverflow.com/questions/69374297/i-cantt-connect-appium-server-desktop-and-appium-i

  CMD>>

  ```
  * appium   (Iniciar Servidor Appium)
  * Ctrl + C   (Finalizar Servidor Appium)
  * appium-doctor --android   (Verificar se servidor esta pronto para virtualizar android)
  ```



- #### **Instalação  Appiumlibrary**

   CMD >>

```
* pip install --upgrade robotframework-appiumlibrary
```



- #### **Instalação Data-Driven

  - Data-Driver no Robot:
  - https://github.com/Snooz82/robotframework-datadriver
  -  https://github.com/Snooz82/robotframework-datadriver#example-suite

​	 CMD >>

```
* pip install --upgrade robotframework-datadriver
* pip install -U robotframework-datadriver[XLS]
```





## Desafio:

Desafio Automação - APIs REST

## Testes

- Implementar 25 scripts de testes que manipulem um aplicativo móvel Android com Page Objects.

*Testes localizados dentro da pasta **tests/android** .Os testes foram baseados no app **app-debug.apk**, que esta salvo na pasta **app/android**.*



- Alguns scripts devem ler dados de uma planilha Excel para implementar Data-Driven.

*Data-Driven implementado pelo framework do robot ([conforme instalação acima]()). Na pasta **tests** existe um arquivo **.xls** onde o mesmo é utilizado na classe de teste **inputControlsDDTTests.robot** como exemplo da utilização do DDT pelo robot.*



- Notem que 25 scripts podem cobrir mais de 25 casos de testes se usarmos Data-Driven. Em outras palavras, implementar 25 CTs usando data-driven não é a mesma coisa que implementar 25 scripts.

*Neste caso a implementação dos 25cts, são separadas do DDT.*



- Os casos de testes precisam ser executados em simulador e em um device real.

*Dentro do projeto existe um arquivo chamado **environment.json**, esse arquivo é responsável pelas configurações de ambiente que deseja executar os testes(android ou ios, device físico ou virtual), além disso as configurações dos Capabilities do appium também estão nesse arquivo.*

https://appium.io/docs/en/writing-running-appium/caps/

![image-20220810091307126](https://gitlab.com/-/ide/project/d3424/desafioappiumrobot/edit/main/-/img/image-20220810091307126.png)





-------------------------------------------------------------------------

- Implementar 25 scripts de testes que manipulem um aplicativo móvel iOS com Page Objects.

*Testes localizados dentro da pasta **tests/iOS** .Os testes foram baseados no app **calculator.app**, que esta localizado na pasta **app/iOS**. Como os testes são baseados em um app de calculadora, são testes bem simples, mais que implementam todas as exigências do desafio.*



- Alguns scripts devem ler dados de uma planilha Excel para implementar Data-Driven.

*Data-Driven implementado pelo framework do robot ([conforme instalação acima]()). Na pasta **tests/iOS** existe um arquivo **.xls** onde o mesmo é utilizado na classe de teste **homeDDTTests.robot** como exemplo da utilização do DDT pelo robot.*



- Notem que 25 scripts podem cobrir mais de 25 casos de testes se usarmos Data-Driven. Em outras palavras, implementar 25 CTs usando data-driven não é a mesma coisa que implementar 25 scripts.

*Neste caso a implementação dos cts, são separadas do DDT.*



- Os casos de testes precisam ser executados em simulador e em um device real.

*Dentro do projeto existe um arquivo chamado **environment.json**, esse arquivo é responsável pelas configurações de ambiente que deseja executar os testes(android ou ios, device físico ou virtual), além disso as configurações dos Capabilities do appium também estão nesse arquivo.*



![image-20220811100030712](.\img\image-20220811100030712.png)



*obs.:  Para conseguir implementar os cts voltados para iOS foi necessário, virtualizar uma maquinha para utilizar o XCode e também localizar um projeto de app iOS para fazer o build e gerar o .app, links utilizados*

- *Maquinha virtual iOS: [Criando uma Máquina Virtual para desenvolvimento iOS - TerraLAB (ufop.br)](http://www2.decom.ufop.br/terralab/criando-uma-maquina-virtual-para-desenvolvimento-ios/)*
- *Emulador iOS:*
  - *[Configurando o emulador iOS - Blog Cod3r](https://blog.cod3r.com.br/configurando-o-emulador-ios/)*
  - *[Appium Desktop - Inspecionar elementos Android e iOS - YouTube](https://www.youtube.com/watch?v=V6ob5GkraOM)*
- *Projeto app para iOS: https://github.com/bitbar/testdroid-samples*
  - *Dentro do projeto na pasta Xcode tem o .zip utilizado para buildar o .app, uma copia esta salva dentro da pasta **app/ios** e também uma copia do arquivo **.app** utilizado para executar os testes.*



-----------------------------------------

- Gravar screenshots ou vídeos automaticamente dos casos de testes.

*Pelo robot utilizamos as keywords  **Start Screen Recording** e **Stop Screen Recording** para iniciar e para a gravação de vídeo. Para que em cada teste seja feito um vídeo diferente, add essas keywords no arquivo **testsBase.robot** localizado dentro da pasta **bases**.*

*Da mesma forma utilizamos a keyword **Capture Page Screenshot** antes de encerrar o teste, para evidenciar a validação final esperada pelo nosso cenário. Keyword também esta configurada no arquivo **testsBase.robot**.*



- O projeto deverá gerar um relatório de testes automaticamente com screenshots ou vídeos embutidos. Sugestões: Allure Report ou ExtentReport.

O robot possui um report nativo que inclui os vídeos e os prints tirados ao longo do teste. Para que fique padrão o salvamento deste relatório, ao executar uma suite de teste ou um teste unitario, é necessario passar o seguinte comando:

```
			robot -d ../reports ....
			
			Exemplo de teste da classe  inputControlsDDTTests.robot
					robot -d ../reports inputControlsDDTTests.robot

			Exemplo de teste para suite android completa
					robot -d ../reports andoid\
```

*obs.: Para executar o comando, é necessário estar dentro da pasta com o arquivos .robot, de preferencia dentro da tests ou da tests/android ou tests/ios*



- Executar os testes em uma device farm.

*Foi criado as configuração de acesso para o  **BrowserStack**, os mesmos apontados no  **environment.json**, criado uma função de apontamento, para chamada local ou via device farm. Todas as configurações necessárias foram baseadas no link de ajuda do **BrowserStack***

​	![image-20220810171202542](.\img\image-20220810171202542.png)


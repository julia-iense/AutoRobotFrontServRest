*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  String

Resource  pages/login.robot
Resource  pages/CadastroDeUsuário.robot

*** Variables ***
&{cadastro}
...    input_name=//*[@id="nome"]
...    input_email=//*[@data-testid="email"]
...    input_password=//*[@data-testid="password"]
...    button_Continuar=//button[@data-testid="cadastrar"]
...    alert_mensagens =//*[@role="alert"]

&{Setup1}
...    URL=https://front.serverest.dev/cadastrarusuarios
...    Browse=chrome  

&{Fixo}
...    name=Ana Maria
...    EmailAddress=teste@gmail.com
...    senha=testes123testes

&{Setup}
...    URL=https://front.serverest.dev/login
...    Browse=chrome

&{login}
...    button_FacaLogin=//*[@data-testid="entrar"]
...    input_email=//*[@data-testid="email"]
...    input_password=//*[@data-testid="senha"]
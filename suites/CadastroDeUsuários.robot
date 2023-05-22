*** Settings ***
Resource  ../resources/main.robot

*** Test Cases ***
TC1 - Cadastrar usuário com sucesso
    Dado que eu acesse a tela de cadastro
    E preencha os campos
    Quando eu clicar em cadastrar
    Então será direcionado para a area logada 

TC2 - Cadastrar usuário sem os campos preenchidos
    Dado que eu acesse a tela de cadastro
    Quando eu clicar em cadastrar
    Então será exibida a mensagem    Password é obrigatório
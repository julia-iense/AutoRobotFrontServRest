*** Settings ***
Resource  ../resources/main.robot
Resource    ../resources/pages/Login.robot

*** Test Cases ***
TC1 - Validando o login
    Dado que o usuário já tenha cadastro
    Quando efetuar o login 
    Então será direcionado para a area logada


   
    
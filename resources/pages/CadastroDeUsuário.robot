*** Settings ***
Resource  ../main.robot

*** Keywords ***
Dado que eu acesse a tela de cadastro
    Open Browser  ${Setup1.URL}  ${Setup1.Browse}
    Maximize Browser Window
E preencha os campos
    ${chaveAleatoria}  Generate Random String  length=8  chars=[LETTERS]
    ${chaveAleatoria}  Convert To Lower Case   ${chaveAleatoria}
    Set Test Variable     ${email}  ${chaveAleatoria}@qa.com
    Log  ${email}
    Input Text       ${cadastro.input_name}  ${chaveAleatoria}
    Input Text       ${cadastro.input_email}  ${email} 
    Input Text       ${cadastro.input_password}  ${chaveAleatoria}
Quando eu clicar em cadastrar
    Click Button    ${cadastro.button_Continuar}
Então será exibida a mensagem 
    [Arguments]  ${mensagem}   
    &{mensagem}  Create Dictionary
    Sleep    10
    Page Should Contain Element  css=span  ${mensagem} 
Então será direcionado para a area logada
    Wait Until Location Is  https://front.serverest.dev/home  10s

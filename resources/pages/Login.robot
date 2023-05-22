*** Settings ***
Resource  ../main.robot

*** Keywords ***
Dado que o usuário já tenha cadastro
    Open Browser  ${Setup1.URL}               ${Setup1.Browse}
    Input Text    ${cadastro.input_name}      ${Fixo.name}
    Input Text    ${cadastro.input_email}     ${fixo.EmailAddress} 
    Input Text    ${cadastro.input_password}  ${fixo.senha}  
    Click Button  ${cadastro.button_Continuar}
Quando efetuar o login 
    Open Browser  ${Setup.URL}             ${Setup.Browse}
    Input Text    ${login.input_email}     ${fixo.EmailAddress} 
    Input Text    ${login.input_password}  ${fixo.senha} 
    Click Button  ${login.button_FacaLogin}
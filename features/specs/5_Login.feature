#language: pt

@login
Funcionalidade: Autenticação no Agrohub    
    Para que eu possa autenticar na Aplicação AgroHUB
    Sendo pefil de usuário cadastrado ou um Gestor Suporte
               
   
   Contexto: Logar no AgroHub
    Dado que apresentado o fomulário para autenticar no AgroHUB  
   
    @loginS
    Cenario: Logar como Gestor Suporte AgroHubcom 
       Quando faço com login e-mail com o gestor:
       |Email|hu.psilva@gmail.com|
       |Senha|hpereira6611       |
       Então sou autenticado com sucesso no AgroHUB

    #@loginU
    Cenario: Logar como Usuário AgroHubcom  
       Quando faço com login e-mail com o usuário:
       |Email|agrohubautomacao@gmail.com|
       |Senha|agrohub123456             | 
       Então sou autenticado com sucesso no AgroHUB



       
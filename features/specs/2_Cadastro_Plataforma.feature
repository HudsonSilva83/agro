#language:pt

Funcionalidade: Cadastro na plataforma
    Para que somente eu possa acessar a plataforma AgroHUB então efetuo o cadastro
    Sendo assim após o cadastro e ativação, eu posso logar no sistema 

@cadastroPlataforma 
Cenário: Cadastrar na Plataforma 
  
    Dado que eu acessei o formulário de cadastro 
    Quando preencho todos os campos:
    
      | Nome         | Teste Automação - Teste         |
      | Email        | agrohubautomacao@gmail.com      |
      | Telefone     | 31 999999999                    |
      | CPF          | 98765477899                     |
      | Senha        | hpereira6611                    |
      | Repita_Senha | hpereira6611                    |
    
    E aciono o comando para cadastrar
    Então o sistema apresenta mensagem "Sucesso! E-mail de confirmação enviado. Por favor acesse seu e-mail e confirme o cadastro."
   
    

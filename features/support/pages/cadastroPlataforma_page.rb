class CadastroPlataforma < SitePrism::Page
    
    #@dados = Dados.new
     element :campo_Nome, '#Nome'
     element :campo_email, '#input9'
     element :campo_telefone, '#telefone'
     element :campo_cpf, '#cpf'
     element :campo_senha, '#Password'
     element :campo_repita_Senha, '#ConfirmPassword'
     element :botao_cadastro, 'input[value="Cadastrar"]'
  

    def preencherCampos(campos)
        #cademail = @dados.lerDadosEmail
        campo_Nome.set campos [:Nome]
        campo_email.set campos [:Email]
        campo_telefone.set campos [:Telefone]
        campo_cpf.set campos [:CPF]
        campo_senha.set campos [:Senha]
        campo_repita_Senha.set campos [:Repita_Senha]
        @email = campos [:Email]
        @senha = campos [:Senha]
    
    end

      
     def cadastrar
  
      botao_cadastro.click
      dados = Dados.new 
      dados.gravandoDadosEmail(@email)
      dados.gravandoDadosSenha(@senha)

      
     end
  
  
  end 
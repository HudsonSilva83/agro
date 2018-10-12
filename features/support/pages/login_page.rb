class LoginPage < SitePrism::Page

    element :campo_email, '#input9'
    element :campo_senha, '#Password'
    element :botao_entrar, '#SubmitButton'


    def abrirUrl
        visit'http://homologacao.painel.agrohub.com.br/'
    end


    def logar(dados)

        campo_email.set dados [:Email]
        campo_senha.set dados [:Senha]
        #botao_entrar.click
  
    end
    
    def logarteste(email,senha)

        campo_email.set email
        campo_senha.set senha
        
  
    end


    def entra
        botao_entrar.click
    end
    
   
end


class Desativar < SitePrism::Page

element :menu_cad, 'a[title="Gestão do Cadastro do Usuário"]'
element :filtro_usuario,'input[class="form-control input-sm"]'
element :btn_desativar,'#delete'
element :btn_confirma, '#yesButtonConfirmationModal'

    def acessarPesquisa
        click_link('Usuários')
        sleep 1
        menu_cad.click
    end


    def pesquisarUsuario
       @dados = Dados.new 
       @email = @dados.lerDadosEmail
       filtro_usuario.set @email
    
    end

    def desativar
        
        btn_desativar.click
        btn_confirma.click
            
    end


end
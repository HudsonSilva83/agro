class Autoriza < SitePrism::Page
    
    element :menu_cad, 'a[title="Gestão do Cadastro do Usuário"]'
    element :filtro_usuario,'input[class="form-control input-sm"]'
    element :botao_autorizar,'a[class="glyphicon glyphicon-ok ignoreModal"]'
    element :botao_confirmar, '#yesButtonConfirmationModal'
    

    def acessarUsuAriosCadastrados
        click_link('Usuários')
        sleep 1
        menu_cad.click
    end

   def pesquisaUsuario(email)
        filtro_usuario.set email
   end


   def autorizar
    sleep 2
     botao_autorizar.click
     botao_confirmar.click
      
   end


end
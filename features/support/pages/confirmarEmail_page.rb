class ConfirmarEmail < SitePrism::Page  
    
    
   def acessaEmail
    visit'https://mail.google.com'
    sleep 2
       
    @Email = find('#identifierId')
    @Email.set "agrohubautomacao@gmail.com"
    proxima = find('#identifierNext')
    proxima.click
    sleep 4
    @senha = find('input[name="password"]')
    @senha.set "agrohub123456" 
    proximasenha = find('#passwordNext')
    proximasenha.click
    sleep 7
    acessarConfirma = find('div[class="UI"]').click
    sleep 4
    # volta = find('div[class*="ar6 T-I-J3 J-J5-Ji"]')
 
   end


   def confirmar
    click_link('AQUI')
   end




    def ecluirEmail
    
    # @Email = find('#identifierId')
    # @Email.set "agrohubautomacao@gmail.com"
    # proxima = find('#identifierNext')
    # proxima.click
    # @senha = find('input[name="password"]')
    # @senha.set "agrohub123456" 
    # proximasenha = find('#passwordNext')
    # proximasenha.click
    # sleep 6
    # acessarConfirma = find('div[class="UI"]').click
    sleep 4
    excluir = find('div[class*="ar9 T-I-J3 J-J5-Ji"]')
    excluir.click
    end

end
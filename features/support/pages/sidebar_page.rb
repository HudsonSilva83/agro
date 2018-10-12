class SideAgroHUB < SitePrism::Page
   
    element :menu_cadastro, 'a[title*="Cadastros Gerais do Sistema"]'
    element :menu_fazendas, 'a[title*="Cadastro de Fazenda"]'
    element :botao_novo, 'a[href*="/Fazenda/Cadastrar"]'
    element :filtro_pesquisa, 'input[class*="form-control input-sm"]'
    element :tabelaFazenda, 'table tbody tr'
    element :mensagem_cad_sucesso, 'div[class*="alert alert-success alert-dismissable"]'
    

    def telaPesquisaFazenda
     
        menu_cadastro.click
        sleep 2
        menu_fazendas.click

    end

    
    def telaFazendacadastro
        menu_cadastro.click
        sleep 2
        menu_fazendas.click
        botao_novo.click
    end
    

    
    
end
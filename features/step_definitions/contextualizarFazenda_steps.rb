Dado("que estou logado no sistema e contextualizo a fazenda pessoa Fisica") do    
 
  # @paginacontex = ContFazenda.new
  # @paginacontex.contextualizarFazendaPf  

  @paginacontex = ContFazendaUsu.new
  @paginacontex.contextualizarPf  
    
 end                                                                               
                                                                                  
Então("o sistema direciona para a tela do dashboard com a fazenda selecionada") do
 dash = find('.description')
  expect(dash).to have_content "Bem vindo ao Painel Administrativo AgroHUB"
  
end                                                                               
                                                                                  
Dado("logado no sistema contextualizo a fazenda pessoa Jurídica") do              
  @paginacontex = ContFazendaUsu.new
  @paginacontex.contextualizarPj
  
  end                                                                               
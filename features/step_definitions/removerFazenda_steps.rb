Dado("que estou na tela para pesquisar a fazenda") do

  @telapesquisa = SideAgroHUB.new  
  @telapesquisa.telaPesquisaFazenda
  tela = find('.pageheader')
  expect(tela.text).to have_content 'VOCÊ ESTÁ AQUI: Home Fazendas Pesquisa de Fazendas'
  
end
  
  Quando("pesquiso a fazenda fisica {string}") do |nome_fazenda|
    
    @nome_esperado = @nome_fazenda
    @pesquisaFazendafisica = PesquisaFazenda.new   
    #@pesquisaFazendafisica.wait_for_filtro_pesquisa
    @pesquisaFazendafisica.preencherFiltroFazenda(nome_fazenda)
  
   end
  
  Quando("aciono o comando de exclusão") do
   teste = @nome_esperado
    @removerFazenda = PesquisaFazenda.new
    @removerFazenda.solicitaremoverFazenda
end
  
  Então("a fazenda é excluida com sucesso") do
    mensagemSucesso = find('div[class="alert alert-success alert-dismissable"]')
    expect(mensagemSucesso).to have_content 'Sucesso! Registro excluído com sucesso.'
  end
  
  Quando("pesquiso a fazenda Juridica {string}") do |nome_fazenda|
   
    @nome_esperado = nome_fazenda
    @pesquisaFazendajuridica = PesquisaFazenda.new   
    #@pesquisaFazendajuridica.wait_for_filtro_pesquisa
    @pesquisaFazendajuridica.preencherFiltroFazenda(nome_fazenda)

  end
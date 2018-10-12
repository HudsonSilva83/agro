Dado("que estou na tela de pesquisa de fazenda") do
 
  @telapesquisa = SideAgroHUB.new  
  @telapesquisa.telaPesquisaFazenda
  tela = find('.pageheader')
  expect(tela.text).to have_content 'VOCÊ ESTÁ AQUI: Home Fazendas Pesquisa de Fazendas'

end

Quando("preencho o filtro com a fazenda pessoa física cadastrada {string}") do |nome_fazenda|
  @nome_esperado = @nome_fazenda
  @pesquisaFazendafisica = PesquisaFazenda.new   
  #@pesquisaFazendafisica.default_max_wait_time_for_filtro_pesquisa 
  @pesquisaFazendafisica.preencherFiltroFazenda(nome_fazenda)

end

Então("a fazenda pessoa física é recuparada na lista.") do
   @fazendapf = @pesquisaFazendafisica.recuperafazendaF
   expect(@fazendapf).to have_content @nome_esperado
    @dados = Dados.new
    idpf = @fazendapf
    @dados.gravarIdpf(idpf)

  end

Quando("preencho o filtro com a fazenda pessoa jurídica cadastrada {string}") do |nome_fazenda|
  
  @nome_esperado = @nome_fazenda
  @pesquisaFazendajuridica = PesquisaFazenda.new   
  @pesquisaFazendajuridica.preencherFiltroFazenda(nome_fazenda)

end

Então("a fazenda pessoa Jurídica é recuparada na lista.") do
  
  @fazendapj = @pesquisaFazendajuridica.recuperafazendaJ
  expect(@fazendapj).to have_content @nome_esperado
   @dados = Dados.new
   idpj = @fazendapj
   @dados.gravarIdpj(idpj)
  
  expect(@fazendapj).to have_content @nome_esperado

end
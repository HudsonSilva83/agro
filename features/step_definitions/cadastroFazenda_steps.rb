Dado("que estou no formulário de cadastro de fazenda") do
  @telaCadastro = SideAgroHUB.new
  @telaCadastro.telaFazendacadastro
  @pessoaFisica = CadastroFazenda_PessoaFisica.new
  @pessoaJuridica = CadastroFazenda_PessoaJuridica.new
end

Quando("Preencho todos os campos para pessoa física {string}") do |cpf|
  @pessoaFisica.preencherCampos(cpf)
end

Então("aciono o comando para Cadastro da pessoa Fisica") do
  @pessoaFisica.salvar
end

Então("o cadastro de fazenda de pessoa física é efetuado com sucesso") do
  @mensagem = @telaCadastro.mensagem_cad_sucesso
  expect(@mensagem.text).to have_content "Sucesso! Registro cadastrado com sucesso"
end

Quando("Preencho todos os campos para pessoa jurídica {string}") do |cnpj|
    @pessoaJuridica.preencherCampos(cnpj)
end

Então("aciono o comando para Cadastro da pessoa Jurídica") do
  @pessoaJuridica.salvarJuridica
end

Então("o cadastro de fazenda pessoa juridica é efetuado com sucesso") do
  @mensagem = @telaCadastro.mensagem_cad_sucesso
  expect(@mensagem.text).to have_content "Sucesso! Registro cadastrado com sucesso"
  end

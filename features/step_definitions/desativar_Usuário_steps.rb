Dado("que o gestor suporte é autenticado no sistema com os seguintes dados:") do |table|
  @dados = table.rows_hash
  @loginsuporte = LoginPage.new
  @loginsuporte.abrirUrl
  @loginsuporte.logar(@dados)
  @desativar = Desativar.new
  @desativar.acessarPesquisa

end

Quando("pesquiso pelo usuário cadastrado") do
  @desativar.pesquisarUsuario 
end

Quando("aciono o comando desativar o usuário") do
  @desativar.desativar
end

Então("o usuário é desativado e apresenta a mensagem de {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
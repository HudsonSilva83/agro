Dado("que o gestor suporte autenticado no sistema com os seguintes dados:") do |table|
  
  @dados = table.rows_hash
  @loginsuporte = LoginPage.new
  @loginsuporte.abrirUrl
  @loginsuporte.logar(@dados)
  @pageAutoriza = Autoriza.new
  @pageAutoriza.acessarUsuAriosCadastrados

end

Quando("efetuado a pesquisa do usuário: {string}") do |email|

  @pageAutoriza.pesquisaUsuario(email)
  
end

Quando("acionado o comando para autoriza o acesso ao portal AgroHub") do
  sleep 2
  @pageAutoriza.autorizar
end

Então("o sistema apresenta mensagem de sucesso {string}") do |mensagem_esperada|
  @mensagem = find('div[class="alert alert-success alert-dismissable"]')
   expect(@mensagem).to have_content mensagem_esperada
end




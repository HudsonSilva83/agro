Dado("que eu acessei o formulário de cadastro") do                            
  visit '/Conta/Cadastrar'
  @cadastroPlataforma = CadastroPlataforma.new 
end                                                                           
                                                                              
Quando("preencho todos os campos:") do |table|                                
  
  @campos = table.rows_hash
  @cadastroPlataforma.preencherCampos(@campos)
  
end                                                                           
                                                                              
Quando("aciono o comando para cadastrar") do                                  
  @cadastroPlataforma.cadastrar 
end                                                                           
                                                                              
Então("o sistema apresenta mensagem {string}") do |mensagem_esperada|                    
  mensagem = find('div[class*="alert alert"]')
  expect(mensagem.text).to have_content mensagem_esperada
end     




                                              
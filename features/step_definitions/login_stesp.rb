  Dado("que apresentado o fomulário para autenticar no AgroHUB") do             
   
    @login= LoginPage.new
    @login.abrirUrl 
end                                                                           
                                                                              
Quando("faço com login e-mail com o gestor:") do |table|                      
  @dadosGestor = table.rows_hash  
  @login.logar(@dadosGestor) 
  @login.entra                    
   
end                                                                           
                                                                              
Então("sou autenticado com sucesso no AgroHUB") do                            
  @paginalogada = find('.description')
  expect(@paginalogada.text).to eql "Bem vindo ao Painel Administrativo AgroHUB" 
end                                                                           
                                                                              
Quando("faço com login e-mail com o usuário:") do |table|                     
  @dadosUsuario = table.rows_hash
  @login.logar(@dadosUsuario) 
  @login.entra 
end                                                                           
                                                                              
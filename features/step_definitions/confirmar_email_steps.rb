 #agrohubautomacao@gmail.com
 #agrohub123456


 Dado("que estou no caixa de email") do
  @email = ConfirmarEmail.new 
  @email.acessaEmail
  
end

Dado("confirmo o email que foi cadastrado na plataforma AgroHUB") do
  #@email.confirmar
  
end

Então("após confirmado o email, faço a exclusão na caixa de entrada para não ter ambiguidade de dados posteriormente") do
#@email.ecluirEmail
end
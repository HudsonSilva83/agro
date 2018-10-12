Dado("que eu estou na página para aceite do termo de uso") do
  
  @telaTermo = AceiteTermo.new
  expect(@telaTermo.tela).to have_content "Agradecemos por você usar os nossos produtos e serviços."
 
end

Quando("faço o aceite do termo") do
  @telaTermo.aceitar
end

Então("o sistema efetua o aceite com sucesso") do
  @telaTermo.wait_for_dashboard
  expect(@telaTermo.dashboard).to have_content "Bem vindo ao Painel Administrativo AgroHUB"
end
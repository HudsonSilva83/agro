Dado("que estou na página getnada.com") do
    visit'https://getnada.com/#'
    @dados = Dados.new 
  end
   
  Quando("crio o email {string}") do |email|
      
      find('.icon-plus').click
      find('.user_name').set email
      find('a[class="button success"]').click
      sleep 3
      @email = find('span[class*="what_to_copy"]')
      @dados.gravandoDadosEmail(@email.text)
      @dados.lerDadosEmail


  end
  
  Então("o cadastro é efetivado com sucesso") do
    pending # Write code here that turns the phrase above into concrete actions
  end
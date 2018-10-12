Before('@autenticadoUsu') do
@login_page = LoginPage.new
@login_page.abrirUrl
#visit'http://homologacao.painel.agrohub.com.br/'
@login_page.logarteste('agrohubautomacao@gmail.com','agrohub123456')
@login_page.entra

page.current_window.resize_to(1440, 900)

end


Before('@autenticadoGestor') do
@login_page = LoginPage.new
@login_page.abrirUrl
@login_page.logarteste('hu.psilva@gmail.com','hpereira6611')
@login_page.entra

end

#  Before('@abrejanela') do
#     window = Capybara.current_session.driver.browser.manage.window
#     window.resize_to(1356, 768) # width, height
#   end

  After('@logout') do
    
    find('.caret').click
    find('#logoutForm').click

end

  After do |scenario|
    
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    nome_cenario = nome_cenario.tr(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
  
   if scenario.failed?
     #screenshot = "log/screenshots/failed/#{nome_cenario}.png"
     puts 'cenário falhou'
   else
    screenshot = "log/screenshots/passed/#{nome_cenario}.png"
    page.save_screenshot(screenshot) # => capybara tira o screenshot
    embed(screenshot, 'image/png', 'Evidência') # => cucumber atacha a evidencia no relatório
   end

  # page.save_screenshot(screenshot) # => capybara tira o screenshot
  # embed(screenshot, 'image/png', 'Evidência') # => cucumber atacha a evidencia no relatório
  
  end

 



 
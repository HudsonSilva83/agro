class ContFazenda < SitePrism::Page
   
    element :campo_fazenda_contextualizar, '#fazendaRelacionada'
    element :selecionar_fazenda, 'div[tabindex*="-1"]'
    element :painelAdministrativo,'.description'
    
    
    def contextualizarFazendaPf
        
        @dados = Dados.new
        @idpf = @dados.get_Idpf
        campo_fazenda_contextualizar.click
        campo_fazenda_contextualizar.set @idpf
        wait_for_selecionar_fazenda
        selecionar_fazenda.click
    
    end

    
    def contextualizarFazendaPj
        
        @dados = Dados.new
        @idpj = @dados.get_Idpj
        campo_fazenda_contextualizar.click
        campo_fazenda_contextualizar.set @idpj
        wait_for_selecionar_fazenda
        selecionar_fazenda.click
    
    end
    

end


class ContFazendaUsu <SitePrism::Page

    def contextualizarPf

    def select_by_text(value)
        fazenda = find('select[id$=Roles]')
        fazenda.click
        fazenda.find('option', text: value).click
        end
        select_by_text('Automacao_Pessoa_Física')

  end

  def contextualizarPj

    def select_by_text(value)
        fazenda = find('select[id$=Roles]')
        fazenda.click
        fazenda.find('option', text: value).click
        end
    select_by_text('Automacao_Pessoa_Jurídica')

  end


end
    

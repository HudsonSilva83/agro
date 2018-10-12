class AceiteTermo < SitePrism::Page
    
    element :tela, '.panel-body'
    element :botão_concordar, 'a[data-dismiss="modal"] span[class*="glyphicon glyphicon-ok"]'
    element :dashboard, '.pageheader'
    
    def aceitar

        botão_concordar.click


    end


end
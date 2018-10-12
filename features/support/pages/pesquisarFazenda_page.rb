class PesquisaFazenda < SitePrism::Page  
     
    element :filtro_pesquisa, 'input[class*="form-control input-sm"]'
    element :tabelaFazenda, 'table tbody tr'
    element :botao_confirma_sim, '#yesButtonConfirmationModal'
    

      def preencherFiltroFazenda(nome_fazenda)
              
        filtro_pesquisa.click
        filtro_pesquisa.set(nome_fazenda)
    
      end

        def recuperafazendaF
               
          recuf = find('table tbody tr [title*="Pessoa_Física"]')
          return recuf.text
 
        end


        def recuperafazendaJ
               
          recuj = find('table tbody tr [title*="Pessoa_Jurídica"]')
          return recuj.text
 
        end


      def listarFazendapf
        
        @dados = Dados.new
        tabelaFazenda(text:"Automacao_Pessoa_Física")
        idpf = tabelaFazenda(text:"Automacao_Pessoa_Física").find('td[class*="hidden990 hidden768 sorting_1"]')
        @dados.gravarIdpf(idpf.text)
         
    
        end 


        def listarFazendapj
         
          @dados = Dados.new
          tabelaFazenda(text:nome_fazenda)
          idpj = tabelaFazenda(text:nome_fazenda).find('td[class*="hidden990 hidden768 sorting_1"]')
          @dados.gravarIdpj(idpj.text)
           
  
         end



      def solicitaremoverFazenda
               
        tabelaFazenda.find('#delete').click
        #tabelaFazenda(text:'Automacao_Pessoa_Física').find('#delete').click
        botao_confirma_sim.click

      end
        
end



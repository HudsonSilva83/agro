class CadastroFazenda_PessoaFisica < SitePrism::Page
    
   #element :selecionarLogo, 
   element :campo_nome, '#Nome'
   element :campo_proprietario, '#proprietario'
   #element :usu_resposavel, '#usuarioResponsavel'
   #element :usu_resposavel_select, 'div[tabindex*="-1"]'
   element :area_Total, '#Area'
   @combo1_pais = 'pais'
   @combo1_uf = 'UF2'
   element :campo_municipio, '#Cidade2'
   element :campo_municipio_select, 'div[tabindex*="-1"]'
   element :campo1_email, '#Email'
   element :campo_telefone_um,'#telefone1'

   #Dados complementares

   element :campo_telefone_dois,'#Telefone2'
   element :radio_pessoa_cnpj, '#juridica'
   element :radio_pessoa_cpf, '#fisica'
   element :campo_cpf, '#cpf'
   element :campo_cnpj, '#cnpj' 
   element :campo_inscricao_produtor, '#CPR'
   #element :campo_codigoERP, '#codigoERP'
   
   #dados correspondência
   
   element :campo_cep, '#Cep'
   element :campo_endereco, '#Endereco'
   element :campo_bairro, '#Bairro'
   @combo2_pais = 'paisCobranca'
   @combo2_uf = 'UF'
   element :campo_municipio2, '#Cidade'
   element :contato_cobranca, '#ContatoCobranca'
   element :telefone_cobranca, '#telefone2'
   element :email_cobranca, '#EmailCobranca'
   element :observacoes, '#ObservacoesCobranca'
   
   #configurações

   element :contagem_individual,'#ContagemIndividualAnimais'
   element :dura_periodo_chuv_combo_de, '#PeriodoChuvosoInicio'
   #element :dura_periodo_chuv_select_de,
   element :dura_periodo_chuv_combo_ate,'PeriodoChuvosoFim'
   #element :dura_periodo_chuv_select_ate, 
   #element :dura_periodo_sec_combo_de,
   #element :dura_periodo_sec_select_de,
   #element :dura_periodo_sec_combo_ate,
   #element :dura_periodo_sec_select_ate,

#Campos para cálculo de venda

    element :campo1,'#CamposPersonalizadosVenda_0__NomeCampo'
    element :select1_nega, '#negativo0'
    element :select1_hab, '#habilitado0'
    element :campo2,'#CamposPersonalizadosVenda_1__NomeCampo'
    element :select2_nega,'#negativo1'
    element :select2_hab,'#habilitado1'
    element :campo3, '#CamposPersonalizadosVenda_2__NomeCampo'
    element :select3_nega, '#negativo2'
    element :select3_hab, '#habilitado2'
    element :campo4, '#CamposPersonalizadosVenda_3__NomeCampo'
    element :select4_nega, '#negativo3'
    element :select4_hab, '#habilitado3'
    
    

   def preencherCampos(valor)
         
            @valor = valor
            campo_nome.set 'Automacao_Pessoa_Física'
            campo_proprietario.set 'Teste_Automacao_proprietário'
            #usu_resposavel.set "Teste Automação - teste"
            sleep 2
            #usu_resposavel_select.click
            area_Total.set '3000'
    
            #selecionando o país   
            def select_by_text(value)
            pais = find('select[id$=pais]')
            pais.click
            pais.find('option', text: value).click
            end
            
            select_by_text('Brasil')


            #Selecionando o estado 
            def select_by_text(value)
            uf = find('select[id$=UF2]')
            uf.click
            uf.find('option', text: value).click
            end
                
                select_by_text('MG')

                #sleep 3
                #wait_for_campo_municipio
             
            #DADOS COMPLEMENTARES
            campo_telefone_dois.set '3188888-8889' 
            campo_telefone_um.set '3188888-8888'
            campo1_email.set 'automacao@teste.com' 


            campo_municipio.set 'Belo Horizonte'
                sleep 3
                #wait_for_campo_municipio_select
                campo_municipio_select.click
                 sleep 3                         
            # radio_pessoa_cpf.click
            # campo_cpf.set @valor
            # campo_inscricao_produtor.set '55555555555555555555'
            
            #Não descomentar
            #campo_codigoERP.set '123'
            
            
            
            #DADOS PARA COBRANÇA E CORRESPONDÊNCIA
            # campo_cep.set '30230320'
            
            
            #Não descomentar
            #campo_endereco.set '#Endereco'
            #campo_bairro.set '#Bairro'
            # @combo2_pais = 'paisCobranca'
            # @combo2_uf = 'UF'
   
   
            # def select_by_text(value)
            #     uf2 = find('select[id$=UF]')
            #     uf2.click
            #     uf2.find('option', text: value).click
            # end
                    
            #     select_by_text('MG')
   
                
            #Não descomentar  
            #campo_municipio2.set '#Cidade'
            
            
            # contato_cobranca.set 'Teste Automação - teste'
            # telefone_cobranca.set '3188888-8888'
            # email_cobranca.set 'automacao@teste.com'
            # observacoes.set 'Teste Automação AgroHub, Cadastro Fazenda - Pessoa Física'

     
            #CONFIGURAÇÕES

            # contagem_individual.click
    
             
            # def select_by_text(value)
            #     periodo = find('select[id$=PeriodoChuvosoInicio]')
            #     periodo.click
            #     periodo.find('option', text: value).click
            # end
        
            # select_by_text('Janeiro')
   
    
   
            # def select_by_text(value)
            #             periodo = find('select[id$=PeriodoChuvosoFim]')
            #             periodo.click
            #             periodo.find('option', text: value).click
            # end
                            
            #     select_by_text('Dezembro')
   
   
            #Campos para cálculo de venda

            # campo1.set 'campo_automação_01'
            # select1_nega.click
            # select1_hab.click
            # campo2.set'campo_automação_02'
            # select2_nega.click
            # select2_hab.click
            # campo3.set 'campo_automação_03'
            # select3_nega.click
            # select3_hab.click
            # campo4.set 'campo_automação_04'
            # select4_nega.click
            # select4_hab.click
                  
    end


  def salvar
    click_button('Salvar')
  end
  

      
end
    
#language:pt

@abrejanela @autenticadoUsu @pesquisarFazenda
Funcionalidade: Pesquisar fazenda 
  Efetuar a pesquisa da fazenda cadastrada 

  Contexto: Pesquisar fazenda cadastrada
     Dado que estou na tela de pesquisa de fazenda
  
  #@autenticadoUsu @pesquisarFazendaf
  Cenário: Pesquisar fazenda cadastrada de pessoa Física com sucesso

        Quando preencho o filtro com a fazenda pessoa física cadastrada "Automacao_Pessoa_Física"
        Então a fazenda pessoa física é recuparada na lista. 
  #@autenticadoUsu @pesquisarFazendaJ
  Cenário: Pesquisar fazenda cadastrada de pessoa Jurídica com sucesso
   
        Quando preencho o filtro com a fazenda pessoa jurídica cadastrada "Automacao_Pessoa_Jurídica"
        Então a fazenda pessoa Jurídica é recuparada na lista. 
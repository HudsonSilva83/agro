#language:pt


@abrejanela @autenticadoUsu @removerFazenda
Funcionalidade: Remover Fazenda
    Para efetuar a exclusão de um registro Fazenda a ação de exclusão deverá ser acionada e confirmada. 

  
   Contexto: Remover Fazenda 
     Dado que estou na tela para pesquisar a fazenda 
    #@abrejanela @autenticado @removerFazendaf
    Cenário: Remover Fazenda Fisica
        Quando pesquiso a fazenda fisica "Automacao_Pessoa_Física"
        E aciono o comando de exclusão 
        Então a fazenda é excluida com sucesso

     Cenário: Remover Fazenda Jurídica
        Quando pesquiso a fazenda Juridica "Automacao_Pessoa_Jurídica"
        E aciono o comando de exclusão 
        Então a fazenda é excluida com sucesso
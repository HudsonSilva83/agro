#language: pt

@abrejanela @autenticadoUsu @cadastrarFazenda
Funcionalidade: Cadastro de Fazenda
  Efetuar cadastro de fazendas para o meu gerenciamento

  
  Contexto: Cadastro de fazenda
    Dado que estou no formulário de cadastro de fazenda
   
    #@autenticadoUsu @cadastroFazendaFisica
    Cenário: Cadastro de fazenda pessoa física com sucesso

        Quando Preencho todos os campos para pessoa física "154.070.820-98"
        Então aciono o comando para Cadastro da pessoa Fisica
        E o cadastro de fazenda de pessoa física é efetuado com sucesso
    #@autenticado @cadastroFazendaJuridica
    Cenário: Cadastro de fazenda pessoa jurídica com sucesso

        Quando Preencho todos os campos para pessoa jurídica "19.049.434/0001-04"
        Então aciono o comando para Cadastro da pessoa Jurídica 
        E o cadastro de fazenda pessoa juridica é efetuado com sucesso

    
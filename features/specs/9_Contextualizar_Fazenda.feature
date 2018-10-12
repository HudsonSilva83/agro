#language: pt

@autenticadoUsu @contextualizarFazenda
Funcionalidade: Contextualizando fazenda cadastrada
    Uma vez que a fazenda já esteja cadastrada na base
    Será necessário selecionar (contextualizar) a fazenda e ser encaminhada para o dashboard.
    #@autenticadoUsu @contextualizarFazendaf
    Cenário: Retonar ao dashboard com a fazenda pessoa física selecionada

        Dado que estou logado no sistema e contextualizo a fazenda pessoa Fisica
        Então o sistema direciona para a tela do dashboard com a fazenda selecionada
    #@autenticadoUsu @contextualizarFazendaJ
    Cenário: Retonar ao dashboard com a fazenda pessoa Jurídica selecionada

        Dado logado no sistema contextualizo a fazenda pessoa Jurídica 
        Então o sistema direciona para a tela do dashboard com a fazenda selecionada
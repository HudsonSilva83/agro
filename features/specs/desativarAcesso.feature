#language:pt

@abrejanela @desativar
Funcionalidade: Desativar usuário do AgroHub
       
    Cenário: Desativar Usuário

        Dado que o gestor suporte é autenticado no sistema com os seguintes dados:
        |Email|hu.psilva@gmail.com|
        |Senha|hpereira6611       |

        Quando pesquiso pelo usuário cadastrado
        E aciono o comando desativar o usuário
        Então o usuário é desativado e apresenta a mensagem de "Sucesso!" 
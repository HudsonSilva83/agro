#language: pt

Funcionalidade: Autorizar acesso ao portal AgroHUB
Para que o usuário tenha acesso ao portal AgroHub
é necessário a autorização do gestor que tem o cargo de suporte

@abrejanela @autorizar
Cenário: Autorizar acesso ao portal AgroHUB
    
    Dado que o gestor suporte autenticado no sistema com os seguintes dados:
    
    |Email|hu.psilva@gmail.com|
    |Senha|hpereira6611       |

    Quando efetuado a pesquisa do usuário: "agrohubautomacao@gmail.com"
    E acionado o comando para autoriza o acesso ao portal AgroHub
    Então o sistema apresenta mensagem de sucesso "Sucesso! O usuário Teste Automação - Teste foi atualizado com sucesso"

    #Sucesso! O usuário "Teste Automação - Teste" foi atualizado com sucesso.
    #Sucesso! O usuário <variável_usuário> foi atualizado com sucesso.
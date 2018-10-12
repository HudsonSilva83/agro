#language: pt

Funcionalidade: Aceitar o termos de Uso
    Para que eu possa ter acesso ao sistema AgroHUB
    É necesário que o usuário faça o aceite do termo de Uso 

@autenticadoUsu @aceiteTermo
Cenário: Aceitar o termo de Uso

    Dado que eu estou na página para aceite do termo de uso
    Quando faço o aceite do termo
    Então o sistema efetua o aceite com sucesso
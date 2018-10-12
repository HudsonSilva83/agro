# automacao-AgroHUB


# Observação:
O site prism, é compativel com o capybara somente nas versões abaixo de 3.1

Então será necessário colocar a versão do capybara da seguinte maneira pelo terminal:
* gem install site_prism -v 3.0)
E para desinstalar a versão atual do Capybara, será necessário o comando:
* gem uninstall capybara -v 3.1.0  (no caso a versão que estiver em uso)

<!-- Funcionalidades a serem automatizadas:

Painel de Gestão e Administração das Fazendas

1 Cadastro inicial (Feito)

Cadastro na plataforma pelo form http://homologacao.painel.agrohub.com.br/Conta/Cadastrar
(manual) Ativar pelo email recebido
Voltar ao http://homologacao.painel.agrohub.com.br e efetuar o login, aceitar termo de uso

2 Login com sucesso (Feito)

Voltar ao http://homologacao.painel.agrohub.com.br e efetuar o login
[futuro] validações extras de email invalido, ja cadastrado.... fluxos alternativos

3 Criar o cadastro da Fazenda (Feito)

Uma vez logado com sucesso (teste 2)
utilizar o menu lateral para acessar o cadastro de fazenda
Cadastros > Fazendas
Acesso ao link http://homologacao.painel.agrohub.com.br/Fazenda/Pesquisar
*CRUDs sempre caem na tela de pesquisa*, exemplo "Pesquisa de Fazendas"
[futuro] fluxos alternativos de pesquisa
acionamento do [novo] cadastro e preenchimento do form completo
o sistema está orientado a fazendas no Brasil somente, por enquanto
cadastrado com sucesso, volta a tela de pesquisa, listando a fazenda cadastrada
[futuro] terminar os testes do CRUD de fazendas
a fazenda aparecerá no contexto para seleção
acionado, volta ao dashboard


^ faltando terminar a lógica de contextualização da fazenda corretamente ^

______________________________________________
4 Criar primeira area da fazenda

uma vez cadastrada e contextualizada a fazenda (teste 3)
utilizar o menu lateral para acessar o cadastro de areas
Cadastros > Areas
acesso a http://homologacao.painel.agrohub.com.br/Area/Pesquisar
Caira na tela de pesquisa de áreas
BREADCRUMB: VOCÊ ESTÁ AQUI: Home Áreas Pesquisa de Áreas
acionamento do [novo] cadastro e preenchimento do form completo
(desafio) desenhar 3 pontos no mapa para garantir que a área será cadastrada
[futuro] terminar os testes do CRUD de fazendas
cadastrado com sucesso, volta a tela de pesquisa, listando a area cadastrada

5 Criar primeiro lote de animais

uma vez contextualizada a fazenda (teste 3)
utilizar o menu lateral para acessar o cadastro de lotes
Cadastros > Animais - Lote
acesso a http://homologacao.painel.agrohub.com.br/LoteAnimais/Pesquisar
Caira na tela de pesquisa de lotes
BREADCRUMB
acionamento do [novo] cadastro e preenchimento do form completo
(desafio) selecionar a area cadastrada em (teste 4)
[futuro] terminar os testes do CRUD de fazendas
(regras de negocio)
dependendo da categoria selecionada, a idade tem que ser compativel com os meses parametrizados da categoria
origem nascimento, valida a data de entrada = tem que ser iguais
cadastrado com sucesso, volta a tela de pesquisa, listando a area cadastrada

6 Verificar cadastros 4 e 5 na tela de Manejo

uma vez contextualizada a fazenda (teste 3)
utilizar o menu lateral para acessar o manejo
Manejo
acesso ao mapa da fazenda
total de animais igual ao somatorio dos lotes cadastrados
acionamento do [novo] cadastro e preenchimento do form completo
(desafio) selecionar a area cadastrada em (teste 4)
[futuro] terminar os testes do CRUD de fazendas
(regras de negocio)
dependendo da categoria selecionada, a idade tem que ser compativel com os meses parametrizados da categoria
origem nascimento, valida a data de entrada = tem que ser iguais
cadastrado com sucesso, volta a tela de pesquisa, listando a area cadastrada -->

            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse o produto

            Cenário: Acessar produto
            Quando eu acessar o produto
            Então deve exibir seleções de cores, tamanhos e quantidade
            E permitir apenas 10 produtos por venda
            E quando eu clicar no botão "limpar", deve voltar ao estado original

            Esquema do Cenário: Configurar produto
            Quando eu acessar o <produto>
            E selecionar a quantidade <quantidade_maxima>
            Então quando eu clicar no botão <botao_limpar>, deve voltar ao estado original

            Exemplos:
            | produto  | quantidade_maxima | botao_limpar |
            | camiseta | 1                 | limpar       |
            | camiseta | 2                 | limpar       |
            | camiseta | 3                 | limpar       |
            | camiseta | 4                 | limpar       |
            | camiseta | 5                 | limpar       |
            | camiseta | 6                 | limpar       |
            | camiseta | 7                 | limpar       |
            | camiseta | 8                 | limpar       |
            | camiseta | 9                 | limpar       |
            | camiseta | 10                | limpar       |

Funcionalidade: Login - Autenticação
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse login em EBAC-SHOP

Cenário: Login Válido
Quando eu inserir dados válidos
Então devo ser direcionado para a tela de checkout
E conseguir visualizar meus pedidos

Cenário: Login Inválido
Quando eu inserir dados inválidos
Então não devo concluir o login
E deve exibir um alerta de "Usuário ou senha inválidos"

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer ou concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu acesse cadastro em EBAC-SHOP

Cenário: Cadastro Válido
Quando eu inserir meus dados corretamente
E preencher "Nome", "Sobrenome", "País", "Endereço", "Cidade" e "CEP"
Então meu cadastro deve ser concluído com sucesso
E deve ser possível finalizar a compra

Cenário: Cadastro com formato de e-mail inválido
Quando eu inserir um e-mail com formato inválido
E tentar cadastrar
Então deve exibir uma "mensagem de erro"

Cenário: Cadastro com campos vazios
Quando não inserir dados nos campos obrigatórios
E tentar concluir o cadastro
Então deve exibir uma "mensagem de alerta"

 #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse o produto

            Cenário: Acessar produto
            Quando selecionar cor, tamanho e quantidade até 10 itens
            Então deve exibir seleções de cores, tamanhos e quantidade
            E o produto deve ser inserido no carrinho
            Quando houver um produto selecionado e o usuário clicar no botão "limpar"
            Então todas as seleções devem voltar ao estado original

            Esquema do Cenário: Configurar produto
            Quando acessar <produto>
            E selecionar <cor>, <tamanho> e <quantidade> até <10 itens>
            Então ao usar o <botao_limpar>, deve voltar ao estado original

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


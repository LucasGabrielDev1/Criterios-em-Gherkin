    #language: pt

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
#language: pt

Funcionalidade: Login - Autenticação
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que acesse login em EBAC-SHOP

Cenário: Login Válido
Quando inserir dados válidos
Então devo ser direcionado para a tela de checkout
E conseguir visualizar meus pedidos

Cenário: Login Inválido
Quando inserir dados inválidos
Então não devo concluir o login
E deve exibir um alerta de "Usuário ou senha inválidos"
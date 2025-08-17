INSERT INTO fabricantes (nome, cnpj, telefone) VALUES 
('Nestlé', '60.409.075/0001-52', '(11) 4004-2000'),
('P&G', '75.746.342/0001-92', '(11) 4003-4000'),
('Unilever', '61.068.347/0001-04', '(11) 4005-6000');

INSERT INTO categorias (nome, descricao) VALUES 
('Alimentos', 'Produtos alimentícios em geral'),
('Limpeza', 'Produtos de limpeza doméstica'),
('Higiene Pessoal', 'Produtos para higiene e cuidado pessoal');

INSERT INTO produtos (nome, id_fabricante, id_categoria, codigo_barras, preco_custo, preco_venda) VALUES
('Leite Ninho 400g', 1, 1, '7891000142004', 15.00, 22.90),
('Sabão em Pó OMO 1kg', 2, 2, '7891150037005', 8.50, 12.90),
('Shampoo Seda 350ml', 3, 3, '7891058011003', 6.80, 10.50),
('Achocolatado Nescau 400g', 1, 1, '7891000312101', 7.20, 9.90);

INSERT INTO clientes (nome_fantasia, razao_social, cnpj, telefone) VALUES
('Supermercado Bom Preço', 'Bom Preço Ltda', '12.345.678/0001-00', '(21) 2222-3333'),
('Mercado do Zé', 'José da Silva ME', '98.765.432/0001-11', '(21) 4444-5555');

INSERT INTO pedidos (id_cliente, status, valor_total, forma_pagamento) VALUES
(1, 'entregue', 135.70, 'boleto'),
(2, 'processando', 89.50, 'cartão');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 3, 22.90),
(1, 2, 5, 12.90),
(2, 3, 4, 10.50),
(2, 4, 5, 9.90);

INSERT INTO estoque (id_produto, tipo, quantidade, observacao) VALUES
(1, 'entrada', 100, 'Compra do fornecedor'),
(2, 'entrada', 150, 'Compra do fornecedor'),
(3, 'entrada', 200, 'Compra do fornecedor'),
(4, 'entrada', 120, 'Compra do fornecedor'),
(1, 'saida', 3, 'Pedido 001'),
(2, 'saida', 5, 'Pedido 001'),
(3, 'saida', 4, 'Pedido 002'),
(4, 'saida', 5, 'Pedido 002');
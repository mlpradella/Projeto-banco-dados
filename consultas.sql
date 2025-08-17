SELECT p.nome, p.estoque_minimo, 
       (SELECT SUM(IF(tipo='entrada', quantidade, -quantidade)) 
        FROM estoque WHERE id_produto = p.id_produto) AS estoque_atual
FROM produtos p
HAVING estoque_atual < p.estoque_minimo;

SELECT c.nome_fantasia, SUM(p.valor_total) AS total_compras
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
WHERE p.status = 'entregue'
GROUP BY c.id_cliente
ORDER BY total_compras DESC;

SELECT pr.nome, SUM(ip.quantidade) AS total_vendido
FROM itens_pedido ip
JOIN produtos pr ON ip.id_produto = pr.id_produto
JOIN pedidos pe ON ip.id_pedido = pe.id_pedido
WHERE pe.status = 'entregue'
GROUP BY pr.id_produto
ORDER BY total_vendido DESC
LIMIT 5;
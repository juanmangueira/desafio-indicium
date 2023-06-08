SELECT
    pd.produto_id,
    pd.pedido_id,
    p.cliente_id,
    EXTRACT(MONTH FROM p.pedido_data) AS mes,
    EXTRACT(YEAR FROM p.pedido_data) AS ano,
    SUM(pd.quantidade) AS quantidade_total_produto,
    ROUND(SUM(pd.unitario_preco * pd.desconto * pd.quantidade),2) AS valor_total_produto,
    COUNT(p.pedido_id) AS quantidade_pedidos,
FROM {{ref('stg_pedidos_detalhados')}} AS pd
INNER JOIN
    {{ref('stg_pedidos')}} AS p
ON
    pd.pedido_id = p.pedido_id
GROUP BY produto_id, mes, ano, pedido_id, cliente_id
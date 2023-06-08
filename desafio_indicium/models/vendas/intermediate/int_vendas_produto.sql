SELECT
    pd.produto_id,
    SUM(pd.quantidade) AS quantidade_total_produto,
    ROUND(SUM(pd.unitario_preco * pd.desconto * pd.quantidade),2) AS valor_total_produto
FROM {{ref('stg_pedidos_detalhados')}} AS pd
GROUP BY produto_id
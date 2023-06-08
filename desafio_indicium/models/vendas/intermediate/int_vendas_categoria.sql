SELECT
    pr.categoria_id,
    vp.mes,
    vp.ano,
    ROUND(SUM(vp.valor_total_produto),2) AS valor_total_categoria,
    SUM(vp.quantidade_total_produto) AS quantidade_total_categoria,
    SUM(vp.quantidade_pedidos) AS quantidade_pedidos
FROM {{ref('int_vendas_produto')}} AS vp
INNER JOIN
    {{ref('stg_produtos')}} AS pr
ON
    vp.produto_id=pr.produto_id
GROUP BY
    pr.categoria_id,
    vp.mes,
    vp.ano
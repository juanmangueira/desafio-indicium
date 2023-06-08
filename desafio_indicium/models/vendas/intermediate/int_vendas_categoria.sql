SELECT
    pr.categoria_id,
    ROUND(SUM(fp.valor_total_produto),2) AS valor_total_categoria,
    SUM(fp.quantidade_total_produto) AS quantidade_total_categoria
FROM {{ref('int_vendas_produto')}} AS fp
INNER JOIN
    {{ref('stg_produtos')}} AS pr
ON
    fp.produto_id=pr.produto_id
GROUP BY
    pr.categoria_id
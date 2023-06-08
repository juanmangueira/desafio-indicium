SELECT
    ca.categoria_id,
    ca.categoria_nome,
    (fc.valor_total_categoria/fc.quantidade_total_categoria) AS ticket_medio
FROM {{ref('stg_categorias')}} AS ca
INNER JOIN
{{ref('int_vendas_categoria')}} AS fc
ON
ca.categoria_id=fc.categoria_id
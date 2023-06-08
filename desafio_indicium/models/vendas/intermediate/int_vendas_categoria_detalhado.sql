SELECT
    vc.categoria_id,
    vc.pedido_id,
    vc.cliente_id,
    vc.produto_id,
    ca.categoria_nome,
    vc.mes,
    vc.ano,
    vc.valor_total_categoria,
    vc.quantidade_total_categoria,
    vc.quantidade_pedidos
FROM {{ref('int_vendas_categoria')}} AS vc
INNER JOIN
{{ref('stg_categorias')}} AS ca
ON
    vc.categoria_id=ca.categoria_id

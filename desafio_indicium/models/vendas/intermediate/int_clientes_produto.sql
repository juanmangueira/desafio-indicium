SELECT
    vc.cliente_id,
    vc.categoria_id,
    vc.categoria_nome,
    c.empresa_nome,
    c.contato_nome,
    c.contato_titulo,
    vc.pedido_id,
    vc.produto_id,
    vc.ano,
    vc.mes
FROM {{ref('int_vendas_categoria_detalhado')}} AS vc
INNER JOIN
{{ref('stg_clientes')}} AS c
ON
    vc.cliente_id=c.cliente_id
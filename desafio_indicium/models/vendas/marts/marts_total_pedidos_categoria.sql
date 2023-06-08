SELECT
    ano,
    mes,
    categoria_id,
    categoria_nome,
    SUM(quantidade_pedidos) AS quantidade_pedidos
FROM {{ref('int_vendas_categoria_detalhado')}}
GROUP BY
    ano,
    mes,
    categoria_id,
    categoria_nome
ORDER BY
    ano,
    mes,
    quantidade_pedidos DESC
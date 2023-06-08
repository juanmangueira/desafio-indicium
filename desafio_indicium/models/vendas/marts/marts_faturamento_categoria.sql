SELECT
    ano,
    mes,
    categoria_id,
    categoria_nome,
    SUM(valor_total_categoria) AS valor_total_categoria
FROM {{ref('int_vendas_categoria_detalhado')}}
GROUP BY
    ano,
    mes,
    categoria_id,
    categoria_nome
ORDER BY
    ano,
    mes,
    valor_total_categoria DESC
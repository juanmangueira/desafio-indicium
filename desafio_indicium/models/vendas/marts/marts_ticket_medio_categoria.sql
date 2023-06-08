SELECT
    categoria_id,
    categoria_nome,
    (SUM(valor_total_categoria)/SUM(quantidade_total_categoria)) AS ticket_medio
FROM {{ref('int_vendas_categoria_detalhado')}}
GROUP BY
    categoria_id,
    categoria_nome
ORDER BY
    ticket_medio DESC

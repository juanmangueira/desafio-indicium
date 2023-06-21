SELECT
    ci.categoria_id,
    ci.categoria_nome,
    ci.ano,
    SUM(ci.quantidade_clientes_inativos)/ LAG(SUM(ca.quantidade_clientes_ativos)) OVER (ORDER BY ca.ano, ca.categoria_id) AS churn,
FROM
    {{ref('int_clientes_inativos_ano')}} AS ci
INNER JOIN
    {{ref('int_clientes_ativos_ano')}} AS ca
ON
    ci.categoria_id=ca.categoria_id
GROUP BY
    ci.categoria_id,
    ci.categoria_nome,
    ci.ano,
    ca.ano,
    ca.categoria_id
ORDER BY
    ci.ano,
    ci.categoria_id
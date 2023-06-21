{% set anos = [1997,1998] %}

{% for key in anos %}
        {% if loop.last %}
            (SELECT
                categoria_id,
                categoria_nome,
                (ano + 1) AS ano,
                COUNT(cliente_id) AS quantidade_clientes_inativos
            FROM
                {{ref('int_clientes_produto')}}
            WHERE
                ano = ({{key}} - 1)
                AND cliente_id NOT IN ( SELECT cliente_id 
                                        FROM {{ref('int_clientes_produto')}} 
                                        WHERE ano = {{key}})
            GROUP BY
                categoria_id,
                categoria_nome,
                ano
            ORDER BY
                ano,
                categoria_id)
        {% else %}
            (SELECT
                categoria_id,
                categoria_nome,
                (ano + 1) AS ano,
                COUNT(cliente_id) AS quantidade_clientes_inativos
            FROM
                {{ref('int_clientes_produto')}}
            WHERE
                ano = ({{key}} - 1)
                AND cliente_id NOT IN ( SELECT cliente_id 
                                        FROM {{ref('int_clientes_produto')}} 
                                        WHERE ano = {{key}})
            GROUP BY
                categoria_id,
                categoria_nome,
                ano
            ORDER BY
                ano,
                categoria_id)
            UNION ALL
        {% endif %}
    {% endfor %}
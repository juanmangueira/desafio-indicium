SELECT DISTINCT
    CAST(order_id AS string) AS pedido_id,
    CAST(customer_id AS string) AS cliente_id,
    CAST(employee_id AS string) AS funcionario_id,
    order_date AS pedido_data,
    required_date AS prazo_data,
    shipped_date AS envio_data,
    CAST(ship_via AS string) AS enviado_via,
    freight AS frete,
    ship_name AS transporte_nome,
    ship_address AS transporte_endereco,
    ship_city AS transporte_cidade,
    ship_region AS transporte_regiao,
    ship_postal_code AS transporte_postal_codigo,
    ship_country AS transporte_pais  
FROM `analytics-engineer-juan.northwind_seed_erp.orders`
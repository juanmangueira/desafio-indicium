SELECT DISTINCT
    CAST(order_id AS string) AS pedido_id,
    CAST(product_id AS string) AS produto_id,
    unit_price AS unitario_preco,
    quantity AS quantidade,
    discount AS desconto
FROM `analytics-engineer-juan.northwind_seed_erp.order_details`
SELECT DISTINCT
    CAST(product_id AS string) AS produto_id,
    product_name AS produto_nome,
    CAST(supplier_id AS string) AS fornecedor_id,
    CAST(category_id AS string) AS categoria_id,
    quantity_per_unit AS quantidade_por_unidade,
    unit_price AS unitario_preco,
    units_in_stock AS unidades_em_estoque,
    units_on_order AS unidades_em_pedido,
    reorder_level AS reabastecimento_nivel,
    IF(discontinued=1, 'sim', 'nao') AS descontinuado
FROM `analytics-engineer-juan.northwind_seed_erp.products`
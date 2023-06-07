SELECT DISTINCT
    product_id AS produto_id,
    product_name AS produto_nome,
    supplier_id AS fornecedor_id,
    category_id AS categoria_id,
    quantity_per_unit AS quantidade_por_unidade,
    unit_price AS unitario_preco,
    units_in_stock AS unidades_em_estoque,
    units_on_order AS unidades_em_pedido,
    reorder_level AS reabastecimento_nivel,
    discontinued AS descontinuado
FROM `analytics-engineer-juan.northwind_seed_erp.products`
SELECT DISTINCT
    CAST(category_id AS string) AS categoria_id,
    category_name AS categoria_nome,
    description AS descricao
FROM `analytics-engineer-juan.northwind_seed_erp.categories`
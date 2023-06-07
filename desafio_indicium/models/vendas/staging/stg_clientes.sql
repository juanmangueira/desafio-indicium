SELECT DISTINCT
    customer_id AS cliente_id,
    company_name AS empresa_nome,
    contact_name AS contato_nome,
    contact_title AS contato_titulo,
    address AS endereco,
    city AS cidade,
    region AS regiao,
    postal_code AS postal_codigo,
    country AS pais,
    phone AS telefone,
    fax  AS fax  
FROM `analytics-engineer-juan.northwind_seed_erp.customers`
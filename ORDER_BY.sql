
-- POSTGRES
SELECT * FROM clientes
ORDER BY sobrenome;


-- POSTGRES
SELECT *FROM clientes
ORDER BY nm_cliente ASC, sobrenome DESC;


-- POSTGRES
SELECT produtos.nm_produto, tipos_produtos.ds_tipo_produto
FROM produtos, tipos_produtos
WHERE produtos.id_tipo_produto = tipos_produtos.id_tipo_produto
ORDER BY produtos.nm_produto;


-- MySQL
SELECT food
FROM favorite_food
WHERE person_id = 1
ORDER BY food;
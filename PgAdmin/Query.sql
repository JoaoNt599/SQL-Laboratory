SELECT * FROM clientes;


SELECT id_cliente, nm_cliente, sobrenome, dt_nascimento, telefone
FROM clientes;


SELECT * FROM clientes WHERE id_cliente = 1;


SELECT nm_cliente || ' ' || sobrenome 
AS "Nome completo dos Clientes"
FROM clientes;


SELECT id_cliente, nm_cliente, sobrenome, dt_nascimento
FROM clientes
WHERE dt_nascimento IS NULL;


SELECT id_cliente, nm_cliente, sobrenome, telefone
FROM clientes
WHERE telefone IS NULL;


SELECT id_cliente FROM compras;


SELECT DISTINCT id_cliente FROM compras;


SELECT * FROM clientes
WHERE id_cliente <> 2;


SELECT id_produto, nm_produto 
FROM produtos
WHERE id_produto > 2;


SELECT * FROM clientes
WHERE id_cliente > ANY (
    SELECT id_cliente
    FROM clientes
    WHERE id_cliente = 2 OR id_cliente = 3 OR id_cliente = 4
);


SELECT * FROM clientes
WHERE id_cliente > ALL (
    SELECT id_cliente 
    FROM clientes
    WHERE id_cliente = 2 OR id_cliente = 3 OR id_cliente = 4
);


SELECT * FROM clientes
WHERE nm_cliente LIKE '_o%';


SELECT * FROM promocao
WHERE nome LIKE '%\\%%';


SELECT * FROM clientes
WHERE id_cliente IN (1, 2, 5);


SELECT * FROM clientes
WHERE id_cliente NOT IN (2, 3, 5, NULL);


SELECT * FROM clientes
WHERE id_cliente BETWEEN 1 AND 3;


SELECT * FROM clientes
WHERE dt_nascimento > '01/01/1970' AND id_cliente > 3;


SELECT * FROM clientes
ORDER BY sobrenome;


SELECT *FROM clientes
ORDER BY nm_cliente ASC, sobrenome DESC;


SELECT produtos.nm_produto, tipos_produtos.ds_tipo_produto
FROM produtos, tipos_produtos
WHERE produtos.id_tipo_produto = tipos_produtos.id_tipo_produto
ORDER BY produtos.nm_produto;


SELECT p.nm_produto, tp.ds_tipo_produto
FROM produtos p, tipos_produtos tp
WHERE p.id_tipo_produto = tp.id_tipo_produto
ORDER BY p.nm_produto;


SELECT c.nm_cliente, c.sobrenome, p.nm_produto 
AS PRODUTO, tp.ds_tipo_produto AS TIPO
FROM clientes c, compras co, produtos p, tipos_produtos tp
WHERE c.id_cliente = co.id_cliente
AND p.id_produto = co.id_produto
AND p.id_tipo_produto = tp.id_tipo_produto
ORDER BY p.nm_produto;


SELECT f.nm_funcionario, f.sobrenome_funcionario,
f.cargo, f.salario, gs.id_salario
FROM funcionarios f, grades_salarios gs
WHERE f.salario BETWEEN gs.salario_minimo AND gs.salario_maximo
ORDER BY gs.id_salario;


SELECT p.nm_produto AS PRODUTO, tp.ds_tipo_produto AS TIPO
FROM produtos p
FULL OUTER JOIN tipos_produtos tp
USING (id_tipo_produto) 
ORDER BY p.nm_produto;


SELECT tp.id_tipo_produto, tp.ds_tipo_produto,
p.nm_produto, p.ds_produto, p.preco
FROM tipos_produtos tp
CROSS JOIN produtos p;


SELECT id_produto, INITCAP(ds_produto)
FROM produtos
ORDER BY id_produto;
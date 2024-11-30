
-- MySQL
SELECT * FROM person;


-- MySQL
SELECT * FROM person
WHERE person_id = 1;


-- POSTGRES
SELECT id_cliente, nm_cliente, sobrenome, dt_nascimento, telefone
FROM clientes;


-- POSTGRES
SELECT nm_cliente || ' ' || sobrenome 
AS "Nome completo dos Clientes"
FROM clientes;


-- POSTGRES
SELECT * FROM clientes
WHERE id_cliente > ANY (
    SELECT id_cliente
    FROM clientes
    WHERE id_cliente = 2 OR id_cliente = 3 OR id_cliente = 4
);
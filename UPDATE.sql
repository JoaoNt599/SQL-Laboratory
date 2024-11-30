
-- POSTGRES
UPDATE CLIENTES
    SET SOBRENOME = 'Vieira'
WHERE ID_CLIENTE = 1;


-- POSTGRES
UPDATE CLIENTES
    SET SOBRENOME = 'Costa'
WHERE ID_CLIENTE = 2;


-- POSTGRES 
UPDATE PRODUTOS 
    SET Nome = 'DVD'
WHERE ID_PRODUTO = 25;


-- MySQL
UPDATE person
SET street = '1225 Tremont St.',
	city = 'Boston',
    state = 'MA',
    country = 'USA',
    postal_code = '02138'
WHERE person_id = 1;
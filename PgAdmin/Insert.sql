-- CLIENTES
INSERT INTO CLIENTES (ID_CLIENTE, NM_CLIENTE, SOBRENOME, DT_NASCIMENTO,TELEFONE, FG_ATIVO)
VALUES (1, 'João', 'Vieira', '25-09-1997', '800-555-1211', 1);

INSERT INTO CLIENTES (ID_CLIENTE, NM_CLIENTE, SOBRENOME, DT_NASCIMENTO,TELEFONE, FG_ATIVO)
VALUES (2, 'Silvia', 'Mendes', '05-02-1968', '800-555-1212', 1);

INSERT INTO CLIENTES (ID_CLIENTE, NM_CLIENTE, SOBRENOME, DT_NASCIMENTO,TELEFONE, FG_ATIVO)
VALUES (5, 'Dolores', 'Silva', '20-05-1970', NULL, 1);

INSERT INTO CLIENTES (ID_CLIENTE, NM_CLIENTE, SOBRENOME, DT_NASCIMENTO,TELEFONE, FG_ATIVO)
VALUES (6, 'Frederico', 'Vaz', '01-01-1970', '800-555-1215', 1);


-- TIPOS PRODUTOS
INSERT INTO TIPOS_PRODUTOS (ID_TIPO_PRODUTO, DS_TIPO_PRODUTO, FG_ATIVO)
VALUES (1, 'Livro', 1);

INSERT INTO TIPOS_PRODUTOS (ID_TIPO_PRODUTO, DS_TIPO_PRODUTO, FG_ATIVO)
VALUES (5, 'Apostila', 1);

INSERT INTO TIPOS_PRODUTOS (ID_TIPO_PRODUTO, DS_TIPO_PRODUTO, FG_ATIVO)
VALUES (3, 'Caderno', 1);
INSERT INTO TIPOS_PRODUTOS (ID_TIPO_PRODUTO, DS_TIPO_PRODUTO, FG_ATIVO)
VALUES (4, 'Notebook', 1);


-- PRODUTOS
INSERT INTO PRODUTOS(ID_PRODUTO, ID_TIPO_PRODUTO, NM_PRODUTO, DS_PRODUTO, PRECO, FG_ATIVO)
VALUES (1, 1, 'Ciência Moderna', 'Uma descrição da ciência moderna', 19.95, 1);

INSERT INTO PRODUTOS(ID_PRODUTO, ID_TIPO_PRODUTO, NM_PRODUTO, DS_PRODUTO, PRECO, FG_ATIVO)
VALUES (2, 1, 'Química', 'Introdução à Química', 30, 1);

INSERT INTO PRODUTOS(ID_PRODUTO, ID_TIPO_PRODUTO, NM_PRODUTO, DS_PRODUTO, PRECO, FG_ATIVO)
VALUES (3, 2, 'Supernova', 'Uma estrela explosiva', 25.99, 1);


-- COMPRAS
INSERT INTO COMPRAS (ID_CLIENTE, ID_PRODUTO, QUANTIDADE, FG_ATIVO)
VALUES (1, 1, 1, 1);

INSERT INTO COMPRAS (ID_CLIENTE, ID_PRODUTO, QUANTIDADE, FG_ATIVO)
VALUES (2, 1, 3, 1);


-- FUNCIONARIOS
INSERT INTO FUNCIONARIOS (ID_FUNCIONARIO, ID_GERENTE, NM_FUNCIONARIO, SOBRENOME_FUNCIONARIO, CARGO, SALARIO, FG_ATIVO)
VALUES (2, 1, 'Rubens', 'Cardoso', 'Gerente de Vendas', 600000, 1);

INSERT INTO FUNCIONARIOS (ID_FUNCIONARIO, ID_GERENTE, NM_FUNCIONARIO, SOBRENOME_FUNCIONARIO, CARGO, SALARIO, FG_ATIVO)
VALUES (4, 2, 'Susana', 'Coimbra', 'Vendedor', 500000,1 );


-- GRADES SALARIOS
INSERT INTO GRADES_SALARIOS (ID_SALARIO, SALARIO_MINIMO, SALARIO_MAXIMO, FG_ATIVO)
VALUES (1, 1, 25000, 1);

INSERT INTO GRADES_SALARIOS (ID_SALARIO, SALARIO_MINIMO, SALARIO_MAXIMO,
FG_ATIVO)
VALUES (2, 250001, 500000, 1);


-- PROMOCAO
INSERT INTO promocao(id_promocao, nome, duracao)
VALUES
(1, '10%', '9 dias'),
(2, '15%', '8 dias'),
(3, '20%', '7 dias'),
(4, '25%', '6 dias'),
(5, '30%', '5 dias'),
(6, '35%', '4 dias'),
(7, '40%', '3 dias'),
(8, '45%', '2 dias'),
(9, '50%', '1 dia');
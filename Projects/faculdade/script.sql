CREATE DATABASE "FACULDADE"
ENCODING 'WIN1252'
CONNECTION LIMIT -1;

CREATE TABLE CLIENTES (
    id_cliente      INTEGER,
    nm_cliente      VARCHAR(15) NOT NULL,
    sobrenome       VARCHAR(15) NOT NULL,
    dt_nascimento   TIMESTAMP,
    telefone        VARCHAR(12),
    fg_ativo        INTEGER,
    PRIMARY KEY (ID_CLIENTE)
);

CREATE TABLE TIPOS_PRODUTOS(
    id_tipo_produto INTEGER,
    ds_tipo_produto VARCHAR(10) NOT NULL,
    fg_ativo        INTEGER,
    PRIMARY KEY (ID_TIPO_PRODUTO)
);

CREATE TABLE PRODUTOS(
    id_produto      INTEGER     NOT NULL,
    id_tipo_produto INTEGER,
    nm_produto      VARCHAR(30) NOT NULL,
    ds_produto      VARCHAR(50),
    preco           NUMERIC(5,2),
    fg_ativo        INTEGER,
    PRIMARY KEY (ID_PRODUTO),
    FOREIGN KEY (ID_TIPO_PRODUTO) REFERENCES TIPOS_PRODUTOS (ID_TIPO_PRODUTO)
);

CREATE TABLE FUNCIONARIOS(
    id_funcionario INTEGER,
    id_gerente     INTEGER,
    nm_funcionario VARCHAR(10)        NOT NULL,
    sobrenome_funcionario VARCHAR(10) NOT NULL,
    cargo          VARCHAR(20),
    salario        NUMERIC(6,0),
    fg_ativo       INTEGER,
    PRIMARY KEY (ID_FUNCIONARIO)
);

CREATE TABLE COMPRAS(
    id_produto      INTEGER,
    id_cliente      INTEGER,
    quantidade      INTEGER,
    fg_ativo        INTEGER,
    FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTOS (ID_PRODUTO),
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE),
    PRIMARY KEY (ID_PRODUTO, ID_CLIENTE)
);

CREATE TABLE GRADES_SALARIOS(
    id_salario      INTEGER,
    salario_maximo  NUMERIC(6,0),
    salario_minimo  NUMERIC(6,0),
    fg_ativo        INTEGER,
    PRIMARY KEY (ID_SALARIO)
);

CREATE TABLE promocao(
    id_promocao     INTEGER,
    nome            VARCHAR NOT NULL,
    duracao         VARCHAR,
    PRIMARY KEY (id_promocao)
);

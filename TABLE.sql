
-- MySQL
CREATE TABLE person (
	person_id   SMALLINT UNSIGNED,
    fname       VARCHAR(20),
    lname       VARCHAR(20),
    gender ENUM('M', 'F'),
    birth_date  DATE,
    street      VARCHAR(30),
    city        VARCHAR(20),
    state       VARCHAR(20),
    country     VARCHAR(20),
    postal_code VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);


-- POSTGRES
CREATE TABLE TIPOS_PRODUTOS(
    id_tipo_produto INTEGER,
    ds_tipo_produto VARCHAR(10) NOT NULL,
    fg_ativo        INTEGER,
    PRIMARY KEY (ID_TIPO_PRODUTO)
);

-- POSTGRESS
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

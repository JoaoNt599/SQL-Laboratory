-- CREATE DATABASE IF NOT EXISTS bank;

-- CREATE USER 'lrngsql'@'localhost' IDENTIFIED BY 'joao';

-- GRANT ALL PRIVILEGES ON bank.* TO 'lrngsql'@'localhost';

-- FLUSH PRIVILEGES;

 -- SELECT NOW() FROM DUAL;

USE bank;


CREATE TABLE person (
	person_id SMALLINT UNSIGNED,
    fname VARCHAR(20),
    lname VARCHAR(20),
    gender ENUM('M', 'F'),
    birth_date DATE,
    street VARCHAR(30),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    postal_code VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);

DESC person;


CREATE TABLE favorite_food (
	person_id SMALLINT UNSIGNED,
    food VARCHAR(20),
    CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
    CONSTRAINT pk_fav_food_person_id FOREIGN KEY (person_id) REFERENCES person (person_id)
);

DESC favorite_food;









USE bank;

INSERT INTO person (person_id, fname, lname, gender, birth_date)
VALUES (1, 'William', 'Tuner', 'M', '1972-05-27');

INSERT INTO person (
	person_id, fname, lname, gender, birth_date, 
    street, city, state, country, postal_code)
VALUES (2, 'Susan', 'Smith', 'F', '1975-11-02',
	'23 Maple St.', 'Arlington', 'VA', 'USA', '20220');

INSERT INTO favorite_food (person_id, food)
VALUES (1, 'pizza');

INSERT INTO favorite_food (person_id, food)
VALUES (1, 'cookies');

INSERT INTO favorite_food (person_id, food)
VALUES (1, 'nachos');



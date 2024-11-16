use bank;

SELECT person_id, fname, lname, birth_date 
FROM person;

SELECT person_id, fname, lname, birth_date 
FROM person
WHERE person_id = 1;

SELECT person_id, fname, lname, birth_date 
FROM person
WHERE lname = 'Tuner';

SELECT *
FROM person
WHERE person_id = 1;

SELECT food
FROM favorite_food
WHERE person_id = 1
ORDER BY food;
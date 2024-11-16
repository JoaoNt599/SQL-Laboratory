use bank;

UPDATE person
SET street = '1225 Tremont St.',
	city = 'Boston',
    state = 'MA',
    country = 'USA',
    postal_code = '02138'
WHERE person_id = 1;

UPDATE person
SET birth_date = STR_TO_DATE('DEC-21-1980', '%b-%d-%Y')
WHERE person_id = 1;
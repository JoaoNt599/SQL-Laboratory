
-- MySQL
SELECT e.fname, e.lname, d.name
FROM employee e JOIN department d
ON e.dept_id = dept_id;


-- MySQL
SELECT a.account_id, c.fed_id
FROM account a INNER JOIN customer c 
ON a.cust_id = c.cust_id
WHERE c.cust_type_cd = 'B'


-- MySQL
SELECT a.account_id, a.cust_id, b.name
FROM account a LEFT OUTER JOIN business b 
ON a.cust_id = b.cust_id;


-- MySQL
SLECT e.fname, e.lname,
e_mgr.fname mgr_fname, e_mgr.lname mgr_lname
FROM employee e RIGHT OUTER JOIN employee e_mgr
ON e.superior_emp_id = e_mgr.emp_id;


-- MySQL
SLECT pt.name, p product_cd, p.name
FROM product p CROSS JOIN product_type pt;


-- MySQL
SELECT a.account_id, a.cust_id, c.cust_type_cd, c.fed_id
FROM account a NATURAL JOIN customer c;
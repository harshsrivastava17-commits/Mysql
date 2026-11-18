use customers_database;

select *
from customers;

select *
from customers 
where state = "Delhi" and points > "100";

select *
from customers 
where "Name" and "Income" Between "50000" and "100000";

select *
from customers 
where first_name regexp "^A";

select *
from customers 
where state in ("Delhi"or Points >"100");

select *
from customers
where monthly_income = ( select max(monthly_income) 
from customers);

SELECT *
FROM customers
ORDER BY monthly_income DESC
LIMIT 1 OFFSET 1;

SELECT *
FROM customers
WHERE phone IS NULL
   OR phone = '';

SELECT *
FROM customers
WHERE sector IS NOT NULL
AND sector <> '';

SELECT DISTINCT state
FROM customers;

SELECT 
COUNT(DISTINCT city) AS Unique_Cities
FROM customers;

SELECT *
FROM customers
WHERE birth_date < '1990-01-01';

SELECT *
FROM customers
WHERE birth_date BETWEEN '1985-01-01' AND '2000-12-31';

SELECT first_name
FROM customers
WHERE CHAR_LENGTH(first_name) = 5;

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 5;


SELECT *
FROM customers
WHERE address LIKE '%Road%';

SELECT *
FROM customers
WHERE name LIKE '%n';

SELECT *
FROM customers
ORDER BY monthly_income DESC;

SELECT *
FROM customers
WHERE city != 'Mumbai';

SELECT *
FROM customers
WHERE points > 100
AND city IN ('Delhi', 'Pune', 'Chennai');

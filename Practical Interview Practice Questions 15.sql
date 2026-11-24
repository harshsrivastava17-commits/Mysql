CREATE DATABASE interview_commands_practice;
USE interview_commands_practice;
SET autocommit = 1;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(60),
    department VARCHAR(30),
    city VARCHAR(40),
    salary DECIMAL(10, 2),
    employment_status VARCHAR(15),
    phone VARCHAR(15)
) ENGINE = InnoDB;
INSERT INTO employees
(employee_id, employee_name, department, city,
 salary, employment_status, phone)
VALUES
(1, 'Rahul Sharma', 'IT', 'Delhi',
 45000.00, 'Active', '9000000001'),
(2, 'Priya Verma', 'HR', 'Mumbai',
 42000.00, 'Active', '9000000002'),
(3, 'Amit Patel', 'Sales', 'Ahmedabad',
 38000.00, 'Inactive', '9000000003'),
(4, 'Anjali Singh', 'IT', 'Kolkata',
 50000.00, 'Active', '9000000004'),
(5, 'Vijay Kumar', 'Finance', 'Bangalore',
 55000.00, 'Active', '9000000005'),
(6, 'Sanjay Reddy', 'Sales', 'Hyderabad',
 36000.00, 'Active', '9000000006'),
(7, 'Megha Iyer', 'IT', 'Chennai',
 48000.00, 'Active', '9000000007'),
(8, 'Neha Gupta', 'HR', 'Delhi',
 32000.00, 'Inactive', '9000000008'),
(9, 'Arjun Mehta', 'Finance', 'Pune',
 52000.00, 'Active', '9000000009'),
(10, 'Pooja Shah', 'Sales', 'Mumbai',
 40000.00, 'Active', '9000000010');
 
COMMIT;

Insert into employees
(employee_id, employee_name, department, city, salary, employee_status, phone)
values

Insert into employees
(employee_id, employee_name, department, city, salary, employee_status, phone)
(12, Simran Kaur, HR, Delhi, 35000.00, Active, 9000000012)
(13, Rohan Das, Sales, Pune, 33000.00, Inactive, 9000000013)
values

Update employees
set city= 'Gurgaon'
salary  = 46000.00
where employee_id= 11;

Update employees
set salary = salary * 1.10
where employee_id (1,4,7);

Delete from employees
where employee_id (3,8,13);

Alter Table employees
Add Column email varchar(100) null;

Alter Table employees
Modify Column phone varchar(20) null;

Alter Table employees
Change Column city work_city varchar(40);

Alter Table employees
Drop column email;

Rename Table employees to staff;


START TRANSACTION;

INSERT INTO staff
(employee_id, employee_name, department, work_city, salary, employment_status, phone)
VALUES
(14, 'Nisha Rao', 'IT', 'Noida', 44000.00, 'Active', '9000000014');

Update staff
set salary= 45000.00
where employee_id= 2;

commit;

Rollback;

SELECT *
FROM staff
WHERE employee_id IN (2, 14);

Start Transaction;

UPDATE staff
SET salary = 60000.00
WHERE employee_id = 5;

Delete from staff 
where employee_id = 6;

Rollback;

select employee_id, employee_name, salary
from staff
where employees_id in (5,6);

START TRANSACTION;

-- a) Change the salary and save this point
UPDATE staff
SET salary = 47000.00
WHERE employee_id = 14;

SAVEPOINT salary_saved;

-- b) Change the city and save this point
UPDATE staff
SET work_city = 'Jaipur'
WHERE employee_id = 14;

SAVEPOINT city_saved;

-- c) Delete employee 14, then undo only the deletion
DELETE FROM staff
WHERE employee_id = 14;

ROLLBACK TO city_saved;

-- d) Undo the city change, keep the salary change
ROLLBACK TO salary_saved;

COMMIT;

-- Check the final values
SELECT employee_id, employee_name, salary, work_city
FROM staff
WHERE employee_id = 14;

START TRANSACTION;

TRUNCATE TABLE staff;

ROLLBACK;

SELECT * FROM staff;

DROP TABLE staff;

DROP DATABASE interview_commands_practice;






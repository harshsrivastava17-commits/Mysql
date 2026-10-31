Create Database company_training;
use company_training;

Create table departments(
department_id int not null,
dept_name varchar(80) not null,
city varchar (60)
);

Create table employees(
employee_id int not null,
employee_name varchar(100) not null,
email varchar (120),
department_id int not null,
salary decimal(10,2),
status varchar(20)
);

Alter table departments add primary key (department_id);
Alter table employees   add primary key (employee_id);

Alter table departments add column Location varchar(100);
Describe employees;

Alter table departments change column dept_name department_name varchar(80) not null;
Describe Departments;



Alter table employees modify column salary Decimal(12,2) not null;
Describe employees;

Alter table employees modify column status varchar(20) default 'Active';
Describe employees;

Alter table staff add constraint uq_staff_email unique (email);
Describe staff;
show index from staff;

select * from staff;

Describe departments;
Describe staff;

Alter Table staff add constraint fk_department foreign key (department_id) references departments(department_id);
show create table staff;

show  index from staff;

Alter Table staff Drop Index uq_staff_email;

show index from staff;

Alter Table staff Drop foreign key fk_department;
show create table staff;

Alter Table staff Drop Primary key;
Describe staff;

Alter Table staff Add Primary Key (employee_id);
Show Index from staff;

Alter Table departments Drop Column location;
Describe departments;

Create Database company_management;

Rename Table company_training.departments To company_management.departments,
company_training.staff to company_management.staff;

Drop database company_training;

use company_management;
show tables;

Describe departments;
Describe staff;

show create table staff;


















show keys from departments
where key_name = 'primary';

show keys from employees
where key_name = 'primary';


 show Databases;
 use company_training;
 select Database();
show tables;
Describe Departments;

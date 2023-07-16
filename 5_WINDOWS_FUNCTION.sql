/* windows functions */

CREATE TABLE Employee (
    id INT,
    salary DECIMAL(10, 2),
    age INT,
    phone_number VARCHAR(15),
    email_id VARCHAR(255),
    location VARCHAR(100)
);

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (1, 50000, 30, '123-456-7890', 'john@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (2, 60000, 35, '987-654-3210', 'sarah@example.com', 'Paris');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (3, 75000, 42, '555-123-4567', 'mike@example.com', 'New York');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (4, 40000, 28, '111-222-3333', 'anna@example.com', 'Berlin');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (5, 55000, 31, '444-555-6666', 'david@example.com', 'Sydney');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (1, 65000, 36, '777-888-9999', 'laura@example.com', 'Tokyo');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (7, 70000, 39, '222-333-4444', 'peter@example.com', 'Berlin');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (8, 45000, 27, '888-999-0000', 'emily@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (9, 52000, 33, '333-444-5555', 'megan@example.com', 'New York');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (10, 58000, 37, '666-777-8888', 'alex@example.com', 'Paris');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (2, 60000, 35, '555-666-7777', 'samantha@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (12, 48000, 26, '777-888-9999', 'daniel@example.com', 'Tokyo');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (13, 62000, 32, '444-555-6666', 'lisa@example.com', 'New York');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (5, 56000, 30, '222-333-4444', 'jennifer@example.com', 'Berlin');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (15, 70000, 35, '111-222-3333', 'matthew@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (12, 53000, 31, '888-999-0000', 'natalie@example.com', 'Paris');

select * from Employee;
-------------------------------------------------------------------------------------------------------------------------
/*a.Update the changes in the employee table as added in the SQL basics repository*/
update Employee SET salary = 60000 where id = 15 LIMIT 10;
--------------------------------------------------------------------------------------------------------------------------
/*b.Generate the consecutive numbers for each record locationswise*/
select 
id, 
location,
phone_number,
row_number()
over 
(order by location) as loc_consecutive
from 
employee 
----------------------------------------------------------------------------------------------------------------------------
/*C. From the employee tables derive a new table called employee_updated with no duplicates*/
drop table if exists employee_updated;
create TABLE employee_updated AS 
select * from employee;
/*derived table with no duplicated*/
with cte_phonedup as
(
select
 id,
 phone_number,
 location,
row_number()
over(partition by phone_number,location) as ph_lc
from employee
)
select * from cte_phonedup where ph_lc=1
-------------------------------------------------------------------------------------------------------------------------------
/*D.From the employee write a select query to get all the duplicate phone numbers*/
with cte_phonedup as
(
select
 id,
 phone_number,
 location,
row_number()
over(partition by phone_number,location) as ph_lc
from employee
)
select * from cte_phonedup where ph_lc=2
---------------------------------------------------------------------------------------------------------------------
/*E.Implement a logic to show the difference between row_number and row_id*/
SELECT id, 
ROW_NUMBER() 
OVER (ORDER BY id) AS rownumber
FROM employee
----------------------------------------------------------------------------------------------------------------------
/*F.implement the different common table expressions to implement the below case statements*/

/*Case 1: Arrange the employees in increasing order of their salary*/
select id , salary,location from employee order by salary
------------------------------------------------------------------------------------------------------------------------
/* Case 2: Arrange the employees based on the increasing order of their salary location wise*/
with salarydup as (
select
 id,
 salary,
 location, 
rank()
over( partition by location order by salary) as increasing_order 
from employee
)
select * from salarydup where increasing_order = 1
----------------------------------------------------------------------------------------------------------------------------------
/*Case 3: Pick the employee with the second-highest salary in each location*/
with second_highest_salary as (
select
 id,
 salary,
 location, 
dense_rank()
over( partition by location order by salary desc) as second_increasing_order 
from employee
)
select * from second_highest_salary where second_increasing_order = 2
------------------------------------------------------------------------------------------------------------------------------------
/*Case 4: Pick the employee with least salary in each location*/
with least_sal_order as (
select id, location, salary,
dense_rank()
over( partition by location order by salary) as least_sal
from employee)
select * from least_sal_order where least_sal = 1
=====================================================================================================================================
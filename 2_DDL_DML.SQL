create database internship01;
use internship01; 
CREATE TABLE customer(
 customer_id INT,
 order_date DATE,
 order_id INT PRIMARY KEY,
 product varchar(30),
 product_id int,
 in_time time,
 out_time time,
 arrival_date DATE,
 dispact_date DATE,
 sender_location varchar(20),
 receiver_location varchar(20),
 social_media varchar(15)
);
INSERT INTO customer
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1001,'2023-01-11',258000,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1001,'2023-02-20',258100,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1001,'2023-03-11',258200,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1001,'2023-03-19',258300,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
INSERT INTO customer
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1002,'2023-01-12',248000,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1002,'2023-02-22',248100,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1002,'2023-03-12',248200,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1002,'2023-03-18',248300,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
INSERT INTO customer
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1003,'2023-01-11',228000,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1003,'2023-02-20',228100,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1003,'2023-03-11',228200,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1003,'2023-03-19',228300,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
INSERT INTO customer
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1004,'2023-01-11',278000,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1004,'2023-02-20',278100,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1004,'2023-03-11',278200,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1004,'2023-03-19',278300,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
INSERT INTO customer
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1005,'2023-01-11',298000,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1005,'2023-02-20',298100,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1005,'2023-03-11',298200,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1005,'2023-03-19',298300,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
select*from customer ;
============================================================================================================================
create database internship02;
use internship02; 
CREATE TABLE order_table(
 customer_id INT,
 order_date DATE,
 order_id INT PRIMARY KEY,
 product varchar(30),
 product_id int,
 in_time time,
 out_time time,
 arrival_date DATE,
 dispact_date DATE,
 sender_location varchar(20),
 receiver_location varchar(20),
 social_media varchar(15) 
 ) ;
 
 INSERT INTO order_table
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1001,'2023-01-11',258000,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','amazon'),
(1001,'2023-02-20',258100,'watch',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1001,'2023-03-11',258200,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','olx'),
(1001,'2023-03-19',258300,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart'),
(1001,'2023-04-01',258400,'printer',005,'10:01:01','11:13:01','2023-05-09','2023-05-06','vellore','chennai','snapdeal');
INSERT INTO order_table
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1002,'2023-01-12',248000,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1002,'2023-02-22',248100,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1002,'2023-03-12',248200,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1002,'2023-03-18',248300,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart'),
(1002,'2023-04-02',248400,'printer',005,'10:01:01','11:13:01','2023-05-09','2023-05-06','vellore','chennai','snapdeal');
INSERT INTO order_table
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1003,'2023-01-11',228000,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1003,'2023-02-20',228100,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1003,'2023-03-11',228200,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1003,'2023-03-19',228300,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart'),
(1003,'2023-04-01',228400,'printer',005,'10:01:01','11:13:01','2023-05-09','2023-05-06','vellore','chennai','snapdeal');
INSERT INTO order_table
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1004,'2023-01-11',278000,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','amazon'),
(1004,'2023-02-20',278100,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1004,'2023-03-11',278200,'pen',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','flipkart'),
(1004,'2023-03-19',278300,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart'),
(1004,'2023-05-01',278400,'grocery',005,'10:01:01','11:13:01','2023-05-09','2023-05-06','vellore','chennai','bigbasket');
INSERT INTO order_table
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1005,'2023-01-11',298000,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1005,'2023-02-20',298100,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1005,'2023-03-11',298200,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1005,'2023-03-19',298300,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
select*from order_table;
=================================================================================================================================
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(100),
    date_purchased date);
    
    insert into customers (customerID,name,age,email,phone,address,date_purchased) values
    (1001,'ram',20,'ram@gmail.com',9874563210,'chennai','2023-01-10'),
    (1002,'prem',22,'prem@gmail.com',98745586210,'madurai','2023-03-10'),
    (1003,'renu',21,'renu@gmail.com',9825463210,'mumbai','2023-03-10'),
    (1004,'dhoni',19,'dhoni@gmail.com',9876985630,'kovai','2023-04-19'),
    (1005,'vijay',25,'vijay@gmail.com',9874578910,'cudalore','2023-05-20');
	
select*from customers;
==================================================================================================================================
/*DDL commands*/
/*1.create a customer table */
CREATE TABLE customer_18(
 customer_id INT,
 order_date DATE,
 order_id INT PRIMARY KEY,
 product varchar(30),
 product_id int,
 in_time time,
 out_time time,
 arrival_date DATE,
 dispact_date DATE,
 sender_location varchar(20),
 receiver_location varchar(20),
 social_media varchar(15)
);
====================================================================================================================================
/*2. to add additional columns*/
show tables;
select *from customers
alter table customers add column gender varchar(15)
insert into customers (customerID,name,age,email,phone,address,date_purchased, gender) 
values
    (1001,'priya',20,'priya@gmail.com',9874563210,'chennai','2023-01-10','female'),
    (1002,'sreesha',22,'sreesha@gmail.com',98745586210,'mysore','2023-03-10','female'),
    (1003,'karthi',21,'karthi@gmail.com',9825463210,'mumbai','2023-03-10','male'),
    (1004,'dhoni',19,'dhoni@gmail.com',9876985630,'cuddalore','2023-04-19','male'),
    (1005,'jaisree',25,'jaisree@gmail.com',9874578910,'delhi','2023-05-20','female');
==============================================================================================================================
/* 3. To alter the column name in a table */
show tables ;
Alter table customers  rename column name to customer_name
select *from customers 
=================================================================================================================================
/* 4.To change the table name in sql */
 Alter table customers rename to customer_18
 ==================================================================================================================================
 /* DML commands */
/* 5. To change a particular value inside a table*/
select * from customer_18
update customer_18 set age = 37 where customerID = 1004
select * from customer_18
/* ADHOC Task */

/*1. Get the order id alone from the order_Id column*/
SELECT SUBSTRING(order_id, 4, 14) AS order_id FROM sales_purchase_data_updated;
-------------------------------------------------------------------------------------------------------------------------------
/* 2. order_month, should have month of the order date and year_month should have year of the month*/
select month(order_date) as order_month , concat(month(order_date),'-',year(order_date)) 
as order_year from sales_purchase_data_updated;
--------------------------------------------------------------------------------------------------------------------------------
/*3. Customer id */
SELECT SUBSTRING(Customer_id, 4, 8) AS Customer_id FROM sales_purchase_data_updated;
--------------------------------------------------------------------------------------------------------------------------------
/*4.Concatenate Region,Country, city, state as location_info for each records*/
select concat( Region, '_', Country, '_', City, '_', State, '_') AS location_info FROM sales_purchase_data_updated;
select* from sales_purchase_data limit 10;
--------------------------------------------------------------------------------------------------------------------------------
/* 5.Creating new table from the derived table */
drop table if exists Sales_order_info;
create TABLE Sales_order_info AS
SELECT
Product_ID,
Category,
Sub_Category,
Product_Name,
Sales, 
Quantity,
Sales/quantity AS per_quantity_price,
super_type,
Discount,
Profit,
Loss
FROM sales_purchase_data;

select * from  Sales_order_info limit 20
------------------------------------------------------------------------------------------------------------------------
/*5a.Product_ID*/
SELECT SUBSTRING(Product_Id, 8, 15) AS Product_Id FROM Sales_order_info ;
-------------------------------------------------------------------------------------------------------------------------
/* 5b.per_quantity_price should be  output of Sales / Quantity of each customer records*/ 
select*from Sales_order_info
--------------------------------------------------------------------------------------------------------------------------
/*5c.sales_type should be 3 categories */
select 
product_id,
category,
sub_category,
product_name,
sales,
quantity,
sales/quantity as per_quantity_price,
case 
   when sales>1000 then 'super'
   when sales>400 and sales<1000  then 'average'
   else 'low'
   end as sales_type,
   discount,
   profit,
   loss
from sales_order_info;
select * from sales_order_info;
---------------------------------------------------------------------------------------------------------------------------------
/* 5d. Loss will be 1 if profit is negative */
select 
product_id,
category,
sub_category,
product_name,
sales,
quantity,
sales/quantity as per_quantity_price,
case 
   when sales>1000 then 'super'
   when sales>400 and sales<1000  then 'average'
   else 'low'
   end as sales_type,
   discount,
   profit,
   case
   when profit < 0 then 1
   else 0
   end as loss
from sales_order_info;
------------------------------------------------------------------------------------------------------------------
/*6.Count of distinct order_ids in  sales_purchase_data_updated table */
select count(DISTINCT order_id )from sales_purchase_data_updated 
-----------------------------------------------------------------------------------------------------------------
/*7.Count of Unique product names in Sales_order_info*/
select count(DISTINCT product_name ) from Sales_order_info
------------------------------------------------------------------------------------------------------------------
/*8.Count of distinct Segments in sales_purchase_data_updated table*/
select count(DISTINCT segement) from sales_purchase_data_updated 
--------------------------------------------------------------------------------------------------------------------
/*9.Recent order date in  sales_purchase_data_updated table*/
select max(order_date) from sales_purchase_data_updated 
--------------------------------------------------------------------------------------------------------------------
/*10. Old order date in sales_purchase_data_updated table*/
select min(order_date) from sales_purchase_data_updated 
---------------------------------------------------------------------------------------------------------------------
/*11.Customer info of all the columns for the maximum order date*/
SELECT * FROM sales_purchase_data_updated
WHERE Order_Date = (SELECT MAX(Order_Date) FROM sales_purchase_data_updated);
--------------------------------------------------------------------------------------------------------------------------
/*12. No .of Unique Customers from Texas and New york*/
SELECT
    COUNT(DISTINCT CASE WHEN state = 'Texas' THEN customer_id END) AS No_of_cust_texas,
    COUNT(DISTINCT CASE WHEN state = 'New York' THEN customer_id END) AS No_of_cust_New_york
FROM sales_purchase_data_updated;
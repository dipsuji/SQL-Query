-- insert data in CUSTOMERS table
INSERT INTO CUSTOMERS VALUES (1,'Paul', 'hen', 'hen234@gmail.com','3200 Mt Vernon Hwy','Quincy' ,22902);
INSERT INTO CUSTOMERS VALUES (2,'Jahan', 'thapar', 'thapar.hp@gmail.com','2050 James Vernon Hwy', 'India', 221208);
INSERT INTO CUSTOMERS VALUES (3,'teddy', 'sah', 'sah.tim23@acadamy.com','11350 Constitution Hwy', 'Narway', 43279);
INSERT INTO CUSTOMERS VALUES (4,'Alex', 'kapadya', 'kapadya234@gmail.com','3600 Mt Vernon Hwy','Quincy' ,54902);
INSERT INTO CUSTOMERS VALUES (5,'Tim', 'singh', 'singh.hp@gmail.com','2050 Tim Monroe Parkway', 'Australiya', 220008);
INSERT INTO CUSTOMERS VALUES (6,'Hery', 'thaoi', 'thaoi.hery3@acadamy.com','11350 Monroe Hwy', 'Japan', 23079);

SELECT * FROM CUSTOMERS;

-- for making customer_id in Order table as foreign key
ALTER TABLE ORDERS
    ADD FOREIGN KEY (customer_id) REFERENCES customers (customer_id);

-- insert data in ORDERS table
INSERT INTO ORDERS VALUES (1, '	07/04/1776', '$14.40' , 1);
INSERT INTO ORDERS VALUES (2, '	02/04/1776', '$15.40', 3);
INSERT INTO ORDERS VALUES (3, '	10/04/1776', '$34.40', 2);
INSERT INTO ORDERS VALUES (4, '	11/04/1776', '$18.40',3);
INSERT INTO ORDERS VALUES (5, '	12/04/1776', '$14.80', 4);
INSERT INTO ORDERS VALUES (6, '	05/04/1777', '$24.40', 5);

SELECT * FROM ORDERS;

-- Inner Join
-- to get a list of those customers who placed an order and the details of the order they placed. 
--we use inner join, since an inner join returns records at the intersection of the two tables.
select first_name, last_name, order_date, amount
FROM customers c
inner join orders o
on c.customer_id = o.customer_id

-- Left Join
-- for information about orders to our customers table, regardless of whether a customer placed an order or not, we would use a left join. 
-- A left join returns all records from table A and any matching records from table B.
select first_name, last_name, order_date, amount
from customers c
left join orders o
on c.customer_id = o.customer_id

select first_name, last_name, order_date, amount
from customers c
left join orders o
on c.customer_id = o.customer_id
where order_date is NULL

-- Right Join - 
-- Right join is opposit of the left join and allows to get a list of all orders, appended with customer information.
select first_name, last_name, order_date, amount
from customers c
right join orders o
on c.customer_id = o.customer_id

select first_name, last_name, order_date, amount
from customers c
right join orders o
on c.customer_id = o.customer_id
where first_name is NULL

-- Full Join
--  for a list of all records from both tables, we can use a full join.
select first_name, last_name, order_date, amount
from customers c
full join orders o
on c.customer_id = o.customer_id
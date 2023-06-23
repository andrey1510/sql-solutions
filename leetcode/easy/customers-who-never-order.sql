#https://leetcode.com/problems/customers-who-never-order/


#MySQL scheme
Create table If Not Exists Customers (id int, name varchar(255));
Create table If Not Exists Orders (id int, customerId int);
Truncate table Customers;
insert into Customers (id, name) values ('1', 'Joe');
insert into Customers (id, name) values ('2', 'Henry');
insert into Customers (id, name) values ('3', 'Sam');
insert into Customers (id, name) values ('4', 'Max');
Truncate table Orders;
insert into Orders (id, customerId) values ('1', '3');
insert into Orders (id, customerId) values ('2', '1');


#MySQL solution 1
SELECT
	name AS Customers 
FROM
	Customers c
	LEFT JOIN Orders o ON c.id = o.customerId 
WHERE
	o.id IS NULL;


#MySQL solution 2
SELECT
	name AS Customers 
FROM
	Customers 
WHERE
	id NOT IN ( SELECT customerId FROM Orders );

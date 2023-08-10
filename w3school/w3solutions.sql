
--https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all

/*
Задача 1
Таблица: Customers;
Выбрать все города, которые начинаются на букву S, но не заканчиваются на букву n.
*/

SELECT 
  City 
FROM 
  Customers 
WHERE 
  City LIKE 'S%' AND City NOT LIKE '%n';

/*
Задача 2
Таблицы: Customers, Orders;
Вывести список имен клиентов (CustomerName), которые не сделали ни одного заказа.
*/

SELECT 
  CustomerName 
FROM 
  Customers 
  LEFT JOIN Orders USING(CustomerID) 
WHERE 
  Orders.CustomerID IS NULL;

/*
Задача 3
Таблица: Products;
Вывести наименование (ProductName) и цену (Price) продукта, цена которого, предшествует минимальной.
*/

SELECT 
  ProductName, 
  Price 
FROM 
  Products
ORDER BY 
  Price 
LIMIT 1 OFFSET 1;

/*
Задача 4
Таблицы: Customers, Orders;
Вывести список имен клиентов (CustomerName), даты заказов (OrderDate), и кол-во заказов, для клиентов, которые сделали более одного заказа, за январь 1997-го года.
Упорядочить список по кол-ву заказов, в обратном порядке.
*/

SELECT 
  CustomerName,  
  OrderDate, 
  COUNT(OrderID) AS Quantity 
FROM 
  Customers 
  INNER JOIN Orders USING(CustomerID)
WHERE 
  OrderDate LIKE ('1997-01-__')
GROUP BY 
  CustomerID
HAVING
  Quantity > 1
ORDER BY 
  Quantity DESC;

/*
Задача 5
Таблицы: Customers, Orders;
Вывести список имен клиентов (CutomerName), а также кол-во осуществленных ими заказов, для всех клиентов, кто сделал более 6-ти заказов.
Упорядочить записи, по количеству сделанных заказов, в обратном порядке.
*/

SELECT 
  CustomerName, 
  COUNT(OrderID) AS Quantity 
FROM 
  Customers 
  INNER JOIN Orders USING(CustomerID)
GROUP BY 
  CustomerID
HAVING
  Quantity > 6
ORDER BY 
  Quantity DESC;



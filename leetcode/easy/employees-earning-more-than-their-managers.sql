#https://leetcode.com/problems/employees-earning-more-than-their-managers/


#MySQL schema 
Create table If Not Exists Employee (id int, name varchar(255), salary int, managerId int);
Truncate table Employee;
insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3');
insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4');
insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', null);
insert into Employee (id, name, salary, managerId) values ('4', 'Max', '90000', null);


#MySQL Solution
SELECT
	e.NAME AS Employee 
FROM
	Employee AS e,
	Employee AS m 
WHERE
	e.managerId = m.id 
	AND e.salary > m.salary;
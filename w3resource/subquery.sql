-- https://www.w3resource.com/postgresql-exercises/subquery/


-- 1. Write a query to find the first_name, last_name and salaries of the employees who have a higher salary than the employee whose last_name is Bull.


SELECT 
  first_name, 
  last_name, 
  salary 
FROM 
  employees 
WHERE 
  salary > (
    SELECT 
      salary 
    FROM 
      employees 
    WHERE 
      last_name = 'Bull'
  );


-- 2. Write a SQL subquery to find the first_name and last_name of all employees who works in the IT department.

SELECT 
  first_name, 
  last_name 
FROM 
  employees 
WHERE 
  department_id IN (
    SELECT 
      department_id 
    FROM 
      departments 
    WHERE 
      department_name = 'IT'
  );


-- 3. Write a SQL subquery to find the first_name and last_name of the employees under a manager who works for a department based in the United States.

SELECT 
  first_name, 
  last_name 
FROM 
  employees 
WHERE 
  manager_id IN (
    select 
      employee_id 
    FROM 
      employees 
    WHERE 
      department_id IN (
        SELECT 
          department_id 
        FROM 
          departments 
        WHERE 
          location_id IN (
            select 
              location_id 
            FROM 
              locations 
            WHERE 
              country_id = 'US'
          )
      )
  );



-- 4. Write a SQL subquery to find the first_name and last_name of the employees who are working as a manager.

SELECT 
  first_name, 
  last_name 
FROM 
  employees 
WHERE 
  employee_id IN (
    SELECT 
      manager_id 
    FROM 
      employees
  );


-- 5. Write a SQL subquery to find the first_name, last_name and salary, which is greater than the average salary of the employees.

SELECT 
  first_name, 
  last_name, 
  salary 
FROM 
  employees 
WHERE 
  salary > (
    SELECT 
      AVG(salary) 
    FROM 
      employees
  );



-- 6. Write a SQL subquery to find the first_name, last_name and salary, which is equal to the minimum salary for this post, he/she is working on.

SELECT 
  first_name, 
  last_name, 
  salary 
FROM 
  employees 
WHERE 
  salary = (
    SELECT 
      MIN(salary) 
    FROM 
      employees
    WHERE 
      employees.job_id = jobs.job_id
  );


-- 7. Write a SQL Subquery to find the first_name, last_name and salary of the employees who earn more than the average salary and works in any of the IT departments.

-- v1

SELECT 
  first_name, 
  last_name, 
  salary 
FROM 
  employees 
  INNER JOIN departments USING(department_id)
WHERE 
  salary > (
    SELECT 
      AVG(salary) 
    FROM 
      employees
  ) AND
  department_name = 'IT';

-- v2

SELECT 
  first_name, 
  last_name, 
  salary 
FROM 
  employees 
WHERE 
  department_id IN (
    SELECT 
      department_id 
    FROM 
      departments 
    WHERE 
      department_name LIKE 'IT%'
  ) 
  AND salary > (
    SELECT 
      avg(salary) 
    FROM 
      employees
  );


-- 8. Write a SQL subquery to find the first_name, last_name and salary of the employees who draw a more salary than the employee, which the last name is Bell.

SELECT 
  first_name, 
  last_name, 
  salary 
FROM 
  employees 
WHERE 
  salary > (
    SELECT 
      salary 
    FROM 
      employees
    WHERE 
      last_name = 'Bell'
  );


-- 9. Write a SQL subquery to find all the information of the employees who draws the same salary as the minimum salary for all departments.

SELECT 
  *
FROM
  employees
WHERE 
  salary = (
    SELECT
      MIN(salary)
    FROM 
      employees
  );


-- 10. Write a SQL subquery to find all the information of the employees whose salary greater than the average salary of all departments.

SELECT 
  *
FROM
  employees
WHERE 
  salary > (
    SELECT
      MIN(salary)
    FROM 
      employees
  );


-- 11. Write a subquery to find the first_name, last_name, job_id and salary of the employees who draws a salary that is higher than the salary of all the Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the results on salary from the lowest to highest.

SELECT 
  first_name, 
  last_name, 
  job_id,
  salary 
FROM 
  employees 
WHERE 
  salary > ALL (
    SELECT 
      salary 
    FROM 
      employees 
    WHERE 
      job_id = 'SH_CLERK'
  ) 
ORDER BY 
  salary;


-- 12. Write a query to find the names (first_name, last_name) of the employees who are not supervisors.

SELECT 
  b.first_name, 
  b.last_name 
FROM 
  employees e1 
WHERE 
  NOT EXISTS (
    SELECT 
      * 
    FROM 
      employees e2 
    WHERE 
      e2.manager_id = e1.employee_id
  );


-- 13. Write a SQL subquery to find the employee ID, first name, last name and department names of all employees. 

-- v1

SELECT 
  employee_id, 
  first_name, 
  last_name, 
  department_name
FROM
  employees
  INNER JOIN departments USING (department_id);

-- v2

SELECT 
  employee_id, 
  first_name, 
  last_name, 
  (
    SELECT 
      department_name 
    FROM 
      departments d 
    WHERE 
      e.department_id = d.department_id
  ) department 
FROM 
  employees e 
ORDER BY 
  department;

-- 14. Write a SQL subquery to find the employee ID, first name, last name and salary of all employees whose salary is above the average salary for their departments.

SELECT 
  employee_id, 
  first_name 
FROM 
  employees e1 
WHERE 
  salary > (
    SELECT 
      AVG(salary) 
    FROM 
      employees e2
    WHERE 
      e2.department_id = e1.department_id
  );


-- 15. Write a subquery to find the 5th maximum salary of all salaries.

-- v1

SELECT 
  DISTINCT salary
FROM 
  employees
ORDER BY
  salary DESC
LIMIT 1 OFFSET 4;

-- v2

SELECT 
  DISTINCT salary 
FROM 
  employees e1 
WHERE 
  5 = (
    SELECT 
      COUNT(DISTINCT salary) 
    FROM 
      employees e2 
    WHERE 
      e1.salary <= e2.salary
  );


-- 16. Write a subquery to find the 4th minimum salary of all the salaries.

-- v1

SELECT 
  DISTINCT salary
FROM 
  employees
ORDER BY
  salary
LIMIT 1 OFFSET 3;

-- v2

SELECT 
  DISTINCT salary 
FROM 
  employees e1 
WHERE 
  4 = (
    SELECT 
      COUNT(DISTINCT salary) 
    FROM 
      employees e2 
    WHERE 
      e1.salary >= e2.salary
  );

-- 17. Write a subquery to select last 10 records from a table.

-- v1

SELECT 
  * 
FROM 
  employees
ORDER BY 
  employee_id DESC 
LIMIT 10;

-- v2

SELECT 
  * 
FROM 
  (
    SELECT 
      * 
    FROM 
      employees 
    ORDER BY 
      employee_id DESC 
    LIMIT 
      10
  ) sub 
ORDER BY 
  employee_id ASC;


-- 18. Write a query to list department number, the name for all the departments in which there are no employees in the department.

-- v1

SELECT 
  d.department_id, 
  d.department_name,
  d.manager_id,
  d.location_id
FROM
  departments d 
  LEFT JOIN employees e ON d.department_id = e.department_id 
    WHERE e.department_id IS NULL;

-- v2

SELECT 
  d.department_id, 
  d.department_name,
  d.manager_id,
  d.location_id
FROM
  departments d
WHERE  
  NOT EXISTS (
    SELECT 
      * 
    FROM 
      employees e 
    WHERE 
      d.department_id = e.department_id
  );

-- v3

SELECT 
  * 
FROM 
  departments 
WHERE 
  department_id NOT IN (
    select 
      department_id 
    FROM 
      employees
  );


-- 19. Write a query to get three maximum salaries.

SELECT 
  DISTINCT salary 
FROM 
  employees e1 
WHERE 
  3 >= (
    SELECT 
      COUNT(DISTINCT salary) 
    FROM 
      employees e2 
    WHERE 
      e1.salary <= e2.salary
  ) 
ORDER BY 
  a.salary DESC;


-- 20. Write a query to get three minimum salaries.

SELECT 
  DISTINCT salary 
FROM 
  employees e1 
WHERE 
  3 >= (
    SELECT 
      COUNT(DISTINCT salary) 
    FROM 
      employees e2 
    WHERE 
      e1.salary >= e2.salary
  ) 
ORDER BY 
  e1.salary DESC;


-- 21. Write a query to get nth max salaries of employees.

SELECT 
  * 
FROM 
  employees e1 
WHERE 
  (1) = (
    SELECT 
      COUNT(
        DISTINCT(e2.salary)
      ) 
    FROM 
      employees e2 
    WHERE 
      e2.salary > e1.salary
  );



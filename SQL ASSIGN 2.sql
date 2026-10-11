use employee;
SELECT DISTINCT salary FROM employees;
SELECT age AS Employee_Age, salary AS Employee_Salary FROM employees;
SELECT * FROM employees WHERE salary > 50000 AND hire_date < '2016-01-01';
SELECT * FROM employees WHERE designation IS NULL;
UPDATE employees SET designation = 'Data Scientist' WHERE employee_id=5004 AND designation IS NULL;
SELECT * FROM employees ORDER BY department_id ASC, salary DESC;
SELECT * FROM employees WHERE hire_date >= '2018-01-01' 
AND hire_date < '2019-01-01' ORDER BY hire_date ASC LIMIT 5 ;
SELECT SUM(e.salary) AS Total_Finance_Salary FROM employees e INNER JOIN departments d 
ON e.department_id = d.department_id 
WHERE d.department_name = 'Finance';
SELECT MIN(age) AS Minimum_Age FROM employees;
SELECT l.location,
MAX(e.salary) AS Maximum_Salary FROM employees e 
INNER JOIN location l ON e.location_id = l.location_id 
GROUP BY l.location_id, l.location;
SELECT designation, AVG(salary) AS Average_Salary FROM employees
WHERE designation LIKE '%Analyst%' GROUP BY designation;
SELECT d.department_id, d.department_name, COUNT(e.employee_id) AS 
Total_Employees FROM departments d LEFT JOIN employees e 
ON d.department_id = e.department_id GROUP BY d.department_id,d.department_name
HAVING COUNT(e.employee_id) < 3;
SELECT l.location, AVG(e.age) AS Average_Age FROM location l
INNER JOIN employees e ON l.location_id = e.location_id 
WHERE e.gender = 'Female' GROUP BY l.location_id, l.location 
HAVING AVG(e.age) < 30;
SHOW tables;
SELECT e.employee_name, e.designation, d.department_name 
FROM employees e INNER JOIN departments d 
ON e.department_id = d.department_id;
SELECT d.department_id, d.department_name, COUNT(e.employee_id) 
AS Total_Employees FROM departments d LEFT JOIN employees e 
ON d.department_id = e.department_id GROUP BY d.department_id, d.department_name;
SELECT l.location, e.employee_name FROM employees e 
RIGHT JOIN location l ON e.location_id = l.location_id;
-- Q1: 1.	Window Functions and Analytics: Write an SQL query that ranks employees within each department based on their salaries.  
--The highest salary within a department should have a rank of 1. Use the DENSE_RANK function to handle ties properly.  
-- Assume the table structure is employees(id, name, salary, department_id).

Select
  id,
  name_, 
  salary,
  department_id,
  DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC)
  From employees; 


-- Q2 2. Complex Joins and Aggregations: Given two tables, orders(order_id, customer_id, order_date, order_amount) and customers(customer_id, customer_name, customer_email),  
-- write an SQL query to find the top 3 customers with the highest total order amounts. 
-- Your result should include customer_name, customer_email, and the total order amount. 
-- Consider performance implications in your solution.

select top 3
    c.customer_name,
	c.customer_email,
	SUM(o.order_amount) AS total_order_amount
from orders o 
LEFT JOIN customers c ON o.customer_id = c.customer_id 
GROUP BY c.customer_id, c.customer_name, c.customer_email
ORDER BY total_order_amount DESC; 

-- Q3 3. Recursive CTEs for Hierarchical Data: Suppose you have a table employees(id, name, manager_id) where manager_id references id in the same table, 
-- indicating a hierarchical (tree-like) relationship among employees. 
-- Write an SQL query using a recursive common table expression (CTE) to find the hierarchy path for each employee.  
--Your result should include the employee's name and a string representing their hierarchy path (e.g., "CEO -> John Smith -> Jane Doe"). 

WITH RECURSIVE emp_hierarchy (id, name_, manager_id, path_) AS (
	 SELECT id, name_, manager_id, CAST(name_ as varchar(255)) AS path_
	 FROM employees
	 WHERE manager_id IS NULL  -- start with the top-level employees 

	 UNION ALL 

	 SELECT e.id, e.name_, e.manager_id, CONCAT(eh.path_ '->' , e.name_) 
	 FROM employees e 
	 LEFT JOIN emp_hierarchy eh ON eh.id = e.manager_id 
)
SELECT name_, path_
FROM emp_hierarchy
ORDER BY path; 

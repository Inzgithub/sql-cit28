-- use JOIN to return the first name of all employees, and if applicable, show the employee's department name. 
-- can you use a subquery to get the same result?

SELECT ename, dept FROM employees LEFT JOIN department USING(eid);

-- Subquery
SELECT ename, (SELECT dept FROM department WHERE employees.eid = department.eid) FROM employees;
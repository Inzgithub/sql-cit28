-- use JOIN to return all department names, and if applicable, show the employee associated with that department name
-- can you use a subquery to get the same result?

SELECT dept,ename FROM department LEFT JOIN employees USING (eid);

-- Subquery
SELECT department.dept,(SELECT ename FROM employees WHERE employees.eid=department.eid) FROM department
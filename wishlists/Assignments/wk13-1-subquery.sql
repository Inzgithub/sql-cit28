-- use JOIN to
-- return the first name and department of all employees in the 'Sales' department.
 -- can you use a subquery to get the same result?

SELECT ename,dept FROM employees JOIN department USING (eid) WHERE dept = 'Sales';

-- another way with a subquery
-- with ename as our first column, that is functioning as our INNER JOIN. Using ename as our INNER SELECT causes all employes to be pulled in regardless of department name
SELECT ename, (SELECT dept FROM department WHERE department.eid=employees.eid AND dept = 'Sales') FROM employees;

-- Here we use dept as our INNER JOIN so we do not end up with any null department columns as we did with the example above.
SELECT dept, (SELECT ename FROM employees WHERE department.eid= employees.eid) FROM department WHERE dept = 'Sales';
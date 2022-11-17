-- return a single column that lists all of the customer names and employee names.
SELECT cname AS "People" FROM customers UNION SELECT ename FROM employees;
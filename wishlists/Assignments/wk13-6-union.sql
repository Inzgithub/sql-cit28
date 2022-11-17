-- use UNION to
-- return a single column that lists all of the customer names and employee names. 
-- can you use a subquery to get the same result?

SELECT * FROM customers;
SELECT * FROM employees;

SELECT cname FROM customers UNION SELECT ename FROM employees;

-- a subquery cannot be used
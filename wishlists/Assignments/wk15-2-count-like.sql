-- show the customer's name and the total number of movies they've rented sorted by the number of movies rented in descending order
SELECT customers.cname, (SELECT COUNT(*) FROM rentals WHERE rentals.cid = customers.cid) FROM customers ORDER BY (SELECT COUNT(*) FROM rentals WHERE rentals.cid = customers.cid) DESC;

-- show the customer's name and the total number of movies they've rented sorted by the number of movies rented in descending order only for customers who have an 'e' in their name

SELECT customers.cname, (SELECT COUNT(*) FROM rentals WHERE rentals.cid = customers.cid) FROM customers WHERE customers.cname LIKE '%e%'ORDER BY (SELECT COUNT(*) FROM rentals WHERE rentals.cid = customers.cid) DESC;
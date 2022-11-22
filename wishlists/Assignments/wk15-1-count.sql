SELECT customers.cname, (SELECT COUNT(*) FROM rentals WHERE rentals.cid = customers.cid) FROM customers;

-- show the customer's name and the total number of movies they've rented
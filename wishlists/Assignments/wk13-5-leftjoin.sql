-- use LEFT JOIN to return the first name of all customers, the rental id of any rental transaction they're associated with, and also show the name of the movie they rented if applicable. 


SELECT cname, rid, mname FROM customers LEFT JOIN rentals USING (cid) LEFT JOIN movies USINg (mid);

-- getting the same result through a subquery is not possible
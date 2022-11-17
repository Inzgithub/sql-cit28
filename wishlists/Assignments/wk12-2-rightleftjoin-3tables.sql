-- use right join to return the name of all movies, the rental id of any rental transaction they're associated with, and also show the first name of the customer who rented the movie if applicable.

    -- SELECT movies.mname, rentals.rid, customers.cname FROM rentals JOIN customers USING (cid) RIGHT JOIN movies USING (mid)

-- use left join to return the name of all movies, the rental id of any rental transaction they're associated with, and also show the first name of the customer who rented the movie if applicable.

    SELECT movies.mname, rentals.rid, customers.cname FROM movies LEFT JOIN rentals USING (mid) LEFT JOIN customers USING (cid)
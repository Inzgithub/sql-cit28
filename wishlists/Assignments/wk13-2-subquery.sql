
-- use JOIN to return the first name, the movie title, and the rental transaction id of the first ten rental transactions
-- can you use a subquery to get the same result?

SELECT customers.cname, movies.mname, rentals.rid FROM rentals LEFT JOIN customers USING (cid) LEFT JOIN movies USING (mid) LIMIT 10;

-- subquery
SELECT rentals.rid,(SELECT customers.cname FROM customers WHERE customers.cid = rentals.cid),(SELECT movies.mname FROM movies WHERE movies.mid=rentals.mid)  FROM rentals LIMIT 10;
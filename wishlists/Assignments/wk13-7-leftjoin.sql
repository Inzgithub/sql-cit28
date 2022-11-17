-- use JOIN to
-- for the first ten people in the people's table, return the first name and last name of each person, the name(s) of the list(s) they have created, and the items in the list
-- -- can you use a subquery to get the same result?
SELECT pfirstname FROM people LIMIT 10;

SELECT pfirstname, plastname, lname, iname FROM people LEFT JOIN lists USING (pid) LEFT JOIN listitems USING (lid) LEFT JOIN items USING (iid) LIMIT 10;

-- cannot be done using subquery
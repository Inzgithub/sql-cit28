-- return the first name, last name, and the number of lists each person has
 -- return the first name, last name, and the number of lists each person has ORDER this by the amount of lists in descending order

SELECT pfirstname, plastname, (SELECT COUNT(*) FROM lists WHERE people.pid=lists.pid) FROM people ORDER BY (SELECT COUNT(*) FROM lists WHERE people.pid=lists.pid) DESC;
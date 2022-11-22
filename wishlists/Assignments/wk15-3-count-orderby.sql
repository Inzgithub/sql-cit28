-- show the first and last name and the number of lists each person has
SELECT people.pfirstname, people.plastname, (SELECT COUNT(*) FROM lists WHERE lists.pid=people.pid) FROM people;



-- show the first and last name and the number of lists each person has; show the results sorted in descending order by the number of lists
SELECT people.pfirstname, people.plastname, (SELECT COUNT(*) FROM lists WHERE lists.pid=people.pid) FROM people ORDER BY (SELECT COUNT(*) FROM lists WHERE lists.pid=people.pid) DESC;

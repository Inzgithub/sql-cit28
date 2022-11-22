-- show the first, last name, and the number of list items each person has; show the results sorted in descending order by the number of list items

SELECT people.pfirstname, people.plastname,COUNT(liid) AS "Num List Items" FROM people LEFT JOIN lists USING (pid)LEFT JOIN listitems USING (lid) GROUP BY people.pid ORDER BY COUNT(liid) DESC;

-- bonus: show the first, last name, the number of lists, and the number of list items each person has; show the results sorted in descending order by the number of list items

SELECT people.pfirstname, people.plastname,(SELECT COUNT(lid) from LISTS WHERE lists.pid=people.pid) AS "Lists", COUNT(liid) AS "list items" FROM people LEFT JOIN lists USING (pid)LEFT JOIN listitems USING (lid) GROUP BY people.pid ORDER BY COUNT(liid) DESC;
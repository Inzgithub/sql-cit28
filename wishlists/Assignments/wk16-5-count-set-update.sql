-- counting how many lists each person has

SELECT pfirstname, ppoints, (SELECT COUNT(*) from Lists WHERE lists.pid=people.pid) FROM people ORDER BY pfirstname LIMIT 10;

-- selecting people with more than 2 lists
SELECT pfirstname, ppoints, (SELECT COUNT(*) from Lists WHERE lists.pid=people.pid) FROM people WHERE (SELECT COUNT(*) from Lists WHERE lists.pid=people.pid) >2 ORDER BY pfirstname;

-- updating records of people with more than 2 lists by adding 1000 points to their balance
 UPDATE people SET ppoints=ppoints+1000 WHERE (SELECT COUNT(*) from Lists WHERE lists.pid=people.pid)>2 RETURNING pfirstname, ppoints, (SELECT COUNT(*) from Lists WHERE lists.pid=people.pid);
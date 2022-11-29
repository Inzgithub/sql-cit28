SELECT pfirstname, ppoints FROM people LIMIT 10;
SELECT pfirstname, ppoints FROM people WHERE ppoints<(SELECT avg(ppoints) FROM people) LIMIT 10;

UPDATE people SET ppoints = ppoints+100 WHERE ppoints<(SELECT avg(ppoints) FROM people) RETURNING pfirstname, ppoints;

SELECT pfirstname, ppoints FROM people LIMIT 10;
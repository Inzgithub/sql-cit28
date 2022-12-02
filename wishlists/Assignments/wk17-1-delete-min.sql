-- delete any people who are within 1000 points of the min amount of points
-- SELECT pfirstname, plastname, ppoints from people WHERE ppoints <= (select min(ppoints)+1000 FROM people);


DELETE FROM people WHERE ppoints <= (select min(ppoints)+1000 FROM people) RETURNING pfirstname, plastname, ppoints;
-- return the first name, last name, and the number of listitems each person has

SELECT pfirstname, plastname, (SELECT COUNT(*) FROM lists WHERE people.pid=lists.pid) FROM people;

 -- filter the above to only show records with 2 or more listitems
SELECT pfirstname, plastname, (SELECT COUNT(*) FROM lists WHERE people.pid=lists.pid) FROM people WHERE 1<(SELECT COUNT(*) FROM lists WHERE people.pid=lists.pid);
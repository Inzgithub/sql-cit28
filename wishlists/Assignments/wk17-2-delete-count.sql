-- Delete anyone who has two lists or less
-- Selecting them to view
-- SELECT people.pfirstname, people.plastname, (SELECT COUNT(*) from lists WHERE people.pid=lists.pid) FROM people WHERE (SELECT COUNT(*) from lists WHERE people.pid=lists.pid)<=2 ORDER BY pid;

DELETE FROM people WHERE (SELECT COUNT(*) from lists WHERE people.pid=lists.pid)<=2 RETURNING pfirstname, plastname;
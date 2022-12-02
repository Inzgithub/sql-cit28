

SELECT *, (SELECT COUNT(*) FROM listitems where lists.lid=listitems.lid)  FROM lists WHERE (SELECT COUNT(*) FROM listitems where lists.lid=listitems.lid) <=4;

DELETE FROM people WHERE pid IN (SELECT pid WHERE (SELECT COUNT(liid) FROM PEOPLE AS i NATURAL LEFT JOIN lists NATURAL LEFT JOIN listitems WHERE people.pid=i.pid GROUP BY pid)<=4)
-- for the first ten people in the people's table, return the first name and last name of each person
    -- SELECT pfirstname, plastname FROM people LIMIT 10;

-- for the first ten people in the people's table, return the first name and last name of each person along with the name(s) of the list(s) they have created
    -- SELECT people.pfirstname, people.plastname, lists.lname FROM people JOIN lists USING(pid) LIMIT 10

-- for the first ten people in the people's table, return the first name and last name of each person, the name(s) of the list(s) they have created, and the items in the list

SELECT people.pfirstname, people.plastname, lists.lname, items.iname FROM people LEFT JOIN lists USING (pid) LEFT JOIN listitems USING (lid) LEFT JOIN items USING (iid) LIMIT 10;

 
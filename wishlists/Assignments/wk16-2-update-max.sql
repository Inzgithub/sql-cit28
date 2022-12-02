-- update the first and last name of the person with the max amount of ppoints to James Bond
SELECT pfirstname, ppoints from people WHERE ppoints=(Select max(ppoints) from people);

UPDATE people SET pfirstname = 'James', plastname='Bond' WHERE ppoints=(Select max(ppoints) FROM people) RETURNING pfirstname, plastname, ppoints;


-- SELECT pfirstname, plastname, pstate FROM people WHERE pstate IN ('CA','WA','GA');
SELECT pfirstname, plastname, pstate FROM people WHERE pstate  NOT IN ('CA','WA','GA');
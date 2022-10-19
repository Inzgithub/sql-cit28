-- Containment operator @
-- accessing desserts with accessing operator

-- SELECT pfirstname, pfavorites -> 'Desserts' @> CAST('["cake"]' AS JSONB) FROM people

--without accessing operator
SELECT pfirstname, pfavorites @> CAST('{"Desserts":["cake"]}' AS JSONB) FROM people



-- Existence operator ?

-- SELECT pfirstname, pfavorites -> 'Desserts' ? 'ice cream' FROM people
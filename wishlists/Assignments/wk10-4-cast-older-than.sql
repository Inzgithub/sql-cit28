SELECT pfirstname, plastname, pdob from people WHERE ((extract(YEAR from cast('now' as timestamp)) - extract(YEAR FROM pdob))>10) ORDER BY pdob DESC

SELECT 
	country.name,
	city.name,
	city.area
FROM city
JOIN country ON city.country_id = country.id 
WHERE city.is_capital = TRUE 
	AND city.area = (
		SELECT MIN(area)
		FROM city
		WHERE is_capital = TRUE
);
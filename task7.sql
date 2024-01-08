SELECT 
	city.name,
	country.name,
	country.population
FROM city
JOIN country ON city.country_id = country.id 
WHERE city.is_capital = TRUE 
ORDER BY country.population DESC 
LIMIT 3;
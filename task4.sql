SELECT 
	city.id,
	city.name,
	city.area,
	city.is_capital,
	city.country_id,
	country.id, 
	country.name,
	country.population,
	country.last_status_change
FROM city
JOIN country ON city.country_id = country.id 
WHERE country.name = 'Germany';
CREATE TABLE city (
	id SERIAL PRIMARY KEY,
	name TEXT,
	area DECIMAL,
	is_capital BOOLEAN,
	country_id INT REFERENCES country(id) ON DELETE SET NULL
);
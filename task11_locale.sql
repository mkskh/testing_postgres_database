CREATE TABLE locale(
	name TEXT,
	language_code VARCHAR(2),
	country_code VARCHAR(2),
	
	PRIMARY KEY (language_code, country_code)
);


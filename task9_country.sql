ALTER TABLE country 
ADD COLUMN code varchar(2);

--we need to return Germany row for checking unique with country_test.sql
INSERT INTO country(id, name, population, last_status_change)
VALUES (1, 'Germany', 83190556, '1990-10-03');

UPDATE country
SET code = CASE 
	WHEN name = 'France' THEN 'FR'
	WHEN name = 'Namibia' THEN 'NA'
	WHEN name = 'Uruguay' THEN 'UY'
	WHEN name = 'Kazakhstan' THEN 'KZ'
	WHEN name = 'Germany' THEN 'DE'
END;

ALTER TABLE country
ADD CONSTRAINT unique_code UNIQUE (code);

SELECT 
	country.name,
	country.code 
FROM country


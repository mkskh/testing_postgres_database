SELECT 
    locale.name AS Locale,
    language.name AS Language,
    country.name AS Country
FROM 
    locale
JOIN 
    country ON locale.country_code = country.code
JOIN 
    language ON locale.language_code = language.code
ORDER BY 
    Language;

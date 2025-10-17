SELECT DISTINCT replacement_cost
FROM film

SELECT COUNT(DISTINCT replacement_cost) AS farkli_deger_sayisi
FROM film;

SELECT COUNT(*) AS film_sayisi
FROM film
WHERE title LIKE 'T%'
  AND rating = 'G';

SELECT COUNT(*) AS bes_harfli_ulke_sayisi
FROM country
WHERE LENGTH(country) = 5;

SELECT COUNT(*) AS r_ile_biten_sehir_sayisi
FROM city
WHERE city LIKE '%R' OR city LIKE '%r';

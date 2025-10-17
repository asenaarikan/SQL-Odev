SELECT country FROM country
WHERE country LIKE 'A%_a';

SELECT country FROM country
WHERE country LIKE '%n' AND LENGTH(country) >= 6

SELECT title FROM film
WHERE LENGTH(LOWER(title)) - LENGTH(REPLACE(LOWER(title), 't', '')) >= 4

SELECT * FROM film
WHERE title LIKE 'C%'
  AND length > 90
  AND rental_rate = 2.99;

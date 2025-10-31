Film tablosunda ismi 'n' ile biten en uzun 5 film

SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

Film tablosunda ismi 'n' ile biten en kısa 2. 5 film
  
SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;

Customer tablosunda store_id = 1, last_name azalan ve ilk 4 kayıt

SELECT customer_id, first_name, last_name, store_id
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;



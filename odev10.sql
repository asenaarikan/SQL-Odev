-- 1️⃣ City ve Country tablolarını LEFT JOIN ile birleştirip şehir ve ülke isimlerini göster
SELECT c.city, co.country
FROM city c
LEFT JOIN country co
    ON c.country_id = co.country_id;

-- 2️⃣ Customer ve Payment tablolarını RIGHT JOIN ile birleştirip payment_id ve müşteri isimlerini göster
SELECT p.payment_id, cu.first_name, cu.last_name
FROM customer cu
RIGHT JOIN payment p
    ON cu.customer_id = p.customer_id;

-- 3️⃣ Customer ve Rental tablolarını FULL JOIN ile birleştirip rental_id ve müşteri isimlerini göster
SELECT r.rental_id, cu.first_name, cu.last_name
FROM customer cu
FULL JOIN rental r
    ON cu.customer_id = r.customer_id;

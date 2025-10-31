-- 1️⃣ City ve Country tablolarını birleştirip şehir ve ülke isimlerini göster
SELECT c.city, co.country
FROM city c
INNER JOIN country co
    ON c.country_id = co.country_id;

-- 2️⃣ Customer ve Payment tablolarını birleştirip payment_id ve müşteri isimlerini göster
SELECT p.payment_id, cu.first_name, cu.last_name
FROM customer cu
INNER JOIN payment p
    ON cu.customer_id = p.customer_id;

-- 3️⃣ Customer ve Rental tablolarını birleştirip rental_id ve müşteri isimlerini göster
SELECT r.rental_id, cu.first_name, cu.last_name
FROM customer cu
INNER JOIN rental r
    ON cu.customer_id = r.customer_id;

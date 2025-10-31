-- ===============================
-- 1️⃣ Film uzunluğu ortalamanın üzerinde olan film sayısı
SELECT COUNT(*) AS film_sayisi
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- ===============================
-- 2️⃣ En yüksek rental_rate değerine sahip film sayısı
SELECT COUNT(*) AS en_yuksek_rental_film_sayisi
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- ===============================
-- 3️⃣ En düşük rental_rate ve en düşük replacement_cost değerine sahip filmler
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
   OR replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- ===============================
-- 4️⃣ En fazla alışveriş yapan müşteri(ler)
SELECT customer_id, COUNT(*) AS toplam_odeme
FROM payment
GROUP BY customer_id
HAVING COUNT(*) = (
    SELECT MAX(odeme_sayisi) 
    FROM (
        SELECT customer_id, COUNT(*) AS odeme_sayisi
        FROM payment
        GROUP BY customer_id
    ) AS subquery
);

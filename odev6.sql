-- 1️⃣ Film tablosunda rental_rate ortalaması
SELECT AVG(rental_rate) AS ortalama_rental_rate
FROM film;

-- 2️⃣ Film tablosunda 'C' ile başlayan filmlerin sayısı
SELECT COUNT(*) AS c_ile_baslayan_film_sayisi
FROM film
WHERE title LIKE 'C%';

-- 3️⃣ rental_rate = 0.99 olan en uzun film kaç dakika
SELECT MAX(length) AS en_uzun_film_length
FROM film
WHERE rental_rate = 0.99;

-- 4️⃣ Uzunluğu 150 dakikadan büyük filmlerde kaç farklı replacement_cost var
SELECT COUNT(DISTINCT replacement_cost) AS farkli_replacement_cost_sayisi
FROM film
WHERE length > 150;

-- 1️⃣ Film tablosunda filmleri rating değerlerine göre grupla ve film sayısını göster
SELECT rating, COUNT(*) AS film_sayisi
FROM film
GROUP BY rating
ORDER BY rating;

-- 2️⃣ Film tablosunda replacement_cost değerine göre gruplandır, film sayısı 50'den fazla olanları göster
SELECT replacement_cost, COUNT(*) AS film_sayisi
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_sayisi DESC;

-- 3️⃣ Customer tablosunda store_id değerlerine karşılık gelen müşteri sayıları
SELECT store_id, COUNT(*) AS musteri_sayisi
FROM customer
GROUP BY store_id
ORDER BY store_id;

-- 4️⃣ City tablosunda country_id değerine göre gruplandır, en fazla şehir sayısı olan country_id ve şehir sayısı
SELECT country_id, COUNT(*) AS sehir_sayisi
FROM city
GROUP BY country_id
ORDER BY sehir_sayisi DESC
LIMIT 1;

-- ===============================
-- 1️⃣ Tüm first_name değerleri (benzersiz)
-- Actor ve Customer tablolarındaki tüm isimleri birleştirir
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer
ORDER BY first_name;

-- ===============================
-- 2️⃣ Kesişen first_name değerleri (benzersiz)
-- Her iki tabloda da bulunan isimleri getirir
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer
ORDER BY first_name;

-- ===============================
-- 3️⃣ İlk tabloda olup ikinci tabloda olmayan first_name değerleri (benzersiz)
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer
ORDER BY first_name;

-- ===============================
-- 4️⃣ Tüm first_name değerleri (tekrarlar dahil)
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer
ORDER BY first_name;

-- ===============================
-- 5️⃣ Kesişen first_name değerleri (tekrarlar dahil)
SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer
ORDER BY first_name;

-- ===============================
-- 6️⃣ İlk tabloda olup ikinci tabloda olmayan first_name değerleri (tekrarlar dahil)
SELECT first_name FROM actor
EXCEPT ALL
SELECT first_name FROM customer
ORDER BY first_name;

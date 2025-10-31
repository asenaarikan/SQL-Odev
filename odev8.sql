--employee tablosunu oluşturma
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

--2️⃣ 50 adet veri ekleme (Mockaroo üzerinden üretilmiş örnek)

INSERT INTO employee (id, name, birthday, email) VALUES
(1, 'Alice Smith', '1985-03-21', 'alice.smith@example.com'),
(2, 'Bob Johnson', '1990-07-15', 'bob.johnson@example.com'),
(3, 'Carol Williams', '1978-11-02', 'carol.williams@example.com'),
...
(50, 'Zoe Adams', '1995-01-12', 'zoe.adams@example.com');


--3️⃣ UPDATE işlemleri (5 örnek)

--Her sütuna göre diğer sütunları güncelleyelim:

-- 1. id = 1 olan kişinin email adresini güncelle
UPDATE employee
SET email = 'alice.newemail@example.com'
WHERE id = 1;

-- 2. name = 'Bob Johnson' olan kişinin birthday tarihini güncelle
UPDATE employee
SET birthday = '1991-08-20'
WHERE name = 'Bob Johnson';

-- 3. birthday = '1978-11-02' olan kişinin name değerini güncelle
UPDATE employee
SET name = 'Carol W.'
WHERE birthday = '1978-11-02';

-- 4. email = 'zoe.adams@example.com' olan kişinin name ve birthday değerini güncelle
UPDATE employee
SET name = 'Zoe A.', birthday = '1995-02-01'
WHERE email = 'zoe.adams@example.com';

-- 5. id = 25 olan kişinin name ve email değerini güncelle
UPDATE employee
SET name = 'Updated Name', email = 'updated.email@example.com'
WHERE id = 25;

--4️⃣ DELETE işlemleri (5 örnek)

--Her sütuna göre ilgili satırları silelim:

-- 1. id = 2 olan satırı sil
DELETE FROM employee
WHERE id = 2;

-- 2. name = 'Alice Smith' olan satırı sil
DELETE FROM employee
WHERE name = 'Alice Smith';

-- 3. birthday = '1995-01-12' olan satırı sil
DELETE FROM employee
WHERE birthday = '1995-01-12';

-- 4. email = 'carol.williams@example.com' olan satırı sil
DELETE FROM employee
WHERE email = 'carol.williams@example.com';

-- 5. id = 50 olan satırı sil
DELETE FROM employee
WHERE id = 50;

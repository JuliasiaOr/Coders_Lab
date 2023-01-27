SELECT * FROM products WHERE productline ='Motorcycles';
--
SELECT * FROM products WHERE buyprice <20 AND quantityinstock >1000;
--
SELECT * FROM orders WHERE orderdate BETWEEN '2003-01-01' AND '2003-12-31';
--
SELECT * FROM orders WHERE orderdate >= '2003-01-01' AND orderdate <= '2003-12-31';
--
SELECT * FROM orders WHERE DATE_PART('year',orderdate) = 2003;
--
SELECT * FROM orders WHERE DATE_PART('month',orderdate) = 12;
--
SELECT * FROM orders WHERE orderdate BETWEEN '2003-01-01' AND '2003-12-31' AND status = 'Cancelled';
--
SELECT * FROM employees;
--
SELECT * FROM employees WHERE employeenumber = 1501;
--
SELECT * FROM customers;
--
SELECT * FROM customers WHERE state IS NULL;
--
SELECT * FROM customers WHERE state IS NOT NULL;
--
SELECT * FROM customers WHERE customername IN ('Mini Wheels', 'Danish Wholesale Imports');
--
SELECT * FROM customers WHERE customername LIKE 'Danish%';
--
SELECT * FROM customers WHERE customername LIKE 'Mar%';
--
SELECT * FROM customers WHERE customername LIKE '%wholesale%';
--
SELECT * FROM customers WHERE customername LIKE '%Imports';
--
--zadanie 2 ZAMIANA DANYCH
UPDATE customers
SET creditlimit = 500
WHERE customernumber = 103;
SELECT customernumber, creditlimit FROM customers;
--
SELECT * FROM customers;
--
SELECT * FROM customers WHERE customernumber = 103;
--
DELETE FROM customers
WHERE creditlimit < 600;
SELECT customernumber, creditlimit FROM customers;
--
-- Zmienią lokalizację pracy pracownika Bott Larry z biura o id 7 na biuro o id 5
SELECT * FROM employees WHERE lastname = 'Bott';
--
UPDATE employees
SET officecode = 5
WHERE employeenumber = 1501;
SELECT officecode, employeenumber 
FROM employees;
---
UPDATE customers 
SET creditlimit = 60000
WHERE customername = 'Tekni Collectables Inc.';

--Zmienią liczbę dostępnych egzemplarzy dla wszystkich produktów należących do linii produkcyjnej Trucks and Buses na 0.
UPDATE products
SET quantityinstock = 0
WHERE productline = 'Trucks and Buses'

--Zmienią ilość zamówionych przedmiotów o kodzie S18_2957 w zamówieniu numer 10103 na 60.
SELECT * FROM orderdetails;

UPDATE orderdetails
SET quantityordered = 60
WHERE productcode = 'S18_2957' AND ordernumber = 10103;

--Spróbuj usunąć dane z tabeli customers w firmie o nazwie Tokyo Collectables, Ltd. Zastanów się nad otrzymanym komunikatem. Co może on oznaczać?
DELETE FROM customers
WHERE customername = 'Tokyo Collectables, Ltd';

SELECT * FROM customers WHERE customername ='Tokyo Collectables, Ltd';

--Usuń wszystkie zamówienia przypisane do tej firmy.
DELETE FROM orders WHERE customernumber = 398;
SELECT * FROM orders WHERE customernumber = 398;
DELETE FROM orderdetails WHERE ordernumber IN (10258, 10339, 10372, 10408);
SELECT * FROM orderdetails;

--Zobacz, jakie numery ordernumber mają zamówienia dla firmy Tokyo Collectables, Ltd.
--Usuń wszystkie szczegóły (tabelka orderdetails) dla tych zamówień. Spróbuj zrobić to za pomocą jednego zapytania (użyj słowa kluczowego AND lub operatora IN).
--Usuń wszystkie zamówienia.
--Spróbuj usunąć firmę z bazy danych.
DELETE FROM customers WHERE customernumber = 398; 
DELETE FROM payments WHERE customernumber = 398;
--
SELECT msrp FROM products;
--
SELECT customername AS name FROM customers;
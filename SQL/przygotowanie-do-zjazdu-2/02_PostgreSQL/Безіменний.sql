SELECT * 
FROM CUSTOMERS;

SELECT *
FROM employees;
--join inner
SELECT employeeNumber, firstName, lastName, customerNumber, customerName
FROM customers
JOIN employees ON salesRepEmployeeNumber = employeeNumber;

--left join
SELECT employeeNumber, firstName, lastName, customerNumber, customerName
FROM customers
LEFT JOIN employees ON salesRepEmployeeNumber = employeeNumber;

--right join
SELECT employeeNumber, firstName, lastName, customerNumber, customerName
FROM customers
RIGHT JOIN employees ON salesRepEmployeeNumber = employeeNumber;

--full join

SELECT orders.orderNumber, products.productName, orderdetails.quantityOrdered, orderdetails.priceEach
FROM orders
JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
JOIN products ON orderdetails.productCode = products.productCode;
--
SELECT * FROM products;
SELECT * FROM productlines;

SELECT * 
FROM products
JOIN productlines 
ON products.productline = productlines.productline
--

SELECT * FROM customers;
SELECT * FROM emplyees;

SELECT *
FROM customers 
JOIN employees
ON customers.salesrepemployeenumber = employees.employeenumber;
---
SELECT *
FROM customers 
LEFT JOIN employees
ON customers.salesrepemployeenumber = employees.employeenumber
WHERE employeenumber is null;
--
SELECT *
FROM orders;
SELECT *
FROM products;
SELECT *
FROM orderdetails;

id.orders
status.orders
productcode.orderdetails
quantityordered.productlines
oriductline.products
--
SELECT *
FROM orders
JOIN orderdetails ON orders.ordernumber
JOIN products ON orderdetails.productcode;
--
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) AS number_of_orders FROM orders;
--
SELECT status, COUNT(*) AS number_of_orders
FROM orders
GROUP BY status;
--
SELECT * FROM orders;
--
SELECT AVG(creditlimit) as CreditLimitAverage FROM customers;
--


SELECT *
FROM customers;
select round(AVG(creditlimit)) from customers;
--
SELECT country, max(creditlimit)
from customers
group by country
ORDER BY COUNTRY DESC;
--
SELECT *
FROM orderdetails;
--
SELECT productcode, min(priceeach)
FROM orderdetails
GROUP BY productcode;
--
SELECT productCode, 
round(SUM(quantityOrdered * priceEach))
FROM orderDetails 
GROUP BY productCode;
--
SELECT productline, round(STDDEV(buyPrice))
FROM products 
group by productline;

-- Jaka jest wielkość każdego zamówienia (przez wielkość rozumiemy liczbę sztuk wszystkich produktów w tym zamówieniu)?
SELECT ordernumber, SUM(quantityordered) AS ordertotal
FROM orderdetails
GROUP BY ordernumber
ORDER BY ordernumber;
--Jaka jest łączna kwota każdego zamówienia?
SELECT ordernumber, round(SUM(quantityordered * priceEach)) AS total_cost
FROM orderdetails
GROUP BY ordernumber
ORDER BY ordernumber;
--Ile jest produktów dla każdej linii produktowej?
SELECT productline, COUNT(*) AS product_per_productline
FROM products
GROUP BY productline
ORDER BY productline;
--Jaka jest średnia sugerowana cena sprzedaży (MSRP) dla każdej linii produktowej?
SELECT productline, round(avg(msrp)) AS avg_sell_price
FROM products
GROUP BY productline
ORDER BY productline;
--Ilu klientów jest z każdego kraju?
SELECT country, COUNT(*) AS client_per_country
FROM customers
GROUP BY country
ORDER BY country;
--Jaki jest najmniejszy i największy limit kredytowy firmy z każdego kraju?
SELECT country, MAX(creditlimit) AS max_credit, MIN(creditlimit) AS min_credit
FROM customers
GROUP BY country
ORDER BY country;


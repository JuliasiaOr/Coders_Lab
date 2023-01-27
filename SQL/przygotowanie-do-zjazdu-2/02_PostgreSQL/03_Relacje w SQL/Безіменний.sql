SELECT*
FROM  orders;
--
SELECT *
FROM orderdetails;
--
SELECT *
FROM PRODUCTS;
--
SELECT orders.orderNumber, products.productName, orderdetails.quantityOrdered, orderdetails.priceEach
FROM orders
JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
JOIN products ON orderdetails.productCode = products.productCode;

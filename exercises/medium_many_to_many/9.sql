-- count the total of all prices of services associated with all customers
SELECT SUM(services.price)
FROM
    services
INNER JOIN customers_services ON services.id = customers_services.service_id
WHERE services.price > 100;

-- I used weird subquery for part 2
SELECT
    ((SELECT SUM(price) FROM services WHERE price > 100) * (SELECT COUNT(id) FROM customers)) AS sum;

-- LS uses cross join
SELECT SUM(price)
FROM customers
CROSS JOIN services
WHERE price > 100;

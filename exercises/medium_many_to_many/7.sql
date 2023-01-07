-- count the total of all prices of services associated with all customers
SELECT SUM(services.price) AS gross
FROM
    services
INNER JOIN customers_services ON services.id = customers_services.service_id;

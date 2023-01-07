SELECT
    services.description,
    COUNT(customers_services.service_id)
FROM
    services
INNER JOIN
    customers_services ON customers_services.service_id = services.id
GROUP BY services.description
HAVING COUNT(customers_services.customer_id) >= 3
ORDER BY description;

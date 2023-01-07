-- SELECT
--     customers.name,
--     STRING_AGG(services.description, ', ') AS services
-- FROM
--     customers
-- LEFT OUTER JOIN
--     customers_services ON customers.id = customers_services.customer_id
-- LEFT OUTER JOIN
--     services ON customers_services.service_id = services.id
-- GROUP BY customers.id;

SELECT customers.name,
       lag(customers.name)
         OVER (ORDER BY customers.name)
         AS previous,
       services.description
FROM customers
LEFT OUTER JOIN customers_services
             ON customer_id = customers.id
LEFT OUTER JOIN services
             ON services.id = service_id;

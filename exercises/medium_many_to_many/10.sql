-- This is unnecessary due to the ON DELETE CASCADE
-- DELETE FROM customers_services
--   WHERE customer_id = 4;

DELETE FROM customers_services
  WHERE service_id = 7;

DELETE FROM services
  WHERE description = 'Bulk Email';

DELETE FROM customers
  WHERE name = 'Chen Ke-Hua';

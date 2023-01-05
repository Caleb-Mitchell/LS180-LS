UPDATE parts SET device_id = 1 WHERE id = 7;
UPDATE parts SET device_id = 1 WHERE id = 8;

/*
LS
UPDATE parts SET device_id = 1
WHERE part_number=37 OR part_number=39;
*/


-- Further Exploration
UPDATE parts SET
    device_id = 1
WHERE part_number = (SELECT MIN(part_number) FROM parts);

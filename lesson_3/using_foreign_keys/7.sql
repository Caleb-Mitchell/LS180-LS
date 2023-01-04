DELETE FROM orders WHERE id = 4;
/*
Simply need to drop the row that contains the NULL values, then
we can set the NOT NULL CONSTRAINT to the column
*/

ALTER TABLE orders ALTER COLUMN product_id SET NOT NULL;

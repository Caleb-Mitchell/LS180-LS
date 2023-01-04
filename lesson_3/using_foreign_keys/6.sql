ALTER TABLE orders ALTER COLUMN product_id SET NOT NULL;

/*
The following error is produced, as one row in the column currently contains
a NULL value

ERROR:  column "product_id" contains null values
*/

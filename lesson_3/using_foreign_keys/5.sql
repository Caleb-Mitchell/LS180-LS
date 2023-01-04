/*
Can you insert a row into a table with a foreign key column, without a value for the foreign key column?
- yes
*/

foreign-keys=# INSERT INTO orders (quantity) VALUES (42);
INSERT 0 1

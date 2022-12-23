DROP TABLE IF EXISTS test_table;

CREATE TABLE test_table (
  id serial,
  name text NOT NULL DEFAULT NULL
);

INSERT INTO test_table (name) VALUES ( DEFAULT );

/*
Yes, it is possible to define a default value for a column that will be
considered invalid by a constraint.

This will however throw an error when data is inserted into the table.

-- LS

sql-course=# CREATE TABLE shoes (name text, size numeric(3,1) DEFAULT 0);
CREATE TABLE
sql-course=# ALTER TABLE shoes ADD CONSTRAINT shoe_size CHECK (size BETWEEN 1 AND 15);

sql-course=# INSERT INTO shoes (name) VALUES ('blue sneakers');
ERROR:  new row for relation "shoes" violates check constraint "shoe_size"
DETAIL:  Failing row contains (blue sneakers, 0.0).
\*

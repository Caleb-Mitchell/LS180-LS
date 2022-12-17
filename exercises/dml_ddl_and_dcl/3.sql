-- The following code uses the DDL component of SQL, and it has to do with the structure
-- of the table, not data.

CREATE TABLE things (
  id serial PRIMARY KEY,
  item text NOT NULL UNIQUE,
  material text NOT NULL
);

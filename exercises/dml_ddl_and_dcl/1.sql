-- Other SQL sublanguages, aside from DCL, include:

-- DDL

CREATE TABLE example (
  column_1 integer PRIMARY KEY,
  column_2 varchar(20) NOT NULL
);

-- Also ALTER and DROP

-- DML

INSERT INTO example (
  column_1, column_2
) VALUES ( 3, 'text' );

-- Also UPDATE, SELECT, and DELETE

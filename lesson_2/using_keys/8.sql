ALTER TABLE films ADD COLUMN id_extra serial PRIMARY KEY;

/*
psql:8.sql:1: ERROR:  multiple primary keys for table "films" are not allowed
*/

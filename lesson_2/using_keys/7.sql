/*
What error do you receive if you attempt to update a row to have a value for id that is used by another row?

sql-course=# UPDATE films SET id = 2 WHERE id = 3;
ERROR:  duplicate key value violates unique constraint "films_pkey"
*/

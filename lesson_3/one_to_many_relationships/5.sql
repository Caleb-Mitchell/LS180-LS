INSERT INTO contacts (
    first_name, last_name, number
) VALUES ('caleb', 'mitchell', 7204890809);

/*
ERROR:  duplicate key value violates unique constraint "number_unique"
DETAIL:  Key (number)=(7204890809) already exists.
*/

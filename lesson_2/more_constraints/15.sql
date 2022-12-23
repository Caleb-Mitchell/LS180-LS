UPDATE films
  SET director = 'Johnny'
  WHERE title = 'Die Hard';

/*
this results in error:

psql:15.sql:3: ERROR:  new row for relation "films" violates check constraint "director_length_no_space"
DETAIL:  Failing row contains (Die Hard, 1988, action, Johnny, 132).

\*

/*
Write a SQL query that lists all genres for which there is a movie in the films
table.
*/

-- mine
SELECT genre FROM films GROUP BY genre;

-- LS
SELECT DISTINCT genre FROM films;

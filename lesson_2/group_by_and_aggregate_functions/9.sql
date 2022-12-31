SELECT genre, count(films.id) FROM films GROUP BY genre ORDER BY count DESC;

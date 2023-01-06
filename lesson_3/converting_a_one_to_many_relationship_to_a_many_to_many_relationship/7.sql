SELECT
    directors.name AS director,
    COUNT(films.id) AS films
FROM
    films
INNER JOIN
    directors_films ON films.id = directors_films.film_id
INNER JOIN
    directors ON directors.id = directors_films.director_id
GROUP BY directors.name
ORDER BY films DESC, directors.name ASC;

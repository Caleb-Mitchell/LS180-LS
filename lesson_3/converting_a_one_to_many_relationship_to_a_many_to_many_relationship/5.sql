SELECT
    films.title,
    directors.name
FROM
    films
INNER JOIN
    directors_films ON films.id = directors_films.film_id
INNER JOIN
    directors ON directors.id = directors_films.director_id
ORDER BY films.title ASC;

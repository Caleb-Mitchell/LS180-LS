CREATE TABLE directors_films (
  id serial PRIMARY KEY,
  director_id integer REFERENCES directors(id) ON DELETE CASCADE NOT NULL,
  film_id integer REFERENCES films(id) ON DELETE CASCADE NOT NULL
);

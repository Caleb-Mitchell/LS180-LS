CREATE TABLE moons (
  id serial PRIMARY KEY,
  designation serial NOT NULL CHECK (designation > 0),
  semi_major_axis numeric CHECK (semi_major_axis > 0.0),
  mass numeric CHECK (mass > 0.0),
  moon_id integer NOT NULL REFERENCES planets (id)
);

ALTER TABLE birds
  ADD CONSTRAINT positive_age CHECK (age > 0);

INSERT INTO birds (
  name, age, species
) VALUES ( 'STEVE', -5, 'EAGLE');

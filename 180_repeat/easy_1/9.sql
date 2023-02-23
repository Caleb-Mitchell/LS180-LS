ALTER TABLE birds
   ADD CONSTRAINT positive_age CHECK (age > 0);

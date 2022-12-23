ALTER TABLE films ADD CONSTRAINT director_length_no_space CHECK (length(director) >= 3 AND director LIKE '% %');

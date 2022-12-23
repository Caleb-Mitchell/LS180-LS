-- mine
ALTER TABLE films ADD CONSTRAINT director_length_no_space CHECK (length(director) >= 3 AND director LIKE '% %');

-- LS
ALTER TABLE films ADD CONSTRAINT director_name
    CHECK (length(director) >= 3 AND position(' ' in director) > 0);

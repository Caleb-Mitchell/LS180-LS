/*
It appears as a "check constraint"

Check constraints:
    "director_length_no_space" CHECK (length(director::text) >= 3 AND director::text ~~ '% %'::text)
\*

ALTER TABLE planets
   ALTER COLUMN mass TYPE numeric,
   ADD CONSTRAINT positive_mass CHECK (mass > 0),
   ALTER COLUMN mass SET NOT NULL,
   ALTER COLUMN designation SET NOT NULL;

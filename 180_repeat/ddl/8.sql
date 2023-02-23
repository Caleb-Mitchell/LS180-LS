ALTER TABLE planets
   ADD COLUMN semi_major_axis numeric,
   ALTER COLUMN semi_major_axis SET NOT NULL;

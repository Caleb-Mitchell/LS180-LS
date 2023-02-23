CREATE TYPE spectral_types AS ENUM ('O', 'B', 'A', 'F', 'G', 'K', 'M');

ALTER TABLE stars
  DROP CONSTRAINT stars_spectral_type_check,
  ALTER COLUMN spectral_type TYPE spectral_types USING spectral_type::spectral_types;

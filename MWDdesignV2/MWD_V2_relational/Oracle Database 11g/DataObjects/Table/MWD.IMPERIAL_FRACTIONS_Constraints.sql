ALTER TABLE mwd.imperial_fractions ADD CONSTRAINT imperial_fractions_pk PRIMARY KEY ( inch_fraction );

ALTER TABLE mwd.imperial_fractions ADD CONSTRAINT imperial_fractions_pkv1 UNIQUE ( inch_fraction );
ALTER TABLE mwd.ingredients
    ADD CONSTRAINT ingredients_fk5 FOREIGN KEY ( material )
        REFERENCES mwd.materials ( abbreviation );
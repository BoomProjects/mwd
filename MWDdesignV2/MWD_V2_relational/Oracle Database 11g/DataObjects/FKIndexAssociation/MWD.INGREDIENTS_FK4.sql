ALTER TABLE mwd.ingredients
    ADD CONSTRAINT ingredients_fk4 FOREIGN KEY ( inner_diameter_inch )
        REFERENCES mwd.imperial_fractions ( inch_fraction );
ALTER TABLE mwd.crafted_ingredients
    ADD CONSTRAINT crafted_ingredients_fk2 FOREIGN KEY ( raw_ingredient_id )
        REFERENCES mwd.raw_ingredients ( raw_ingredient_id )
            ON DELETE CASCADE;
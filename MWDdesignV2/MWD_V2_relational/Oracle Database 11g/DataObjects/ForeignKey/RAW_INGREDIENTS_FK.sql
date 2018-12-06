ALTER TABLE mwd.raw_ingredients
    ADD CONSTRAINT raw_ingredients_fk FOREIGN KEY ( raw_ingredient_id )
        REFERENCES mwd.ingredients ( ingredient_id )
            ON DELETE CASCADE;
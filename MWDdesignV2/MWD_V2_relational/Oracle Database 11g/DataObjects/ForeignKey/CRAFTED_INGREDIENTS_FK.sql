ALTER TABLE mwd.crafted_ingredients
    ADD CONSTRAINT crafted_ingredients_fk FOREIGN KEY ( crafted_ingredient_id )
        REFERENCES mwd.ingredients ( ingredient_id )
            ON DELETE CASCADE;
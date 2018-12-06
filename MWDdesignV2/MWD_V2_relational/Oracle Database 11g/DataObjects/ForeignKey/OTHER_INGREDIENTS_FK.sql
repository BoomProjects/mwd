ALTER TABLE mwd.other_ingredients
    ADD CONSTRAINT other_ingredients_fk FOREIGN KEY ( other_ingredient_id )
        REFERENCES mwd.ingredients ( ingredient_id )
            ON DELETE CASCADE;
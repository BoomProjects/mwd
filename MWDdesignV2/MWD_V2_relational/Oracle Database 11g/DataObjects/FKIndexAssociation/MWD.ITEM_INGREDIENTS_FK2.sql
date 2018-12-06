ALTER TABLE mwd.item_ingredients
    ADD CONSTRAINT item_ingredients_fk2 FOREIGN KEY ( ingredient_id )
        REFERENCES mwd.ingredients ( ingredient_id )
            ON DELETE CASCADE;
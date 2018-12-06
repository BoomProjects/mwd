ALTER TABLE mwd.ingredients
    ADD CONSTRAINT ingredients_fk FOREIGN KEY ( ingredient_id )
        REFERENCES mwd.items ( item_id )
            ON DELETE CASCADE;
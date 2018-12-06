ALTER TABLE mwd.item_ingredients
    ADD CONSTRAINT item_ingredients_fk FOREIGN KEY ( item_id )
        REFERENCES mwd.items ( item_id )
            ON DELETE CASCADE;
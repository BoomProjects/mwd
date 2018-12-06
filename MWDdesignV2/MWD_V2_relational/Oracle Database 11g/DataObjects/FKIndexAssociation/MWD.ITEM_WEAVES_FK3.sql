ALTER TABLE mwd.item_weaves
    ADD CONSTRAINT item_weaves_fk3 FOREIGN KEY ( ingredient_id )
        REFERENCES mwd.ingredients ( ingredient_id )
            ON DELETE CASCADE;
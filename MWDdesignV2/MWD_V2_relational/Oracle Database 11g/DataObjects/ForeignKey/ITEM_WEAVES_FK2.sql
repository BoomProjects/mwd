ALTER TABLE mwd.item_weaves
    ADD CONSTRAINT item_weaves_fk2 FOREIGN KEY ( item_id )
        REFERENCES mwd.items ( item_id )
            ON DELETE CASCADE;
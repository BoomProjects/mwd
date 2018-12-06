ALTER TABLE mwd.ornaments
    ADD CONSTRAINT ornaments_fk FOREIGN KEY ( created_item_id )
        REFERENCES mwd.created_items ( created_item_id )
            ON DELETE CASCADE;
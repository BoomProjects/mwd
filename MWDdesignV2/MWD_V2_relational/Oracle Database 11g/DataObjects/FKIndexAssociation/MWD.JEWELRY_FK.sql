ALTER TABLE mwd.jewelry
    ADD CONSTRAINT jewelry_fk FOREIGN KEY ( created_item_id )
        REFERENCES mwd.created_items ( created_item_id )
            ON DELETE CASCADE;
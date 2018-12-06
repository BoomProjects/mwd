ALTER TABLE mwd.set_items
    ADD CONSTRAINT set_items_fk2 FOREIGN KEY ( created_item_id )
        REFERENCES mwd.created_items ( created_item_id )
            ON DELETE CASCADE;
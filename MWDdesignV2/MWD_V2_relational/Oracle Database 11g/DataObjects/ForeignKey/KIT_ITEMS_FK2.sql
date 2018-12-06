ALTER TABLE mwd.kit_items
    ADD CONSTRAINT kit_items_fk2 FOREIGN KEY ( item_id )
        REFERENCES mwd.items ( item_id )
            ON DELETE CASCADE;
ALTER TABLE mwd.store_items
    ADD CONSTRAINT store_items_fk FOREIGN KEY ( item_id )
        REFERENCES mwd.items ( item_id )
            ON DELETE CASCADE;
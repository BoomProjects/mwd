ALTER TABLE mwd.created_items
    ADD CONSTRAINT created_items_fk FOREIGN KEY ( created_item_id )
        REFERENCES mwd.items ( item_id )
            ON DELETE CASCADE;
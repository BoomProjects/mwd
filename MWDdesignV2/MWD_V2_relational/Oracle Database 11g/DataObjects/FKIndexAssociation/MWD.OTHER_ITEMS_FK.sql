ALTER TABLE mwd.other_items
    ADD CONSTRAINT other_items_fk FOREIGN KEY ( other_item_id )
        REFERENCES mwd.items ( item_id )
            ON DELETE CASCADE;
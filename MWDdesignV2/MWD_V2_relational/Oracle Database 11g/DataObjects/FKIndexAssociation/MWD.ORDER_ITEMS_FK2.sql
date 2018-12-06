ALTER TABLE mwd.order_items
    ADD CONSTRAINT order_items_fk2 FOREIGN KEY ( item_id )
        REFERENCES mwd.items ( item_id )
            ON DELETE CASCADE;
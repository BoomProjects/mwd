ALTER TABLE mwd.store_items
    ADD CONSTRAINT store_items_fk2 FOREIGN KEY ( store_id )
        REFERENCES mwd.stores ( store_id )
            ON DELETE CASCADE;
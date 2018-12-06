ALTER TABLE mwd.accessories
    ADD CONSTRAINT accessories_fk FOREIGN KEY ( created_item_id )
        REFERENCES mwd.created_items ( created_item_id )
            ON DELETE CASCADE;
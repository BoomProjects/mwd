ALTER TABLE mwd.kit_items
    ADD CONSTRAINT kit_items_fk FOREIGN KEY ( kit_id )
        REFERENCES mwd.kits ( kit_id )
            ON DELETE CASCADE;
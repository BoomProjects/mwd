ALTER TABLE mwd.set_items
    ADD CONSTRAINT set_items_fk FOREIGN KEY ( set_id )
        REFERENCES mwd.sets ( set_id )
            ON DELETE CASCADE;
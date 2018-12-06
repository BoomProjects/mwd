ALTER TABLE mwd.sets
    ADD CONSTRAINT sets_items_fk FOREIGN KEY ( set_id )
        REFERENCES mwd.items ( item_id );
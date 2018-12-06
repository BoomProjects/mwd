ALTER TABLE mwd.kits
    ADD CONSTRAINT kits_fk FOREIGN KEY ( kit_id )
        REFERENCES mwd.items ( item_id );
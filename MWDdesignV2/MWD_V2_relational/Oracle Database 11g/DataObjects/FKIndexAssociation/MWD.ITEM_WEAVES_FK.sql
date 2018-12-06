ALTER TABLE mwd.item_weaves
    ADD CONSTRAINT item_weaves_fk FOREIGN KEY ( weave_id )
        REFERENCES mwd.weaves ( weave_id )
            ON DELETE CASCADE;
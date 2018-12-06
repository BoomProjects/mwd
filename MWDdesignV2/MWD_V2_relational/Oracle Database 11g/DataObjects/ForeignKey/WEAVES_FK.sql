ALTER TABLE mwd.weaves
    ADD CONSTRAINT weaves_fk FOREIGN KEY ( parent_weave_id )
        REFERENCES mwd.weaves ( weave_id )
            ON DELETE CASCADE;
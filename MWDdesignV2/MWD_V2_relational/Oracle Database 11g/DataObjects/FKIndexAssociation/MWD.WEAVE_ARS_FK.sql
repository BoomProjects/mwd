ALTER TABLE mwd.weave_ars
    ADD CONSTRAINT weave_ars_fk FOREIGN KEY ( weave_id )
        REFERENCES mwd.weaves ( weave_id )
            ON DELETE CASCADE;
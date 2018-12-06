ALTER TABLE mwd.persons
    ADD CONSTRAINT persons_fk FOREIGN KEY ( location_id )
        REFERENCES mwd.locations ( location_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;
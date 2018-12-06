ALTER TABLE mwd.locations
    ADD CONSTRAINT locations_persons_fk FOREIGN KEY ( person_id )
        REFERENCES mwd.persons ( person_id )
            ON DELETE CASCADE;
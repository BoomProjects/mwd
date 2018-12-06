ALTER TABLE mwd.natural_persons
    ADD CONSTRAINT natural_persons_fk FOREIGN KEY ( person_id )
        REFERENCES mwd.persons ( person_id )
            ON DELETE CASCADE;
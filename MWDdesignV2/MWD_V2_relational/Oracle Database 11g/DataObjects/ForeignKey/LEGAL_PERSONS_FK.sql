ALTER TABLE mwd.legal_persons
    ADD CONSTRAINT legal_persons_fk FOREIGN KEY ( person_id )
        REFERENCES mwd.persons ( person_id )
            ON DELETE CASCADE;
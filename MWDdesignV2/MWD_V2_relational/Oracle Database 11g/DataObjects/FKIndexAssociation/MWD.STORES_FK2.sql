ALTER TABLE mwd.stores
    ADD CONSTRAINT stores_fk2 FOREIGN KEY ( legal_person_id )
        REFERENCES mwd.legal_persons ( person_id );
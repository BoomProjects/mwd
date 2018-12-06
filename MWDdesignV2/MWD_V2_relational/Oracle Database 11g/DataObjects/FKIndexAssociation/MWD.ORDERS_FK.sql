ALTER TABLE mwd.orders
    ADD CONSTRAINT orders_fk FOREIGN KEY ( person_id )
        REFERENCES mwd.persons ( person_id )
            ON DELETE CASCADE;
ALTER TABLE mwd.location_addresses
    ADD CONSTRAINT location_addresses_fk FOREIGN KEY ( location_id )
        REFERENCES mwd.locations ( location_id )
            ON DELETE CASCADE;
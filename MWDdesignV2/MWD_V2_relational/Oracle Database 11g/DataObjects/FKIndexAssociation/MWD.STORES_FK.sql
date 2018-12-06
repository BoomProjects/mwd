ALTER TABLE mwd.stores
    ADD CONSTRAINT stores_fk FOREIGN KEY ( location_address_id )
        REFERENCES mwd.location_addresses ( location_address_id );
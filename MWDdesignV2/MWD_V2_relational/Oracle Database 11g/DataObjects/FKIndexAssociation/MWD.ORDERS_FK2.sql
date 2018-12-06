ALTER TABLE mwd.orders
    ADD CONSTRAINT orders_fk2 FOREIGN KEY ( location_address_id )
        REFERENCES mwd.location_addresses ( location_address_id )
            ON DELETE CASCADE;
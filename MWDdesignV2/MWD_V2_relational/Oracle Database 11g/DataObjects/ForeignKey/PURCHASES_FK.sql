ALTER TABLE mwd.purchases
    ADD CONSTRAINT purchases_fk FOREIGN KEY ( order_id )
        REFERENCES mwd.orders ( order_id );
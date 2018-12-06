ALTER TABLE mwd.order_items
    ADD CONSTRAINT order_items_fk FOREIGN KEY ( order_id )
        REFERENCES mwd.orders ( order_id )
            ON DELETE CASCADE;
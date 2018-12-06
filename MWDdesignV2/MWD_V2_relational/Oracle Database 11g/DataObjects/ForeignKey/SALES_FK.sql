ALTER TABLE mwd.sales
    ADD CONSTRAINT sales_fk FOREIGN KEY ( order_id )
        REFERENCES mwd.orders ( order_id );
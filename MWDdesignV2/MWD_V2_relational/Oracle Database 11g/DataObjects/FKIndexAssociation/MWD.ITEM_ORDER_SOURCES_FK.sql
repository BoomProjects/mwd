ALTER TABLE mwd.item_order_sources
    ADD CONSTRAINT item_order_sources_fk FOREIGN KEY ( item_id )
        REFERENCES mwd.items ( item_id )
            ON DELETE CASCADE;
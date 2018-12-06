ALTER TABLE mwd.store_items ADD CONSTRAINT store_items_pk PRIMARY KEY ( store_item_id );

ALTER TABLE mwd.store_items ADD CONSTRAINT store_items_uk UNIQUE ( store_id,
                                                                   item_id );
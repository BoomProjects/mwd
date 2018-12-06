ALTER TABLE mwd.set_items ADD CONSTRAINT set_items_pk PRIMARY KEY ( set_item_id );

ALTER TABLE mwd.set_items ADD CONSTRAINT set_items_uk UNIQUE ( set_id,
                                                               created_item_id );
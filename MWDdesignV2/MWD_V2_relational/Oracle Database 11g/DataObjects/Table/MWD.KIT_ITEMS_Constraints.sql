ALTER TABLE mwd.kit_items ADD CONSTRAINT kit_items_pk PRIMARY KEY ( kit_item_id );

ALTER TABLE mwd.kit_items ADD CONSTRAINT kit_items_uk UNIQUE ( kit_id,
                                                               item_id );

ALTER TABLE mwd.kit_items ADD CONSTRAINT kit_items_uk2 UNIQUE ( kit_id );
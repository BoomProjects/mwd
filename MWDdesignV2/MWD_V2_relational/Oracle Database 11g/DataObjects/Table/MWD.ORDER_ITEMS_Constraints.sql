ALTER TABLE mwd.order_items ADD CONSTRAINT order_items_pk PRIMARY KEY ( order_item_id );

ALTER TABLE mwd.order_items ADD CONSTRAINT order_items_uk UNIQUE ( order_id,
                                                                   item_id );

ALTER TABLE mwd.order_items ADD CONSTRAINT order_items_uk2 UNIQUE ( order_id,
                                                                    order_item_id );
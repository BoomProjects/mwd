CREATE TABLE mwd.order_items (
    order_item_id    NUMBER(3) NOT NULL,
    order_id         NUMBER NOT NULL,
    item_id          NUMBER NOT NULL,
    unit_price       NUMBER(8, 2) DEFAULT 0 NOT NULL,
    quantity         NUMBER(8) DEFAULT 1 NOT NULL,
    item_status      VARCHAR2(30 BYTE) DEFAULT 'NOT_MADE' NOT NULL,
    order_item_url   VARCHAR2(2000 BYTE)
);

COMMENT ON COLUMN mwd.order_items.item_status IS
    'ENUM(''TO_DELIVER'', ''DELIVERED'', ''CANCELLED''), DEFAULT ''TO_DELIVER''';

CREATE UNIQUE INDEX mwd.order_items_pk ON
    mwd.order_items (
        order_item_id
    ASC );

CREATE UNIQUE INDEX mwd.order_items_uk ON
    mwd.order_items (
        order_id
    ASC,
        item_id
    ASC );

CREATE UNIQUE INDEX mwd.order_items_uk2 ON
    mwd.order_items (
        order_id
    ASC );

CREATE UNIQUE INDEX mwd.order_items_uk3 ON
    mwd.order_items (
        order_id
    ASC,
        order_item_id
    ASC );
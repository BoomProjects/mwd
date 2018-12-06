CREATE TABLE mwd.kit_items (
    kit_item_id   NUMBER NOT NULL,
    kit_id        NUMBER NOT NULL,
    item_id       NUMBER NOT NULL,
    unit_price    NUMBER(8, 2) DEFAULT 0 NOT NULL,
    quantity      NUMBER(8) DEFAULT 1 NOT NULL
);

CREATE UNIQUE INDEX mwd.kit_items_pk ON
    mwd.kit_items (
        kit_item_id
    ASC );

CREATE UNIQUE INDEX mwd.kit_items_uk ON
    mwd.kit_items (
        kit_id
    ASC,
        item_id
    ASC );
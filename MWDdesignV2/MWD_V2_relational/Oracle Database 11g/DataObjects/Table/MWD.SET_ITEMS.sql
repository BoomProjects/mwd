CREATE TABLE mwd.set_items (
    set_item_id       NUMBER NOT NULL,
    set_id            NUMBER NOT NULL,
    created_item_id   NUMBER NOT NULL,
    unit_price        NUMBER(8, 2) DEFAULT 0 NOT NULL,
    quantity          NUMBER(8) DEFAULT 1 NOT NULL
);

CREATE UNIQUE INDEX mwd.set_items_pk ON
    mwd.set_items (
        set_item_id
    ASC );

CREATE UNIQUE INDEX mwd.set_items_uk ON
    mwd.set_items (
        set_id
    ASC,
        created_item_id
    ASC );
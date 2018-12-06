CREATE TABLE mwd.store_items (
    store_item_id     NUMBER NOT NULL,
    store_id          NUMBER NOT NULL,
    item_id           NUMBER NOT NULL,
    unit_price        NUMBER(8, 2) DEFAULT 0 NOT NULL,
    sale_start_date   DATE,
    discount_pct      NUMBER(4, 2),
    sale_end_date     DATE
);

CREATE UNIQUE INDEX mwd.store_items_pk ON
    mwd.store_items (
        store_item_id
    ASC );
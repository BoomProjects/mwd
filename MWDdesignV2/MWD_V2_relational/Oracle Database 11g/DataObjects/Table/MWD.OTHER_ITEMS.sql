CREATE TABLE mwd.other_items (
    other_item_id     NUMBER NOT NULL,
    other_item_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.other_items_pk ON
    mwd.other_items (
        other_item_id
    ASC );
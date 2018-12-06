CREATE TABLE mwd.created_items (
    created_item_id     NUMBER NOT NULL,
    created_item_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.created_items_pk ON
    mwd.created_items (
        created_item_id
    ASC );
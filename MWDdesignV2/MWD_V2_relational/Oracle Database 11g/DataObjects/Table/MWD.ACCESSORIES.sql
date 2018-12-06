CREATE TABLE mwd.accessories (
    created_item_id   NUMBER NOT NULL,
    accessory_type    VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.accessories_pk ON
    mwd.accessories (
        created_item_id
    ASC );
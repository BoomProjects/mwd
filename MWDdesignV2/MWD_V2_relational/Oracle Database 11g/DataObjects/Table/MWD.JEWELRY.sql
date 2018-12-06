CREATE TABLE mwd.jewelry (
    created_item_id   NUMBER NOT NULL,
    jewelry_type      VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.jewelry_pk ON
    mwd.jewelry (
        created_item_id
    ASC );
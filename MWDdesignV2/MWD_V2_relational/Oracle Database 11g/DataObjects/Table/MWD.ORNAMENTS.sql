CREATE TABLE mwd.ornaments (
    created_item_id   NUMBER NOT NULL,
    ornament_type     VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.ornaments_pk ON
    mwd.ornaments (
        created_item_id
    ASC );
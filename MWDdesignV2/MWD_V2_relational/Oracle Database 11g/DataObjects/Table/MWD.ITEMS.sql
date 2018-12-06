CREATE TABLE mwd.items (
    item_id            NUMBER NOT NULL,
    name               VARCHAR2(30 BYTE) NOT NULL,
    list_price         NUMBER(8, 2) DEFAULT 0,
    availability       VARCHAR2(30 BYTE) DEFAULT 'IN_STOCK',
    sale_status        VARCHAR2(30 BYTE) DEFAULT 'NONE',
    item_type          VARCHAR2(45 BYTE),
    description        VARCHAR2(2000 BYTE),
    cost_total         NUMBER(8, 2) DEFAULT 0,
    time_min           NUMBER DEFAULT 0,
    length_mm          NUMBER(8, 2),
    width_mm           NUMBER(8, 2),
    thickness_mm       NUMBER(8, 2),
    height_mm          NUMBER(8, 2),
    weight_gr          NUMBER(8, 2),
    current_amount     NUMBER,
    purchased_amount   NUMBER
);

CREATE INDEX mwd.items_ix ON
    mwd.items (
        sale_status
    ASC );

CREATE INDEX mwd.items_ix2 ON
    mwd.items (
        item_type
    ASC );

CREATE UNIQUE INDEX mwd.items_pk ON
    mwd.items (
        item_id
    ASC );

CREATE UNIQUE INDEX mwd.items_uk ON
    mwd.items (
        name
    ASC );
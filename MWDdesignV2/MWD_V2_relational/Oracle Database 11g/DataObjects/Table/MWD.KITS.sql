CREATE TABLE mwd.kits (
    kit_id         NUMBER NOT NULL,
    name           VARCHAR2(30 BYTE),
    list_price     NUMBER(8, 2) DEFAULT 0 NOT NULL,
    availability   VARCHAR2(30 BYTE) DEFAULT 'IN_STOCK',
    sale_status    VARCHAR2(30 BYTE) DEFAULT 'NONE'
);

CREATE UNIQUE INDEX mwd.kits_pk ON
    mwd.kits (
        kit_id
    ASC );

CREATE UNIQUE INDEX mwd.kits_uk ON
    mwd.kits (
        name
    ASC );
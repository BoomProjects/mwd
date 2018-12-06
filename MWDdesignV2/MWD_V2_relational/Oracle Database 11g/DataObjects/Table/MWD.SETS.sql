CREATE TABLE mwd.sets (
    set_id         NUMBER NOT NULL,
    name           VARCHAR2(45 BYTE),
    list_price     NUMBER(8, 2) DEFAULT 0 NOT NULL,
    availability   VARCHAR2(45 BYTE) DEFAULT 'IN_STOCK',
    sale_status    VARCHAR2(45 BYTE) DEFAULT 'NONE'
);

CREATE UNIQUE INDEX mwd.sets_pk ON
    mwd.sets (
        set_id
    ASC );

CREATE UNIQUE INDEX mwd.sets_uk ON
    mwd.sets (
        name
    ASC );
CREATE TABLE mwd.item_order_sources (
    item_order_source_id   NUMBER NOT NULL,
    item_id                NUMBER NOT NULL,
    source_productcode     VARCHAR2(45 BYTE),
    source_unit_price      NUMBER(8, 2) DEFAULT 0,
    source_amount          NUMBER DEFAULT 0,
    source_brand           VARCHAR2(500 BYTE),
    source_order_url       VARCHAR2(2000 BYTE),
    modified_date          TIMESTAMP WITH LOCAL TIME ZONE
);

CREATE UNIQUE INDEX mwd.item_order_sources_pk ON
    mwd.item_order_sources (
        item_id
    ASC );

CREATE UNIQUE INDEX mwd.item_order_sources_un ON
    mwd.item_order_sources (
        item_id
    ASC,
        source_productcode
    ASC );

CREATE UNIQUE INDEX mwd.item_order_sources_un2 ON
    mwd.item_order_sources (
        source_productcode
    ASC,
        source_brand
    ASC );
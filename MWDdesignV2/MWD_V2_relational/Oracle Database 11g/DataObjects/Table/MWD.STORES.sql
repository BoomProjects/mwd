CREATE TABLE mwd.stores (
    store_id              NUMBER NOT NULL,
    name                  VARCHAR2(255 BYTE),
    website               VARCHAR2(2000 BYTE),
    open_date             TIMESTAMP WITH LOCAL TIME ZONE,
    store_type            VARCHAR2(50 BYTE),
    location_address_id   NUMBER NOT NULL,
    legal_person_id       NUMBER NOT NULL
);

CREATE UNIQUE INDEX mwd.stores_pk ON
    mwd.stores (
        store_id
    ASC );
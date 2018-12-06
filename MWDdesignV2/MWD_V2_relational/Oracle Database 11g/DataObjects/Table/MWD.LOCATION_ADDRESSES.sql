CREATE TABLE mwd.location_addresses (
    location_address_id   NUMBER NOT NULL,
    location_id           NUMBER NOT NULL,
    street                VARCHAR2(255 BYTE),
    nr                    NUMBER,
    nr_addition           VARCHAR2(5 BYTE),
    city                  VARCHAR2(50 BYTE),
    country               VARCHAR2(50 BYTE),
    postal_code           VARCHAR2(12 BYTE),
    latitude              NUMBER(9, 6),
    longitude             NUMBER(9, 6),
    is_main               CHAR(1 BYTE),
    is_active             CHAR(1 BYTE),
    address_type          VARCHAR2(30 BYTE)
);

CREATE INDEX mwd.location_addresses_ix ON
    mwd.location_addresses (
        city
    ASC );

CREATE UNIQUE INDEX mwd.location_addresses_pk ON
    mwd.location_addresses (
        location_address_id
    ASC );
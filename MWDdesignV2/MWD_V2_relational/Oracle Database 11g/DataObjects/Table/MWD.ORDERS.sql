CREATE TABLE mwd.orders (
    order_id              NUMBER NOT NULL,
    location_address_id   NUMBER,
    person_id             NUMBER,
    order_type            VARCHAR2(30 BYTE) DEFAULT 'SALE' NOT NULL,
    order_date            TIMESTAMP WITH LOCAL TIME ZONE,
    shipping              NUMBER(10, 2),
    is_online             CHAR(1 BYTE)
);

CREATE UNIQUE INDEX mwd.orders_pk ON
    mwd.orders (
        order_id
    ASC );
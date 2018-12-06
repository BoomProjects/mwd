CREATE TABLE mwd.purchases (
    order_id       NUMBER NOT NULL,
    order_status   VARCHAR2(45 BYTE) NOT NULL,
    tax_returned   CHAR(1 BYTE)
);

CREATE UNIQUE INDEX mwd.purchases_pk ON
    mwd.purchases (
        order_id
    ASC );
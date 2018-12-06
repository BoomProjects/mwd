CREATE TABLE mwd.sales (
    order_id          NUMBER NOT NULL,
    invoice_year      VARCHAR2(4 BYTE) NOT NULL,
    invoice_quarter   VARCHAR2(3 BYTE) NOT NULL,
    invoice_number    VARCHAR2(45 BYTE) NOT NULL,
    order_status      VARCHAR2(45 BYTE) NOT NULL,
    complete_date     TIMESTAMP WITH LOCAL TIME ZONE
);

CREATE UNIQUE INDEX mwd.sales_ix ON
    mwd.sales (
        invoice_year
    ASC,
        invoice_quarter
    ASC,
        invoice_number
    ASC );

CREATE UNIQUE INDEX mwd.sales_pk ON
    mwd.sales (
        order_id
    ASC );
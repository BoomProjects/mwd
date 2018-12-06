CREATE TABLE mwd.persons (
    person_id       NUMBER NOT NULL,
    email           VARCHAR2(30 BYTE),
    phone_fixed     VARCHAR2(30 BYTE),
    is_competitor   CHAR(1 BYTE) NOT NULL,
    person_type     VARCHAR2(30 BYTE)
);

CREATE UNIQUE INDEX mwd.persons_pk ON
    mwd.persons (
        person_id
    ASC );
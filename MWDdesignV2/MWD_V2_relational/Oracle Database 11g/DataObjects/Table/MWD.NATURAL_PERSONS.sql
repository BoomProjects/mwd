CREATE TABLE mwd.natural_persons (
    person_id    NUMBER NOT NULL,
    first_name   VARCHAR2(30 BYTE) NOT NULL,
    last_name    VARCHAR2(30 BYTE) NOT NULL
);

CREATE INDEX mwd.natural_persons_ix ON
    mwd.natural_persons (
        last_name
    ASC,
        first_name
    ASC );

CREATE UNIQUE INDEX mwd.natural_persons_pk ON
    mwd.natural_persons (
        person_id
    ASC );
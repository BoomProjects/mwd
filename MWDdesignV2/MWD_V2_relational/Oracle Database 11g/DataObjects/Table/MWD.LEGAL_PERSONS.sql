CREATE TABLE mwd.legal_persons (
    person_id    NUMBER NOT NULL,
    legal_name   VARCHAR2(30 BYTE) NOT NULL,
    website      VARCHAR2(2000 BYTE)
);

CREATE UNIQUE INDEX mwd.legal_persons_ix ON
    mwd.legal_persons (
        legal_name
    ASC );

CREATE UNIQUE INDEX mwd.legal_persons_pk ON
    mwd.legal_persons (
        person_id
    ASC );
CREATE TABLE mwd.lace (
    lace_id     NUMBER NOT NULL,
    lace_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.lace_pk ON
    mwd.lace (
        lace_id
    ASC );
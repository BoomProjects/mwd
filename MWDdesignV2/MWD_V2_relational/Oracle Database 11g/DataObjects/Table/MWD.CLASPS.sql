CREATE TABLE mwd.clasps (
    clasp_id     NUMBER NOT NULL,
    clasp_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.clasps_pk ON
    mwd.clasps (
        clasp_id
    ASC );
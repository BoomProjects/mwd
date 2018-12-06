CREATE TABLE mwd.rings (
    ring_id     NUMBER NOT NULL,
    ring_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.rings_pk ON
    mwd.rings (
        ring_id
    ASC );
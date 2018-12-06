CREATE TABLE mwd.scales (
    scale_id     NUMBER NOT NULL,
    scale_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.scales_pk ON
    mwd.scales (
        scale_id
    ASC );
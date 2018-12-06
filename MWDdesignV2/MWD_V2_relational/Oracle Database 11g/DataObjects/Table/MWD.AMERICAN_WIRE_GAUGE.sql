CREATE TABLE mwd.american_wire_gauge (
    awg_id          NUMBER NOT NULL,
    awg             VARCHAR2(30 BYTE),
    inch_diameter   NUMBER(10, 4),
    diameter_mm     NUMBER(10, 4)
);

CREATE UNIQUE INDEX mwd.american_wire_gauge_pk ON
    mwd.american_wire_gauge (
        awg_id
    ASC );

CREATE UNIQUE INDEX mwd.american_wire_gauge_uk ON
    mwd.american_wire_gauge (
        awg
    ASC );
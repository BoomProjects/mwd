CREATE TABLE mwd.standard_wire_gauge (
    swg_id          NUMBER NOT NULL,
    swg             VARCHAR2(30 BYTE),
    inch_diameter   NUMBER(10, 4),
    diameter_mm     NUMBER(10, 4)
);

CREATE UNIQUE INDEX mwd.standard_wire_gauge_pk ON
    mwd.standard_wire_gauge (
        swg_id
    ASC );

CREATE UNIQUE INDEX mwd.standard_wire_gauge_uk ON
    mwd.standard_wire_gauge (
        swg
    ASC );
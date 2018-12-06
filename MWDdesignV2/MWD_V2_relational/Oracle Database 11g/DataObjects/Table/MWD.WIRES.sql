CREATE TABLE mwd.wires (
    wire_id     NUMBER NOT NULL,
    wire_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.wires_pk ON
    mwd.wires (
        wire_id
    ASC );
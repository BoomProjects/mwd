CREATE TABLE mwd.beads (
    bead_id     NUMBER NOT NULL,
    bead_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.beads_pk ON
    mwd.beads (
        bead_id
    ASC );
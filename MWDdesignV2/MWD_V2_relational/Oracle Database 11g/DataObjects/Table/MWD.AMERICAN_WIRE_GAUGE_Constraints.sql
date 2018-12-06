ALTER TABLE mwd.american_wire_gauge ADD CONSTRAINT american_wire_gauge_pk PRIMARY KEY ( awg_id );

ALTER TABLE mwd.american_wire_gauge ADD CONSTRAINT american_wire_gauge_uk UNIQUE ( awg );
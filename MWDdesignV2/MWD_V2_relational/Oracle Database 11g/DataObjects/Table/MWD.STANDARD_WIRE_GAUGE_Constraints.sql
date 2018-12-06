ALTER TABLE mwd.standard_wire_gauge ADD CONSTRAINT standard_wire_gauge_pk PRIMARY KEY ( swg_id );

ALTER TABLE mwd.standard_wire_gauge ADD CONSTRAINT standard_wire_gauge_uk UNIQUE ( swg );
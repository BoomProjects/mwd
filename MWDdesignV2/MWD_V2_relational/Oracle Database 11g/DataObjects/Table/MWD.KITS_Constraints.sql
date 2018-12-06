ALTER TABLE mwd.kits ADD CONSTRAINT kits_pk PRIMARY KEY ( kit_id );

ALTER TABLE mwd.kits ADD CONSTRAINT kits_uk UNIQUE ( name );
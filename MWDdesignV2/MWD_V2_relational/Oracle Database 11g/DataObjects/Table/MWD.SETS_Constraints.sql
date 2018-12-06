ALTER TABLE mwd.sets ADD CONSTRAINT sets_pk PRIMARY KEY ( set_id );

ALTER TABLE mwd.sets ADD CONSTRAINT sets_uk UNIQUE ( name );
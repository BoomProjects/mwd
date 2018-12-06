ALTER TABLE mwd.weaves ADD CONSTRAINT weaves_pk PRIMARY KEY ( weave_id );

ALTER TABLE mwd.weaves ADD CONSTRAINT weaves_uk UNIQUE ( name );
ALTER TABLE mwd.items ADD CONSTRAINT items_pk PRIMARY KEY ( item_id );

ALTER TABLE mwd.items ADD CONSTRAINT items_uk UNIQUE ( name );
ALTER TABLE mwd.item_weaves ADD CONSTRAINT item_weaves_pk PRIMARY KEY ( item_weave_id );

ALTER TABLE mwd.item_weaves
    ADD CONSTRAINT item_weaves_uk UNIQUE ( item_id,
                                           weave_id,
                                           ingredient_id );
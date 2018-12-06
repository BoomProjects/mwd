ALTER TABLE mwd.item_ingredients ADD CONSTRAINT item_ingredients_pk PRIMARY KEY ( item_ingredient_id );

ALTER TABLE mwd.item_ingredients ADD CONSTRAINT item_ingredients_uk UNIQUE ( item_id,
                                                                             ingredient_id );
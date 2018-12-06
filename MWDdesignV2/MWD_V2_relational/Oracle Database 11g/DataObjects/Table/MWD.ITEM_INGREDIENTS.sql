CREATE TABLE mwd.item_ingredients (
    item_ingredient_id   NUMBER(3) NOT NULL,
    item_id              NUMBER NOT NULL,
    ingredient_id        NUMBER NOT NULL,
    unit_price           NUMBER(8, 2) DEFAULT 0,
    quantity             NUMBER(8) DEFAULT 0
);

CREATE UNIQUE INDEX mwd.item_ingredients_pk ON
    mwd.item_ingredients (
        item_ingredient_id
    ASC );

CREATE UNIQUE INDEX mwd.item_ingredients_uk ON
    mwd.item_ingredients (
        item_id
    ASC,
        ingredient_id
    ASC );
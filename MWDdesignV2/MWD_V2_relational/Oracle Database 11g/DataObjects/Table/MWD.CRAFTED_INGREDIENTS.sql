CREATE TABLE mwd.crafted_ingredients (
    crafted_ingredient_id          NUMBER NOT NULL,
    crafted_ingredient_type        VARCHAR2(45 BYTE),
    raw_ingredient_id              NUMBER,
    raw_ingredient_weight_amount   NUMBER(10, 4)
);

CREATE UNIQUE INDEX mwd.crafted_ingredients_pk ON
    mwd.crafted_ingredients (
        crafted_ingredient_id
    ASC );
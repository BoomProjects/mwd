CREATE TABLE mwd.raw_ingredients (
    raw_ingredient_id     NUMBER NOT NULL,
    raw_ingredient_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.raw_ingredients_pk ON
    mwd.raw_ingredients (
        raw_ingredient_id
    ASC );
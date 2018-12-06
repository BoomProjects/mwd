CREATE TABLE mwd.other_ingredients (
    other_ingredient_id     NUMBER NOT NULL,
    other_ingredient_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.other_ingredients_pk ON
    mwd.other_ingredients (
        other_ingredient_id
    ASC );
CREATE TABLE mwd.ingredients (
    ingredient_id         NUMBER NOT NULL,
    material              VARCHAR2(45 BYTE) DEFAULT 'OTHER',
    color                 VARCHAR2(45 BYTE) DEFAULT 'NATURAL',
    wire_diameter_mm      NUMBER(8, 2),
    inner_diameter_mm     NUMBER(8, 2),
    outer_diameter_mm     NUMBER(8, 2),
    aspect_ratio          NUMBER(8, 2),
    opening_diameter_mm   NUMBER(8, 2),
    ingredient_type       VARCHAR2(45 BYTE),
    wire_diameter_swg     VARCHAR2(30 BYTE),
    wire_diameter_awg     VARCHAR2(30 BYTE),
    inner_diameter_inch   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.ingredients_pk ON
    mwd.ingredients (
        ingredient_id
    ASC );

CREATE UNIQUE INDEX mwd.ingredients_uk ON
    mwd.ingredients (
        material
    ASC );
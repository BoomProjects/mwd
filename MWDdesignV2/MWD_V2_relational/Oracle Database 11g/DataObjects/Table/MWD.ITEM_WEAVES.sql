CREATE TABLE mwd.item_weaves (
    item_weave_id   NUMBER NOT NULL,
    item_id         NUMBER NOT NULL,
    weave_id        NUMBER NOT NULL,
    ingredient_id   NUMBER,
    ring_quantity   NUMBER DEFAULT 1
);

CREATE UNIQUE INDEX mwd.item_weaves_pk ON
    mwd.item_weaves (
        item_weave_id
    ASC );

CREATE UNIQUE INDEX mwd.item_weaves_uk ON
    mwd.item_weaves (
        item_id
    ASC,
        weave_id
    ASC,
        ingredient_id
    ASC );
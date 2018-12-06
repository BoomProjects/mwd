CREATE TABLE mwd.weave_ars (
    weave_ar_id     NUMBER NOT NULL,
    weave_id        NUMBER NOT NULL,
    optimal_ar      NUMBER(8, 2),
    min_ar          NUMBER(8, 2),
    max_ar          NUMBER(8, 2),
    ar_sort_order   NUMBER(8)
);

CREATE UNIQUE INDEX mwd.weave_ars_pk ON
    mwd.weave_ars (
        weave_ar_id
    ASC );

CREATE UNIQUE INDEX mwd.weave_ars_uk ON
    mwd.weave_ars (
        weave_id
    ASC,
        optimal_ar
    ASC );
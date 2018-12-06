ALTER TABLE mwd.weave_ars ADD CONSTRAINT weave_ars_pk PRIMARY KEY ( weave_ar_id );

ALTER TABLE mwd.weave_ars ADD CONSTRAINT weave_ars_uk UNIQUE ( weave_id,
                                                               optimal_ar );
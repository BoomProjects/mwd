CREATE TABLE mwd.materials (
    abbreviation              VARCHAR2(45 BYTE) NOT NULL,
    base_material             VARCHAR2(45 BYTE),
    processing                VARCHAR2(45 BYTE),
    processing_material       VARCHAR2(45 BYTE),
    allergens_excluded        VARCHAR2(45 BYTE),
    base_materials_included   VARCHAR2(2000 BYTE),
    parent_material           VARCHAR2(45 BYTE)
);

CREATE INDEX mwd.materials_pk ON
    mwd.materials (
        abbreviation
    ASC );
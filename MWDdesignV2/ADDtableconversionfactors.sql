--deployed
CREATE TABLE mwd.conversion_factors (
    name_of_unit           VARCHAR2(45 BYTE) NOT NULL,
    symbol                 VARCHAR2(45 BYTE),
    definition             VARCHAR2(100 BYTE),
    relation_to_si_units   VARCHAR2(100 BYTE),
    conversion_type        VARCHAR2(45 BYTE)
);

CREATE INDEX mwd.conversion_factors_ix ON
    mwd.conversion_factors (
        conversion_type
    ASC );

ALTER TABLE mwd.conversion_factors ADD CONSTRAINT conversion_factors_pk PRIMARY KEY ( name_of_unit );

ALTER TABLE MWD.CONVERSION_FACTORS
RENAME COLUMN RELATION_TO_SI_UNITS TO METER_FACTOR;
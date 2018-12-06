CREATE TABLE mwd.weaves (
    weave_id          NUMBER NOT NULL,
    name              VARCHAR2(30 BYTE),
    synonyms          VARCHAR2(2000 BYTE),
    parent_weave_id   NUMBER,
    complexity        VARCHAR2(30 BYTE) DEFAULT 'BEGINNER',
    description       VARCHAR2(2000 BYTE),
    speed_weave       VARCHAR2(2000 BYTE),
    source_url        VARCHAR2(2000 BYTE)
);

CREATE UNIQUE INDEX mwd.weaves_pk ON
    mwd.weaves (
        weave_id
    ASC );

CREATE UNIQUE INDEX mwd.weaves_uk ON
    mwd.weaves (
        name
    ASC );
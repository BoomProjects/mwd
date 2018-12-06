CREATE TABLE mwd.colors (
    name          VARCHAR2(45 BYTE) NOT NULL,
    base_color    VARCHAR2(45 BYTE),
    tint          VARCHAR2(45 BYTE),
    color_type    VARCHAR2(45 BYTE),
    added_color   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.colors_pk ON
    mwd.colors (
        name
    ASC );
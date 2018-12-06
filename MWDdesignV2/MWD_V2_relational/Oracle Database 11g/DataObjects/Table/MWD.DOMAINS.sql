CREATE TABLE mwd.domains (
    domain_value_id          NUMBER NOT NULL,
    domain_value             VARCHAR2(100 BYTE) NOT NULL,
    domain_name              VARCHAR2(100 BYTE) NOT NULL,
    domain_refloc            VARCHAR2(100 BYTE) DEFAULT 'UNKNOWN' NOT NULL,
    sort_order               NUMBER NOT NULL,
    parent_domain_value_id   NUMBER,
    description              VARCHAR2(2000 BYTE),
    domain_type              VARCHAR2(30 BYTE) DEFAULT 'LIST_OF_VALUES' NOT NULL,
    active                   CHAR(1 BYTE) DEFAULT 'Y' NOT NULL,
    user_created             VARCHAR2(30 BYTE) NOT NULL,
    date_created             DATE NOT NULL,
    user_modified            VARCHAR2(30 BYTE) NOT NULL,
    date_modified            DATE NOT NULL
);

CREATE UNIQUE INDEX mwd.domains_pk ON
    mwd.domains (
        domain_value_id
    ASC );

CREATE UNIQUE INDEX mwd.domains_uk ON
    mwd.domains (
        domain_name
    ASC,
        domain_value
    ASC );
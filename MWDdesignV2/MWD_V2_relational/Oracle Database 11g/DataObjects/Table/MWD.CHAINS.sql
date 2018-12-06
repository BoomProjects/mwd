CREATE TABLE mwd.chains (
    chain_id     NUMBER NOT NULL,
    chain_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.chains_pk ON
    mwd.chains (
        chain_id
    ASC );
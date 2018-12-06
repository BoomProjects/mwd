CREATE TABLE mwd.tools (
    tool_id     NUMBER NOT NULL,
    tool_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.tools_pk ON
    mwd.tools (
        tool_id
    ASC );
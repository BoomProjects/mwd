CREATE TABLE mwd.attachments (
    attachment_id     NUMBER NOT NULL,
    attachment_type   VARCHAR2(45 BYTE)
);

CREATE UNIQUE INDEX mwd.attachments_pk ON
    mwd.attachments (
        attachment_id
    ASC );
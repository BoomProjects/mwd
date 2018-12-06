CREATE TABLE mwd.locations (
    location_id   NUMBER NOT NULL,
    person_id     NUMBER NOT NULL
);

CREATE UNIQUE INDEX mwd.locations_pk ON
    mwd.locations (
        location_id
    ASC );
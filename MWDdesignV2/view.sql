--deployed
CREATE OR REPLACE VIEW mwd.legal_persons_view AS
    SELECT
        p.person_id,
        l.legal_name,
        p.email,
        p.phone_fixed,
        p.is_competitor,
        p.person_type,
        l.website
    FROM
        persons p
        JOIN legal_persons l ON ( p.person_id = l.person_id );

ALTER VIEW mwd.legal_persons_view ADD CONSTRAINT legal_persons_view_pk PRIMARY KEY ( person_id ) DISABLE;

--deployed
CREATE OR REPLACE VIEW mwd.natural_persons_view AS
    SELECT
        p.person_id,
        n.first_name,
        n.last_name,
        p.email,
        p.phone_fixed,
        p.is_competitor,
        p.person_type
    FROM
        persons p
        JOIN natural_persons n ON ( p.person_id = n.person_id );

ALTER VIEW mwd.natural_persons_view ADD CONSTRAINT natural_persons_view_pk PRIMARY KEY ( person_id ) DISABLE;

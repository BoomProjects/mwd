ALTER TABLE mwd.domains ADD CONSTRAINT domains_pk PRIMARY KEY ( domain_value_id );

ALTER TABLE mwd.domains ADD CONSTRAINT domains_uk UNIQUE ( domain_name,
                                                           domain_value );
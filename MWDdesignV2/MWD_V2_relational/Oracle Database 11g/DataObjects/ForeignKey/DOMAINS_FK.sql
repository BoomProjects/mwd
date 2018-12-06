ALTER TABLE mwd.domains
    ADD CONSTRAINT domains_fk FOREIGN KEY ( parent_domain_value_id )
        REFERENCES mwd.domains ( domain_value_id )
            ON DELETE CASCADE;
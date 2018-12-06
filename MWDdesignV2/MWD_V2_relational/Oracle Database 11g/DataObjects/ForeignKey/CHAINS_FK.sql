ALTER TABLE mwd.chains
    ADD CONSTRAINT chains_fk FOREIGN KEY ( chain_id )
        REFERENCES mwd.raw_ingredients ( raw_ingredient_id )
            ON DELETE CASCADE;
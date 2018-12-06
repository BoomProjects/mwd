ALTER TABLE mwd.lace
    ADD CONSTRAINT lace_fk FOREIGN KEY ( lace_id )
        REFERENCES mwd.raw_ingredients ( raw_ingredient_id )
            ON DELETE CASCADE;
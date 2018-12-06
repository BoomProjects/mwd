ALTER TABLE mwd.wires
    ADD CONSTRAINT wires_fk FOREIGN KEY ( wire_id )
        REFERENCES mwd.raw_ingredients ( raw_ingredient_id )
            ON DELETE CASCADE;
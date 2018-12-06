ALTER TABLE mwd.scales
    ADD CONSTRAINT scales_fk FOREIGN KEY ( scale_id )
        REFERENCES mwd.crafted_ingredients ( crafted_ingredient_id )
            ON DELETE CASCADE;
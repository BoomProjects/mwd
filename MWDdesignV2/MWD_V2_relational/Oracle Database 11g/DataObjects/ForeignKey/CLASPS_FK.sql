ALTER TABLE mwd.clasps
    ADD CONSTRAINT clasps_fk FOREIGN KEY ( clasp_id )
        REFERENCES mwd.crafted_ingredients ( crafted_ingredient_id )
            ON DELETE CASCADE;
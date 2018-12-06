ALTER TABLE mwd.beads
    ADD CONSTRAINT beads_fk FOREIGN KEY ( bead_id )
        REFERENCES mwd.crafted_ingredients ( crafted_ingredient_id )
            ON DELETE CASCADE;
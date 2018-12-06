ALTER TABLE mwd.rings
    ADD CONSTRAINT rings_fk FOREIGN KEY ( ring_id )
        REFERENCES mwd.crafted_ingredients ( crafted_ingredient_id )
            ON DELETE CASCADE;
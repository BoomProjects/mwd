ALTER TABLE mwd.ingredients
    ADD CONSTRAINT ingredients_fk2 FOREIGN KEY ( wire_diameter_swg )
        REFERENCES mwd.standard_wire_gauge ( swg );
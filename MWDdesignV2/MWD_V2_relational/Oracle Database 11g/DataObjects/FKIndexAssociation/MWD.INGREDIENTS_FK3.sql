ALTER TABLE mwd.ingredients
    ADD CONSTRAINT ingredients_fk3 FOREIGN KEY ( wire_diameter_awg )
        REFERENCES mwd.american_wire_gauge ( awg );
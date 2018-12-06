ALTER TABLE mwd.ingredients
    ADD CONSTRAINT ingredients_fk6 FOREIGN KEY ( color )
        REFERENCES mwd.colors ( name );
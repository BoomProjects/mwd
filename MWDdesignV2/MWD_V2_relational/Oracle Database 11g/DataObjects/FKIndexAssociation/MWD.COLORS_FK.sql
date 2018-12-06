ALTER TABLE mwd.colors
    ADD CONSTRAINT colors_fk FOREIGN KEY ( added_color )
        REFERENCES mwd.colors ( name );
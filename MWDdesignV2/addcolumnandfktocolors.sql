-- deployed
ALTER TABLE mwd.colors
    ADD CONSTRAINT colors_un UNIQUE ( tint,
                                      color_type,
                                      added_color,
                                      base_color );
/

ALTER TABLE MWD.COLORS
    ADD parent_color VARCHAR2(45 byte);

ALTER TABLE mwd.colors
    ADD CONSTRAINT colors_fk FOREIGN KEY ( parent_color )
        REFERENCES mwd.colors ( name );
/
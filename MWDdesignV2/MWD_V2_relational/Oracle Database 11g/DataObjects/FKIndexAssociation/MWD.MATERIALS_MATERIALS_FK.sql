ALTER TABLE mwd.materials
    ADD CONSTRAINT materials_materials_fk FOREIGN KEY ( parent_material )
        REFERENCES mwd.materials ( abbreviation );
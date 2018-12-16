
-- deployed	
ALTER TABLE mwd.materials
    ADD CONSTRAINT materials_fk FOREIGN KEY ( parent_material )
        REFERENCES mwd.materials ( abbreviation )
    NOT DEFERRABLE;
	
	
ALTER TABLE mwd.materials
    ADD CONSTRAINT materials_un UNIQUE ( processing_material,
                                         processing,
                                         base_material );

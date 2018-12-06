ALTER TABLE mwd.attachments
    ADD CONSTRAINT attachments_fk FOREIGN KEY ( attachment_id )
        REFERENCES mwd.crafted_ingredients ( crafted_ingredient_id )
            ON DELETE CASCADE;
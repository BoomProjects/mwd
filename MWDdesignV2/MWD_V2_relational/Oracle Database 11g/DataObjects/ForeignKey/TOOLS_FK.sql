ALTER TABLE mwd.tools
    ADD CONSTRAINT tools_fk FOREIGN KEY ( tool_id )
        REFERENCES mwd.items ( item_id )
            ON DELETE CASCADE;
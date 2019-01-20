DECLARE
    V_EXISTS NUMBER;
BEGIN
            SELECT COUNT(*) INTO V_EXISTS FROM JEWELRY WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
            IF V_EXISTS <> 0
                THEN
                    DELETE FROM JEWELRY WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
            END IF;

            SELECT COUNT(*) INTO V_EXISTS FROM ACCESSORIES WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
            IF V_EXISTS <> 0
                THEN
                    DELETE FROM ACCESSORIES WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
            END IF;

            SELECT COUNT(*) INTO V_EXISTS FROM ORNAMENTS WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
            IF V_EXISTS <> 0
                THEN
                    DELETE FROM ORNAMENTS WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
            END IF;
		
        SELECT COUNT(*) INTO V_EXISTS FROM OTHER_ITEMS WHERE OTHER_ITEM_ID = :P2010_CREATED_ITEM_ID;
        IF V_EXISTS <> 0
            THEN
                DELETE FROM OTHER_ITEMS WHERE OTHER_ITEM_ID = :P2010_CREATED_ITEM_ID;
        END IF;

        SELECT COUNT(*) INTO V_EXISTS FROM CREATED_ITEMS WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
        IF V_EXISTS <> 0
            THEN
                DELETE FROM CREATED_ITEMS WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
        END IF;
       
END;
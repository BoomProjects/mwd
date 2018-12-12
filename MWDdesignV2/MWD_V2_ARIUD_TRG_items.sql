DECLARE
    V_EXISTS NUMBER;
BEGIN
    SELECT COUNT(*) INTO V_EXISTS FROM ITEMS WHERE ITEM_ID = :P2010_ITEM_ID;
    -- is create/update?
    IF V_EXISTS <> 0
        THEN
            IF :P2010_ITEM_TYPE = 'INGREDIENT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM INGREDIENTS WHERE INGREDIENT_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO INGREDIENTS
							(INGREDIENT_ID)
							VALUES
							(:P2010_ITEM_ID);
                    END IF;   
            ELSIF :P2010_ITEM_TYPE = 'CREATED_ITEM'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM CREATED_ITEMS WHERE CREATED_ITEM_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO CREATED_ITEMS
							(CREATED_ITEM_ID)
							VALUES
							(:P2010_ITEM_ID);
                    END IF;
            ELSIF :P2010_ITEM_TYPE = 'KIT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM KITS WHERE KIT_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO KITS
							(KIT_ID)
							VALUES
							(:P2010_ITEM_ID);
                    END IF;
            ELSIF :P2010_ITEM_TYPE = 'SET'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM SETS WHERE SET_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO SETS
							(SET_ID)
							VALUES
							(:P2010_ITEM_ID);
                    END IF;
            ELSIF :P2010_ITEM_TYPE = 'TOOL'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM TOOLS WHERE TOOL_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO TOOLS
							(TOOL_ID)
							VALUES
							(:P2010_ITEM_ID);
                    END IF;
            ELSE 
				V_EXISTS := 0;
            END IF;
    ELSE
        SELECT COUNT(*) INTO V_EXISTS FROM INGREDIENTS WHERE INGREDIENT_ID = :P2010_ITEM_ID;
        IF V_EXISTS <> 0
            THEN
                DELETE FROM INGREDIENTS WHERE INGREDIENT_ID = :P2010_ITEM_ID;
        END IF;
        
        SELECT COUNT(*) INTO V_EXISTS FROM CREATED_ITEMS WHERE CREATED_ITEM_ID = :P2010_ITEM_ID;
        IF V_EXISTS <> 0
            THEN
                DELETE FROM CREATED_ITEMS WHERE CREATED_ITEM_ID = :P2010_ITEM_ID;
        END IF;
		
		SELECT COUNT(*) INTO V_EXISTS FROM KITS WHERE KIT_ID = :P2010_ITEM_ID;
        IF V_EXISTS <> 0
            THEN
                DELETE FROM KITS WHERE KIT_ID = :P2010_ITEM_ID;
        END IF;
		
		SELECT COUNT(*) INTO V_EXISTS FROM SETS WHERE SET_ID = :P2010_ITEM_ID;
        IF V_EXISTS <> 0
            THEN
                DELETE FROM SETS WHERE SET_ID = :P2010_ITEM_ID;
        END IF;
		
		SELECT COUNT(*) INTO V_EXISTS FROM TOOLS WHERE TOOL_ID = :P2010_ITEM_ID;
        IF V_EXISTS <> 0
            THEN
                DELETE FROM TOOLS WHERE TOOL_ID = :P2010_ITEM_ID;
        END IF;
    END IF;
END;
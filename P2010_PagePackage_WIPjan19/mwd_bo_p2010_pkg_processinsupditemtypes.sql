DECLARE
    V_EXISTS NUMBER;
BEGIN
    SELECT COUNT(*) INTO V_EXISTS FROM ITEMS WHERE ITEM_ID = :P2010_ITEM_ID;
    -- is update?
    IF V_EXISTS <> 0
        THEN
            IF :P2010_ITEM_TYPE = 'INGREDIENT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM INGREDIENTS WHERE INGREDIENT_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
                            INSERT INTO INGREDIENTS
                            (INGREDIENT_ID, MATERIAL, COLOR, WIRE_DIAMETER_MM, INNER_DIAMETER_MM, OUTER_DIAMETER_MM, OPENING_DIAMETER_MM)
                            VALUES
                            (:P2010_ITEM_ID, :P2010_MATERIAL, :P2010_COLOR, :P2010_WIRE_DIAMETER_MM, :P2010_INNER_DIAMETER_MM, :P2010_OUTER_DIAMETER_MM, :P2010_OPENING_DIAMETER_MM);
                    ELSE
                    		UPDATE INGREDIENTS
                            SET INGREDIENT_TYPE = :P2010_INGREDIENT_TYPE,
                             MATERIAL =  :P2010_MATERIAL,
                             COLOR = :P2010_COLOR, 
                             WIRE_DIAMETER_MM = :P2010_WIRE_DIAMETER_MM,
                             INNER_DIAMETER_MM = :P2010_INNER_DIAMETER_MM,
                             OUTER_DIAMETER_MM = :P2010_OUTER_DIAMETER_MM, 
                             OPENING_DIAMETER_MM = :P2010_OPENING_DIAMETER_MM
                            WHERE
                            INGREDIENT_ID = :P2010_ITEM_ID;
                    END IF;   
            ELSIF :P2010_ITEM_TYPE = 'CREATED_ITEM'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM CREATED_ITEMS WHERE CREATED_ITEM_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO CREATED_ITEMS
							(CREATED_ITEM_ID, CREATED_ITEM_TYPE)
							VALUES
							(:P2010_ITEM_ID, :P2010_CREATED_ITEM_TYPE);
                    ELSE
                    		UPDATE CREATED_ITEMS
                            SET CREATED_ITEM_TYPE = :P2010_CREATED_ITEM_TYPE
                            WHERE
                            CREATED_ITEM_ID = :P2010_ITEM_ID;
                    END IF;
            ELSIF :P2010_ITEM_TYPE = 'TOOL'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM TOOLS WHERE TOOL_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO TOOLS
							(TOOL_ID, TOOL_TYPE)
							VALUES
							(:P2010_ITEM_ID, :P2010_TOOL_TYPE);
                    ELSE
                    		UPDATE TOOLS
                            SET TOOL_TYPE = :P2010_TOOL_TYPE
                            WHERE
                            TOOL_ID = :P2010_ITEM_ID;
                    END IF;
            ELSIF :P2010_ITEM_TYPE = 'KIT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM KITS WHERE KIT_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO KITS
--							(KIT_ID, KIT_TYPE)
                            (KIT_ID)
							VALUES
--							(:P2010_ITEM_ID, :P2010_KIT_TYPE);
                            (:P2010_ITEM_ID);
--                    ELSE
--                        UPDATE KITS
--                            SET KIT_TYPE = :P2010_KIT_TYPE
--                            WHERE KIT_ID = :P2010_ITEM_ID;
                    END IF;
            ELSIF :P2010_ITEM_TYPE = 'SET'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM SETS WHERE SET_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO SETS
--							(SET_ID, SET_TYPE)
							(SET_ID)
							VALUES
--							(:P2010_ITEM_ID, :P2010_SET_TYPE);
							(:P2010_ITEM_ID);                            
--                    ELSE
--                        UPDATE SETS
--                            SET SET_TYPE = :P2010_SET_TYPE
--                            WHERE SET_ID = :P2010_ITEM_ID;                            
                    END IF;                    
            ELSIF :P2010_ITEM_TYPE = 'OTHER'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM OTHER_ITEMS WHERE OTHER_ITEM_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO OTHER_ITEMS
							(OTHER_ITEM_ID, OTHER_ITEM_TYPE)
							VALUES
							(:P2010_ITEM_ID, :P2010_OTHER_ITEM_TYPE);
                    ELSE
                        UPDATE OTHER_ITEMS
                            SET OTHER_ITEM_TYPE = :P2010_OTHER_ITEM_TYPE
                            WHERE OTHER_ITEM_ID = :P2010_ITEM_ID;                            
                    END IF;
            ELSE 
				V_EXISTS := 0;
            END IF;
    -- IS CREATE?
    ELSE
            IF :P2010_ITEM_TYPE = 'INGREDIENT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM INGREDIENTS WHERE INGREDIENT_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
                            INSERT INTO INGREDIENTS
                            (INGREDIENT_ID, MATERIAL, COLOR, WIRE_DIAMETER_MM, INNER_DIAMETER_MM, OUTER_DIAMETER_MM, OPENING_DIAMETER_MM)
                            VALUES
                            (:P2010_ITEM_ID, :P2010_MATERIAL, :P2010_COLOR, :P2010_WIRE_DIAMETER_MM, :P2010_INNER_DIAMETER_MM, :P2010_OUTER_DIAMETER_MM, :P2010_OPENING_DIAMETER_MM);
                    ELSE
                    		UPDATE INGREDIENTS
                            SET INGREDIENT_TYPE = :P2010_INGREDIENT_TYPE,
                             MATERIAL =  :P2010_MATERIAL,
                             COLOR = :P2010_COLOR, 
                             WIRE_DIAMETER_MM = :P2010_WIRE_DIAMETER_MM,
                             INNER_DIAMETER_MM = :P2010_INNER_DIAMETER_MM,
                             OUTER_DIAMETER_MM = :P2010_OUTER_DIAMETER_MM, 
                             OPENING_DIAMETER_MM = :P2010_OPENING_DIAMETER_MM
                            WHERE
                            INGREDIENT_ID = :P2010_ITEM_ID;
                    END IF;   
            ELSIF :P2010_ITEM_TYPE = 'CREATED_ITEM'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM CREATED_ITEMS WHERE CREATED_ITEM_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO CREATED_ITEMS
							(CREATED_ITEM_ID, CREATED_ITEM_TYPE)
							VALUES
							(:P2010_ITEM_ID, :P2010_CREATED_ITEM_TYPE);
                    ELSE
                    		UPDATE CREATED_ITEMS
                            SET CREATED_ITEM_TYPE = :P2010_CREATED_ITEM_TYPE
                            WHERE
                            CREATED_ITEM_ID = :P2010_ITEM_ID;
                    END IF;
            ELSIF :P2010_ITEM_TYPE = 'TOOL'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM TOOLS WHERE TOOL_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO TOOLS
							(TOOL_ID, TOOL_TYPE)
							VALUES
							(:P2010_ITEM_ID, :P2010_TOOL_TYPE);
                    ELSE
                    		UPDATE TOOLS
                            SET TOOL_TYPE = :P2010_TOOL_TYPE
                            WHERE
                            TOOL_ID = :P2010_ITEM_ID;
                    END IF;
            ELSIF :P2010_ITEM_TYPE = 'KIT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM KITS WHERE KIT_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO KITS
--							(KIT_ID, KIT_TYPE)
                            (KIT_ID)
							VALUES
--							(:P2010_ITEM_ID, :P2010_KIT_TYPE);
                            (:P2010_ITEM_ID);
--                    ELSE
--                        UPDATE KITS
--                            SET KIT_TYPE = :P2010_KIT_TYPE
--                            WHERE KIT_ID = :P2010_ITEM_ID;
                    END IF;
            ELSIF :P2010_ITEM_TYPE = 'SET'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM SETS WHERE SET_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO SETS
--							(SET_ID, SET_TYPE)
							(SET_ID)
							VALUES
--							(:P2010_ITEM_ID, :P2010_SET_TYPE);
							(:P2010_ITEM_ID);                            
--                    ELSE
--                        UPDATE SETS
--                            SET SET_TYPE = :P2010_SET_TYPE
--                            WHERE SET_ID = :P2010_ITEM_ID;                            
                    END IF;               
            ELSIF :P2010_ITEM_TYPE = 'OTHER'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM OTHER_ITEMS WHERE OTHER_ITEM_ID = :P2010_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO OTHER_ITEMS
							(OTHER_ITEM_ID, OTHER_ITEM_TYPE)
							VALUES
							(:P2010_ITEM_ID, :P2010_OTHER_ITEM_TYPE);
                    ELSE
                        UPDATE OTHER_ITEMS
                            SET OTHER_ITEM_TYPE = :P2010_OTHER_ITEM_TYPE
                            WHERE OTHER_ITEM_ID = :P2010_ITEM_ID;                            
                    END IF;
            ELSE 
				V_EXISTS := 0;
            END IF;
    END IF;
END;
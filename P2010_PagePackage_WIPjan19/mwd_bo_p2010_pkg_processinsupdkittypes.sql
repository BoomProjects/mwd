DECLARE
    V_EXISTS NUMBER;
BEGIN
    SELECT COUNT(*) INTO V_EXISTS FROM KITS WHERE KIT_ID = :P2010_KIT_ID;
    -- is create/update?
    IF V_EXISTS <> 0
        THEN
/*            IF :P2010_KIT_TYPE = 'RAW_INGREDIENT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM RAW_INGREDIENTS WHERE RAW_INGREDIENT_ID = :P2010_KIT_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO RAW_INGREDIENTS
							(RAW_INGREDIENT_ID)
							VALUES
							(:P2010_KIT_ID);
                    END IF;   
            ELSIF :P2010_KIT_TYPE = 'CRAFTED_INGREDIENT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM CRAFTED_INGREDIENTS WHERE CRAFTED_INGREDIENT_ID = :P2010_KIT_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO CRAFTED_INGREDIENTS
							(CRAFTED_INGREDIENT_ID)
							VALUES
							(:P2010_KIT_ID);
                    END IF;
            ELSIF :P2010_KIT_TYPE = 'OTHER'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM OTHER_INGREDIENTS WHERE OTHER_INGREDIENT_ID = :P2010_KIT_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO OTHER_INGREDIENTS
							(OTHER_INGREDIENT_ID)
							VALUES
							(:P2010_KIT_ID);
                    END IF;
            ELSE 
				V_EXISTS := 0;
            END IF;
*/
			V_EXISTS := 0;
    END IF;
END;
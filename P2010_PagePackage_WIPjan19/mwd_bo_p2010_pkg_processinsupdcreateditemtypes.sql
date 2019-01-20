DECLARE
    V_EXISTS NUMBER;
BEGIN
    SELECT COUNT(*) INTO V_EXISTS FROM CREATED_ITEMS WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
    -- is update?
    IF V_EXISTS <> 0
        THEN
            IF :P2010_CREATED_ITEM_TYPE = 'JEWELRY'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM JEWELRY WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO JEWELRY
							(CREATED_ITEM_ID, JEWELRY_TYPE)
							VALUES
							(:P2010_CREATED_ITEM_ID, :P2010_JEWELRY_TYPE);
                    ELSE
                        UPDATE JEWELRY
                            SET JEWELRY_TYPE = :P2010_JEWELRY_TYPE
                            WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    END IF;   
            ELSIF :P2010_CREATED_ITEM_TYPE = 'ACCESSORY'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM ACCESSORIES WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO ACCESSORIES
							(CREATED_ITEM_ID, ACCESSORY_TYPE)
							VALUES
							(:P2010_CREATED_ITEM_ID, :P2010_ACCESSORY_TYPE);
                    ELSE
                        UPDATE ACCESSORIES
                            SET ACCESSORY_TYPE = :P2010_ACCESSORY_TYPE
                            WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    END IF;
            ELSIF :P2010_CREATED_ITEM_TYPE = 'ORNAMENT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM ORNAMENTS WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO ORNAMENTS
							(CREATED_ITEM_ID, ORNAMENT_TYPE)
							VALUES
							(:P2010_CREATED_ITEM_ID, :P2010_ORNAMENT_TYPE);
                    ELSE
                        UPDATE ORNAMENTS
                            SET ORNAMENT_TYPE = :P2010_ORNAMENT_TYPE
                            WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    END IF;
            ELSIF :P2010_CREATED_ITEM_TYPE = 'OTHER'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM OTHER_ITEMS WHERE OTHER_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO OTHER_ITEMS
							(OTHER_ITEM_ID, OTHER_ITEM_TYPE)
							VALUES
							(:P2010_CREATED_ITEM_ID, :P2010_OTHER_ITEM_TYPE);
                    ELSE
                        UPDATE OTHER_ITEMS
                            SET OTHER_ITEM_TYPE = :P2010_OTHER_ITEM_TYPE
                            WHERE OTHER_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    END IF;
            ELSE 
				V_EXISTS := 0;
            END IF;
    -- IS INSERT?
    ELSE
             IF :P2010_CREATED_ITEM_TYPE = 'JEWELRY'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM JEWELRY WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO JEWELRY
							(CREATED_ITEM_ID, JEWELRY_TYPE)
							VALUES
							(:P2010_CREATED_ITEM_ID, :P2010_JEWELRY_TYPE);
                    ELSE
                        UPDATE JEWELRY
                            SET JEWELRY_TYPE = :P2010_JEWELRY_TYPE
                            WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    END IF;   
            ELSIF :P2010_CREATED_ITEM_TYPE = 'ACCESSORY'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM ACCESSORIES WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO ACCESSORIES
							(CREATED_ITEM_ID, ACCESSORY_TYPE)
							VALUES
							(:P2010_CREATED_ITEM_ID, :P2010_ACCESSORY_TYPE);
                    ELSE
                        UPDATE ACCESSORIES
                            SET ACCESSORY_TYPE = :P2010_ACCESSORY_TYPE
                            WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    END IF;
            ELSIF :P2010_CREATED_ITEM_TYPE = 'ORNAMENT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM ORNAMENTS WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO ORNAMENTS
							(CREATED_ITEM_ID, ORNAMENT_TYPE)
							VALUES
							(:P2010_CREATED_ITEM_ID, :P2010_ORNAMENT_TYPE);
                    ELSE
                        UPDATE ORNAMENTS
                            SET ORNAMENT_TYPE = :P2010_ORNAMENT_TYPE
                            WHERE CREATED_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    END IF;
            ELSIF :P2010_CREATED_ITEM_TYPE = 'OTHER'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM OTHER_ITEMS WHERE OTHER_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO OTHER_ITEMS
							(OTHER_ITEM_ID, OTHER_ITEM_TYPE)
							VALUES
							(:P2010_CREATED_ITEM_ID, :P2010_OTHER_ITEM_TYPE);
                    ELSE
                        UPDATE OTHER_ITEMS
                            SET OTHER_ITEM_TYPE = :P2010_OTHER_ITEM_TYPE
                            WHERE OTHER_ITEM_ID = :P2010_CREATED_ITEM_ID;
                    END IF;
            ELSE 
				V_EXISTS := 0;
            END IF;
    END IF;
END;
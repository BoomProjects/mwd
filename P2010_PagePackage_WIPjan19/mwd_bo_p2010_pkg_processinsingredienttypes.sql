DECLARE
    V_EXISTS NUMBER;
BEGIN
    SELECT COUNT(*) INTO V_EXISTS FROM INGREDIENTS WHERE INGREDIENT_ID = :P2010_INGREDIENT_ID;
    -- is create?
    IF V_EXISTS = 0
        THEN
            IF :P2010_INGREDIENT_TYPE = 'RAW_INGREDIENT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM RAW_INGREDIENTS WHERE RAW_INGREDIENT_ID = :P2010_INGREDIENT_ID;
                    -- IS CREATE?
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO RAW_INGREDIENTS
							(RAW_INGREDIENT_ID, RAW_INGREDIENT_TYPE)
							VALUES
							(:P2010_ITEM_ID, :P2010_RAW_INGREDIENT_TYPE);
                            
                            IF :P2010_RAW_INGREDIENT_TYPE = 'WIRE'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM WIRES WHERE WIRE_ID = :P2010_WIRE_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO WIRES
                                                (WIRE_ID, WIRE_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_WIRE_TYPE);
                                    ELSE
                                            UPDATE WIRES
                                                SET WIRE_TYPE = :P2010_WIRE_TYPE
                                                WHERE WIRE_ID = :P2010_WIRE_ID;
                                    END IF;
                             ELSIF :P2010_RAW_INGREDIENT_TYPE = 'CHAIN'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM CHAINS WHERE CHAIN_ID = :P2010_CHAIN_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO CHAINS
                                                (CHAIN_ID, CHAIN_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_CHAIN_TYPE);
                                    ELSE
                                            UPDATE CHAINS
                                                SET CHAIN_TYPE = :P2010_CHAIN_TYPE
                                                WHERE CHAIN_ID = :P2010_CHAIN_ID;
                                    END IF;
                             ELSIF :P2010_RAW_INGREDIENT_TYPE = 'LACE'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM LACE WHERE LACE_ID = :P2010_LACE_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO LACE
                                                (LACE_ID, LACE_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_LACE_TYPE);
                                    ELSE
                                            UPDATE LACE
                                                SET LACE_TYPE = :P2010_LACE_TYPE
                                                WHERE LACE_ID = :P2010_LACE_ID;
                                    END IF;                                    
                             ELSIF :P2010_RAW_INGREDIENT_TYPE = 'OTHER'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM OTHER_INGREDIENTS WHERE OTHER_INGREDIENT_ID = :P2010_OTHER_INGREDIENT_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO OTHER_INGREDIENTS
                                                (OTHER_INGREDIENT_ID, OTHER_INGREDIENT_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_OTHER_INGREDIENT_TYPE);
                                    ELSE
                                            UPDATE OTHER_INGREDIENTS
                                                SET OTHER_INGREDIENT_TYPE = :P2010_OTHER_INGREDIENT_TYPE
                                                WHERE OTHER_INGREDIENT_ID = :P2010_OTHER_INGREDIENT_ID;
                                    END IF;
                             END IF;
                    -- IS UPDATE?
                    ELSE
                        UPDATE RAW_INGREDIENTS
                            SET RAW_INGREDIENT_TYPE = :P2010_RAW_INGREDIENT_TYPE
                            WHERE RAW_INGREDIENT_ID = :P2010_RAW_INGREDIENT_ID;
                            
                            IF :P2010_RAW_INGREDIENT_TYPE = 'WIRE'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM WIRES WHERE WIRE_ID = :P2010_WIRE_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO WIRES
                                                (WIRE_ID, WIRE_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_WIRE_TYPE);
                                    ELSE
                                            UPDATE WIRES
                                                SET WIRE_TYPE = :P2010_WIRE_TYPE
                                                WHERE WIRE_ID = :P2010_WIRE_ID;
                                    END IF;
                             ELSIF :P2010_RAW_INGREDIENT_TYPE = 'CHAIN'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM CHAINS WHERE CHAIN_ID = :P2010_CHAIN_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO CHAINS
                                                (CHAIN_ID, CHAIN_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_CHAIN_TYPE);
                                    ELSE
                                            UPDATE CHAINS
                                                SET CHAIN_TYPE = :P2010_CHAIN_TYPE
                                                WHERE CHAIN_ID = :P2010_CHAIN_ID;
                                    END IF;
                             ELSIF :P2010_RAW_INGREDIENT_TYPE = 'LACE'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM LACE WHERE LACE_ID = :P2010_LACE_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO LACE
                                                (LACE_ID, LACE_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_LACE_TYPE);
                                    ELSE
                                            UPDATE LACE
                                                SET LACE_TYPE = :P2010_LACE_TYPE
                                                WHERE LACE_ID = :P2010_LACE_ID;
                                    END IF;                                    
                             ELSIF :P2010_RAW_INGREDIENT_TYPE = 'OTHER'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM OTHER_INGREDIENTS WHERE OTHER_INGREDIENT_ID = :P2010_OTHER_INGREDIENT_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO OTHER_INGREDIENTS
                                                (OTHER_INGREDIENT_ID, OTHER_INGREDIENT_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_OTHER_INGREDIENT_TYPE);
                                    ELSE
                                            UPDATE OTHER_INGREDIENTS
                                                SET OTHER_INGREDIENT_TYPE = :P2010_OTHER_INGREDIENT_TYPE
                                                WHERE OTHER_INGREDIENT_ID = :P2010_OTHER_INGREDIENT_ID;
                                    END IF;
                             END IF;
                    END IF;   
            ELSIF :P2010_INGREDIENT_TYPE = 'CRAFTED_INGREDIENT'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM CRAFTED_INGREDIENTS WHERE CRAFTED_INGREDIENT_ID = :P2010_INGREDIENT_ID;
                    -- IS CREATE?
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO CRAFTED_INGREDIENTS
							(CRAFTED_INGREDIENT_ID, CRAFTED_INGREDIENT_TYPE)
							VALUES
							(:P2010_INGREDIENT_ID, :P2010_CRAFTED_INGREDIENT_TYPE);
                    
					                           IF :P2010_CRAFTED_INGREDIENT_TYPE = 'RING'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM RINGS WHERE RING_ID = :P2010_RING_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO RINGS
                                                (RING_ID, RING_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_RING_TYPE);
                                    ELSE
                                            UPDATE RINGS
                                                SET RING_TYPE = :P2010_RING_TYPE
                                                WHERE RING_ID = :P2010_RING_ID;
                                    END IF;
                             ELSIF :P2010_CRAFTED_INGREDIENT_TYPE = 'SCALE'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM SCALES WHERE SCALE_ID = :P2010_SCALE_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO SCALES
                                                (SCALE_ID, SCALE_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_SCALE_TYPE);
                                    ELSE
                                            UPDATE SCALES
                                                SET SCALE_TYPE = :P2010_SCALE_TYPE
                                                WHERE SCALE_ID = :P2010_SCALE_ID;
                                    END IF;                                    
                             ELSIF :P2010_CRAFTED_INGREDIENT_TYPE = 'BEAD'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM BEADS WHERE BEAD_ID = :P2010_BEAD_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO BEADS
                                                (BEAD_ID, BEAD_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_BEAD_TYPE);
                                    ELSE
                                            UPDATE BEADS
                                                SET BEAD_TYPE = :P2010_BEAD_TYPE
                                                WHERE BEAD_ID = :P2010_BEAD_ID;
                                    END IF;
                             ELSIF :P2010_CRAFTED_INGREDIENT_TYPE = 'CLASP'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM CLASPS WHERE CLASP_ID = :P2010_CLASP_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO CLASPS
                                                (CLASP_ID, CLASP_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_CLASP_TYPE);
                                    ELSE
                                            UPDATE CLASPS
                                                SET CLASP_TYPE = :P2010_CLASP_TYPE
                                                WHERE CLASP_ID = :P2010_CLASP_ID;
                                    END IF;    
                             ELSIF :P2010_CRAFTED_INGREDIENT_TYPE = 'ATTACHMENT'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM ATTACHMENTS WHERE ATTACHMENT_ID = :P2010_ATTACHMENT_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO ATTACHMENTS
                                                (ATTACHMENT_ID, ATTACHMENT_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_ATTACHMENT_TYPE);
                                    ELSE
                                            UPDATE ATTACHMENTS
                                                SET ATTACHMENT_TYPE = :P2010_ATTACHMENT_TYPE
                                                WHERE ATTACHMENT_ID = :P2010_ATTACHMENT_ID;
                                    END IF; 
                             END IF;
 
                    -- IS UPDATE?
                    ELSE
                        UPDATE CRAFTED_INGREDIENTS
                            SET CRAFTED_INGREDIENT_TYPE = :P2010_CRAFTED_INGREDIENT_TYPE
                            WHERE CRAFTED_INGREDIENT_ID = :P2010_CRAFTED_INGREDIENT_ID;
                            
                            IF :P2010_CRAFTED_INGREDIENT_TYPE = 'RING'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM RINGS WHERE RING_ID = :P2010_RING_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO RINGS
                                                (RING_ID, RING_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_RING_TYPE);
                                    ELSE
                                            UPDATE RINGS
                                                SET RING_TYPE = :P2010_RING_TYPE
                                                WHERE RING_ID = :P2010_RING_ID;
                                    END IF;
                             ELSIF :P2010_CRAFTED_INGREDIENT_TYPE = 'SCALE'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM SCALES WHERE SCALE_ID = :P2010_SCALE_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO SCALES
                                                (SCALE_ID, SCALE_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_SCALE_TYPE);
                                    ELSE
                                            UPDATE SCALES
                                                SET SCALE_TYPE = :P2010_SCALE_TYPE
                                                WHERE SCALE_ID = :P2010_SCALE_ID;
                                    END IF;                                    
                             ELSIF :P2010_CRAFTED_INGREDIENT_TYPE = 'BEAD'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM BEADS WHERE BEAD_ID = :P2010_BEAD_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO BEADS
                                                (BEAD_ID, BEAD_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_BEAD_TYPE);
                                    ELSE
                                            UPDATE BEADS
                                                SET BEAD_TYPE = :P2010_BEAD_TYPE
                                                WHERE BEAD_ID = :P2010_BEAD_ID;
                                    END IF;
                             ELSIF :P2010_CRAFTED_INGREDIENT_TYPE = 'CLASP'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM CLASPS WHERE CLASP_ID = :P2010_CLASP_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO CLASPS
                                                (CLASP_ID, CLASP_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_CLASP_TYPE);
                                    ELSE
                                            UPDATE CLASPS
                                                SET CLASP_TYPE = :P2010_CLASP_TYPE
                                                WHERE CLASP_ID = :P2010_CLASP_ID;
                                    END IF;    
                             ELSIF :P2010_CRAFTED_INGREDIENT_TYPE = 'ATTACHMENT'
                                THEN
                                    SELECT COUNT(*) INTO V_EXISTS FROM ATTACHMENTS WHERE ATTACHMENT_ID = :P2010_ATTACHMENT_ID;
                                    IF V_EXISTS = 0
                                        THEN
                                            INSERT INTO ATTACHMENTS
                                                (ATTACHMENT_ID, ATTACHMENT_TYPE)
                                                VALUES
                                                (:P2010_ITEM_ID, :P2010_ATTACHMENT_TYPE);
                                    ELSE
                                            UPDATE ATTACHMENTS
                                                SET ATTACHMENT_TYPE = :P2010_ATTACHMENT_TYPE
                                                WHERE ATTACHMENT_ID = :P2010_ATTACHMENT_ID;
                                    END IF; 
							 ELSE 
									V_EXISTS := 0;		
                             END IF;
                    END IF;
            ELSIF :P2010_INGREDIENT_TYPE = 'OTHER'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM OTHER_INGREDIENTS WHERE OTHER_INGREDIENT_ID = :P2010_INGREDIENT_ID;
                    IF V_EXISTS = 0
                        THEN
							INSERT INTO OTHER_INGREDIENTS
							(OTHER_INGREDIENT_ID, OTHER_INGREDIENT_TYPE)
							VALUES
							(:P2010_INGREDIENT_ID, :P2010_OTHER_INGREDIENT_TYPE);
					ELSE
						UPDATE OTHER_INGREDIENTS
							SET OTHER_INGREDIENT_TYPE = :P2010_OTHER_INGREDIENT_TYPE
							WHERE OTHER_INGREDIENT_ID = :P2010_OTHER_INGREDIENT_ID;
                    END IF;
            ELSE 
				V_EXISTS := 0;
            END IF;
    END IF;
END;
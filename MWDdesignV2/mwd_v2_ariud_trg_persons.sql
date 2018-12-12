DECLARE
    V_EXISTS NUMBER;
	V_LOCATION_ID NUMBER;
BEGIN

    SELECT COUNT(*) INTO V_EXISTS FROM PERSONS WHERE PERSON_ID = :P1010_PERSON_ID;
    -- is create/update?
    IF V_EXISTS <> 0
        THEN
            IF :P1010_PERSON_TYPE = 'LEGAL_PERSON'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM LEGAL_PERSONS WHERE PERSON_ID = :P1010_PERSON_ID;
                    IF V_EXISTS <> 0
                        THEN
                            IF (:P1010_LEGAL_NAME IS NOT NULL OR :P1010_WEBSITE IS NOT NULL)
                                THEN
                                    UPDATE LEGAL_PERSONS
                                    SET LEGAL_NAME = :P1010_LEGAL_NAME, WEBSITE = :P1010_WEBSITE
                                    WHERE PERSON_ID = :P1010_PERSON_ID;
                            END IF;
                     ELSE
                         INSERT INTO LEGAL_PERSONS 
                         (PERSON_ID, LEGAL_NAME, WEBSITE)
                         VALUES
                         (:P1010_PERSON_ID, :P1010_LEGAL_NAME, :P1010_WEBSITE);
                      END IF;   
            ELSIF :P1010_PERSON_TYPE = 'NATURAL_PERSON'
                THEN
                    SELECT COUNT(*) INTO V_EXISTS FROM NATURAL_PERSONS WHERE PERSON_ID = :P1010_PERSON_ID;
                    IF V_EXISTS <> 0
                        THEN
                            IF (:P1010_FIRST_NAME IS NOT NULL OR :P1010_LAST_NAME IS NOT NULL)
                                THEN
                                    UPDATE NATURAL_PERSONS
                                    SET FIRST_NAME = :P1010_FIRST_NAME, LAST_NAME = :P1010_LAST_NAME
                                    WHERE PERSON_ID = :P1010_PERSON_ID;
                            END IF;
                     ELSE
                         INSERT INTO NATURAL_PERSONS 
                         (PERSON_ID, FIRST_NAME, LAST_NAME)
                         VALUES
                         (:P1010_PERSON_ID, :P1010_FIRST_NAME, :P1010_LAST_NAME);
                    END IF;
            END IF;
    ELSE
        SELECT COUNT(*) INTO V_EXISTS FROM NATURAL_PERSONS WHERE PERSON_ID = :P1010_PERSON_ID;
        IF V_EXISTS <> 0
            THEN
                DELETE FROM NATURAL_PERSONS WHERE PERSON_ID = :P1010_PERSON_ID;
        END IF;
        
        SELECT COUNT(*) INTO V_EXISTS FROM LEGAL_PERSONS WHERE PERSON_ID = :P1010_PERSON_ID;
        IF V_EXISTS <> 0
            THEN
                DELETE FROM LEGAL_PERSONS WHERE PERSON_ID = :P1010_PERSON_ID;
        END IF;
		
		SELECT COUNT(*) INTO V_EXISTS FROM LOCATIONS WHERE PERSON_ID = :P1010_PERSON_ID;
        IF V_EXISTS <> 0
            THEN
				SELECT LOCATION_ID INTO V_LOCATION_ID FROM LOCATIONS WHERE PERSON_ID = :P1010_PERSON_ID;
                
				DELETE FROM LOCATIONS WHERE PERSON_ID = :P1010_PERSON_ID;
				
				SELECT COUNT(*) INTO V_EXISTS FROM LOCATION_ADDRESSES WHERE LOCATION_ID = V_LOCATION_ID;
				IF V_EXISTS <> 0
					THEN
						DELETE FROM LOCATION_ADDRESSES WHERE LOCATION_ID = V_LOCATION_ID;
				END IF;
        END IF;
    END IF;
END;
  
create or replace TRIGGER LEGAL_PERSONS_ARIUD
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON PERSONS for each row 
 Declare 
  rec LEGAL_PERSONS%ROWTYPE; 
  blank LEGAL_PERSONS%ROWTYPE;
  v_exists number;
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN
		IF :NEW.PERSON_TYPE = 'LEGAL_PERSON'
			THEN
				rec.PERSON_ID := :NEW.PERSON_ID; 
				INSERT into LEGAL_PERSONS VALUES rec; 
		END IF;
    ELSIF DELETING THEN 
		SELECT COUNT(*) 
		into v_exists
		FROM LEGAL_PERSONS 
		WHERE PERSON_ID = :OLD.PERSON_ID;
		
		if v_exists <> 0
			then
				DELETE FROM LEGAL_PERSONS
				WHERE PERSON_ID = :OLD.PERSON_ID;
		end if;
    END IF; 
  END; 
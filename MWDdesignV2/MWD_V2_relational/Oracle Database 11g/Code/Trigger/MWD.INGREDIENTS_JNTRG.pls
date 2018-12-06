CREATE OR REPLACE TRIGGER MWD.INGREDIENTS_JNTRG 
    AFTER INSERT OR UPDATE OR DELETE ON MWD.INGREDIENTS 
    FOR EACH ROW 
Declare 
  rec MWD.INGREDIENTS_JN%ROWTYPE; 
  blank MWD.INGREDIENTS_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.INGREDIENT_ID := :NEW.INGREDIENT_ID; 
      rec.MATERIAL := :NEW.MATERIAL; 
      rec.COLOR := :NEW.COLOR; 
      rec.WIRE_DIAMETER_MM := :NEW.WIRE_DIAMETER_MM; 
      rec.INNER_DIAMETER_MM := :NEW.INNER_DIAMETER_MM; 
      rec.OUTER_DIAMETER_MM := :NEW.OUTER_DIAMETER_MM; 
      rec.ASPECT_RATIO := :NEW.ASPECT_RATIO; 
      rec.OPENING_DIAMETER_MM := :NEW.OPENING_DIAMETER_MM; 
      rec.INGREDIENT_TYPE := :NEW.INGREDIENT_TYPE; 
      rec.WIRE_DIAMETER_SWG := :NEW.WIRE_DIAMETER_SWG; 
      rec.WIRE_DIAMETER_AWG := :NEW.WIRE_DIAMETER_AWG; 
      rec.INNER_DIAMETER_INCH := :NEW.INNER_DIAMETER_INCH; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      IF INSERTING THEN 
        rec.JN_OPERATION := 'INS'; 
      ELSIF UPDATING THEN 
        rec.JN_OPERATION := 'UPD'; 
      END IF; 
    ELSIF DELETING THEN 
      rec.INGREDIENT_ID := :OLD.INGREDIENT_ID; 
      rec.MATERIAL := :OLD.MATERIAL; 
      rec.COLOR := :OLD.COLOR; 
      rec.WIRE_DIAMETER_MM := :OLD.WIRE_DIAMETER_MM; 
      rec.INNER_DIAMETER_MM := :OLD.INNER_DIAMETER_MM; 
      rec.OUTER_DIAMETER_MM := :OLD.OUTER_DIAMETER_MM; 
      rec.ASPECT_RATIO := :OLD.ASPECT_RATIO; 
      rec.OPENING_DIAMETER_MM := :OLD.OPENING_DIAMETER_MM; 
      rec.INGREDIENT_TYPE := :OLD.INGREDIENT_TYPE; 
      rec.WIRE_DIAMETER_SWG := :OLD.WIRE_DIAMETER_SWG; 
      rec.WIRE_DIAMETER_AWG := :OLD.WIRE_DIAMETER_AWG; 
      rec.INNER_DIAMETER_INCH := :OLD.INNER_DIAMETER_INCH; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.INGREDIENTS_JN VALUES rec; 
  END; 
/
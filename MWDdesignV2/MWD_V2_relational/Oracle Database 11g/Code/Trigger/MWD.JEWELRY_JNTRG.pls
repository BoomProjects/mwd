CREATE OR REPLACE TRIGGER MWD.JEWELRY_JNTRG 
    AFTER INSERT OR UPDATE OR DELETE ON MWD.JEWELRY 
    FOR EACH ROW 
Declare 
  rec MWD.JEWELRY_JN%ROWTYPE; 
  blank MWD.JEWELRY_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.CREATED_ITEM_ID := :NEW.CREATED_ITEM_ID; 
      rec.JEWELRY_TYPE := :NEW.JEWELRY_TYPE; 
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
      rec.CREATED_ITEM_ID := :OLD.CREATED_ITEM_ID; 
      rec.JEWELRY_TYPE := :OLD.JEWELRY_TYPE; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.JEWELRY_JN VALUES rec; 
  END; 
/
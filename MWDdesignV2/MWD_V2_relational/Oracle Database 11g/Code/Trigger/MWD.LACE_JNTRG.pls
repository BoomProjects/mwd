CREATE OR REPLACE TRIGGER MWD.LACE_JNTRG 
    AFTER INSERT OR UPDATE OR DELETE ON MWD.LACE 
    FOR EACH ROW 
Declare 
  rec MWD.LACE_JN%ROWTYPE; 
  blank MWD.LACE_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.LACE_ID := :NEW.LACE_ID; 
      rec.LACE_TYPE := :NEW.LACE_TYPE; 
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
      rec.LACE_ID := :OLD.LACE_ID; 
      rec.LACE_TYPE := :OLD.LACE_TYPE; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.LACE_JN VALUES rec; 
  END; 
/
CREATE OR REPLACE TRIGGER MWD.WIRES_JNTRG 
    AFTER INSERT OR UPDATE OR DELETE ON MWD.WIRES 
    FOR EACH ROW 
Declare 
  rec MWD.WIRES_JN%ROWTYPE; 
  blank MWD.WIRES_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.WIRE_ID := :NEW.WIRE_ID; 
      rec.WIRE_TYPE := :NEW.WIRE_TYPE; 
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
      rec.WIRE_ID := :OLD.WIRE_ID; 
      rec.WIRE_TYPE := :OLD.WIRE_TYPE; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.WIRES_JN VALUES rec; 
  END; 
/
CREATE OR REPLACE TRIGGER MWD.BEADS_JNTRG 
    AFTER INSERT OR UPDATE OR DELETE ON MWD.BEADS 
    FOR EACH ROW 
Declare 
  rec MWD.BEADS_JN%ROWTYPE; 
  blank MWD.BEADS_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.BEAD_ID := :NEW.BEAD_ID; 
      rec.BEAD_TYPE := :NEW.BEAD_TYPE; 
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
      rec.BEAD_ID := :OLD.BEAD_ID; 
      rec.BEAD_TYPE := :OLD.BEAD_TYPE; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.BEADS_JN VALUES rec; 
  END; 
/
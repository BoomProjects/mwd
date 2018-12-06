CREATE OR REPLACE TRIGGER MWD.PURCHASES_JNTRG 
    AFTER INSERT OR UPDATE OR DELETE ON MWD.PURCHASES 
    FOR EACH ROW 
Declare 
  rec MWD.PURCHASES_JN%ROWTYPE; 
  blank MWD.PURCHASES_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.ORDER_ID := :NEW.ORDER_ID; 
      rec.ORDER_STATUS := :NEW.ORDER_STATUS; 
      rec.TAX_RETURNED := :NEW.TAX_RETURNED; 
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
      rec.ORDER_ID := :OLD.ORDER_ID; 
      rec.ORDER_STATUS := :OLD.ORDER_STATUS; 
      rec.TAX_RETURNED := :OLD.TAX_RETURNED; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.PURCHASES_JN VALUES rec; 
  END; 
/
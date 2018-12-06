CREATE OR REPLACE TRIGGER MWD.IMPERIAL_FRACTIONS_JNTRG 
    AFTER INSERT OR UPDATE OR DELETE ON MWD.IMPERIAL_FRACTIONS 
    FOR EACH ROW 
Declare 
  rec MWD.IMPERIAL_FRACTIONS_JN%ROWTYPE; 
  blank MWD.IMPERIAL_FRACTIONS_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.IMPERIAL_FRACTION_ID := :NEW.IMPERIAL_FRACTION_ID; 
      rec.INCH_FRACTION := :NEW.INCH_FRACTION; 
      rec.INCH_DIAMETER := :NEW.INCH_DIAMETER; 
      rec.DIAMETER_MM := :NEW.DIAMETER_MM; 
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
      rec.IMPERIAL_FRACTION_ID := :OLD.IMPERIAL_FRACTION_ID; 
      rec.INCH_FRACTION := :OLD.INCH_FRACTION; 
      rec.INCH_DIAMETER := :OLD.INCH_DIAMETER; 
      rec.DIAMETER_MM := :OLD.DIAMETER_MM; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.IMPERIAL_FRACTIONS_JN VALUES rec; 
  END; 
/
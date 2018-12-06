CREATE OR REPLACE TRIGGER MWD.LOCATION_ADDRESSES_JNTRG 
    AFTER INSERT OR UPDATE OR DELETE ON MWD.LOCATION_ADDRESSES 
    FOR EACH ROW 
Declare 
  rec MWD.LOCATION_ADDRESSES_JN%ROWTYPE; 
  blank MWD.LOCATION_ADDRESSES_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.LOCATION_ADDRESS_ID := :NEW.LOCATION_ADDRESS_ID; 
      rec.LOCATION_ID := :NEW.LOCATION_ID; 
      rec.STREET := :NEW.STREET; 
      rec.NR := :NEW.NR; 
      rec.NR_ADDITION := :NEW.NR_ADDITION; 
      rec.CITY := :NEW.CITY; 
      rec.COUNTRY := :NEW.COUNTRY; 
      rec.POSTAL_CODE := :NEW.POSTAL_CODE; 
      rec.LATITUDE := :NEW.LATITUDE; 
      rec.LONGITUDE := :NEW.LONGITUDE; 
      rec.IS_MAIN := :NEW.IS_MAIN; 
      rec.IS_ACTIVE := :NEW.IS_ACTIVE; 
      rec.ADDRESS_TYPE := :NEW.ADDRESS_TYPE; 
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
      rec.LOCATION_ADDRESS_ID := :OLD.LOCATION_ADDRESS_ID; 
      rec.LOCATION_ID := :OLD.LOCATION_ID; 
      rec.STREET := :OLD.STREET; 
      rec.NR := :OLD.NR; 
      rec.NR_ADDITION := :OLD.NR_ADDITION; 
      rec.CITY := :OLD.CITY; 
      rec.COUNTRY := :OLD.COUNTRY; 
      rec.POSTAL_CODE := :OLD.POSTAL_CODE; 
      rec.LATITUDE := :OLD.LATITUDE; 
      rec.LONGITUDE := :OLD.LONGITUDE; 
      rec.IS_MAIN := :OLD.IS_MAIN; 
      rec.IS_ACTIVE := :OLD.IS_ACTIVE; 
      rec.ADDRESS_TYPE := :OLD.ADDRESS_TYPE; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.LOCATION_ADDRESSES_JN VALUES rec; 
  END; 
/
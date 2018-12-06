CREATE OR REPLACE TRIGGER MWD.ORDER_ITEMS_JNTRG 
    AFTER INSERT OR UPDATE OR DELETE ON MWD.ORDER_ITEMS 
    FOR EACH ROW 
Declare 
  rec MWD.ORDER_ITEMS_JN%ROWTYPE; 
  blank MWD.ORDER_ITEMS_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.ORDER_ITEM_ID := :NEW.ORDER_ITEM_ID; 
      rec.ORDER_ID := :NEW.ORDER_ID; 
      rec.ITEM_ID := :NEW.ITEM_ID; 
      rec.INGREDIENT_ID := :NEW.INGREDIENT_ID; 
      rec.UNIT_PRICE := :NEW.UNIT_PRICE; 
      rec.QUANTITY := :NEW.QUANTITY; 
      rec.ITEM_STATUS := :NEW.ITEM_STATUS; 
      rec.ORDER_ITEM_URL := :NEW.ORDER_ITEM_URL; 
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
      rec.ORDER_ITEM_ID := :OLD.ORDER_ITEM_ID; 
      rec.ORDER_ID := :OLD.ORDER_ID; 
      rec.ITEM_ID := :OLD.ITEM_ID; 
      rec.INGREDIENT_ID := :OLD.INGREDIENT_ID; 
      rec.UNIT_PRICE := :OLD.UNIT_PRICE; 
      rec.QUANTITY := :OLD.QUANTITY; 
      rec.ITEM_STATUS := :OLD.ITEM_STATUS; 
      rec.ORDER_ITEM_URL := :OLD.ORDER_ITEM_URL; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.ORDER_ITEMS_JN VALUES rec; 
  END; 
/
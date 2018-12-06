CREATE TABLE mwd.imperial_fractions (
    inch_fraction   VARCHAR2(30 BYTE) NOT NULL,
    inch_diameter   NUMBER(10, 4),
    diameter_mm     NUMBER(10, 4)
);

CREATE UNIQUE INDEX mwd.imperial_fractions_pk ON
    mwd.imperial_fractions (
        inch_fraction
    ASC );
CREATE TABLE MWD.IMPERIAL_FRACTIONS_JN
 (JN_OPERATION CHAR(3) NOT NULL
 ,JN_ORACLE_USER VARCHAR2(30) NOT NULL
 ,JN_DATETIME DATE NOT NULL
 ,JN_NOTES VARCHAR2(240)
 ,JN_APPLN VARCHAR2(35)
 ,JN_SESSION NUMBER(38)
 ,INCH_FRACTION VARCHAR2 (30 BYTE) NOT NULL
 ,INCH_DIAMETER NUMBER (10,4)
 ,DIAMETER_MM NUMBER (10,4)
 );

CREATE OR REPLACE TRIGGER MWD.IMPERIAL_FRACTIONS_JNtrg
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON MWD.IMPERIAL_FRACTIONS for each row 
 Declare 
  rec MWD.IMPERIAL_FRACTIONS_JN%ROWTYPE; 
  blank MWD.IMPERIAL_FRACTIONS_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
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
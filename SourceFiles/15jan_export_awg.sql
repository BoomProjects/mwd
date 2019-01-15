--------------------------------------------------------
--  File created - Tuesday-January-15-2019   
--------------------------------------------------------
DROP TABLE "MWD"."AMERICAN_WIRE_GAUGES" cascade constraints;
DROP TABLE "MWD"."AMERICAN_WIRE_GAUGES_JN" cascade constraints;
--------------------------------------------------------
--  DDL for Table AMERICAN_WIRE_GAUGES
--------------------------------------------------------

  CREATE TABLE "MWD"."AMERICAN_WIRE_GAUGES" 
   (	"AWG_ID" NUMBER, 
	"AWG" VARCHAR2(30 BYTE), 
	"INCH_DIAMETER" NUMBER(10,4), 
	"DIAMETER_MM" NUMBER(10,4)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP" ;
--------------------------------------------------------
--  DDL for Table AMERICAN_WIRE_GAUGES_JN
--------------------------------------------------------

  CREATE TABLE "MWD"."AMERICAN_WIRE_GAUGES_JN" 
   (	"JN_OPERATION" CHAR(3 BYTE), 
	"JN_ORACLE_USER" VARCHAR2(30 BYTE), 
	"JN_DATETIME" DATE, 
	"JN_NOTES" VARCHAR2(240 BYTE), 
	"JN_APPLN" VARCHAR2(35 BYTE), 
	"JN_SESSION" NUMBER(38,0), 
	"AWG_ID" NUMBER, 
	"AWG" VARCHAR2(30 BYTE), 
	"INCH_DIAMETER" NUMBER(10,4), 
	"DIAMETER_MM" NUMBER(10,4)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP" ;
REM INSERTING into MWD.AMERICAN_WIRE_GAUGES
SET DEFINE OFF;
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('1','0000 (4/0)','0,46','11,684');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('2','000 (3/0)','0,4096','10,405');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('3','00 (2/0)','0,3648','9,266');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('4','0 (1/0)','0,3249','8,251');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('5','1','0,2893','7,348');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('6','2','0,2576','6,544');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('7','3','0,2294','5,827');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('8','4','0,2043','5,189');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('9','5','0,1819','4,621');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('10','6','0,162','4,115');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('11','7','0,1443','3,665');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('12','8','0,1285','3,264');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('13','9','0,1144','2,906');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('14','10','0,1019','2,588');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('15','11','0,0907','2,305');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('16','12','0,0808','2,053');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('17','13','0,072','1,828');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('18','14','0,0641','1,628');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('19','15','0,0571','1,45');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('20','16','0,0508','1,291');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('21','17','0,0453','1,15');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('22','18','0,0403','1,024');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('23','19','0,0359','0,912');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('24','20','0,032','0,812');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('25','21','0,0285','0,723');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('26','22','0,0253','0,644');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('27','23','0,0226','0,573');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('28','24','0,0201','0,511');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('29','25','0,0179','0,455');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('30','26','0,0159','0,405');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('31','27','0,0142','0,361');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('32','28','0,0126','0,321');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('33','29','0,0113','0,286');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('34','30','0,01','0,255');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('35','31','0,0089','0,227');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('36','32','0,008','0,202');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('37','33','0,0071','0,18');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('38','34','0,0063','0,16');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('39','35','0,0056','0,143');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('40','36','0,005','0,127');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('41','37','0,0045','0,113');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('42','38','0,004','0,101');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('43','39','0,0035','0,0897');
Insert into MWD.AMERICAN_WIRE_GAUGES (AWG_ID,AWG,INCH_DIAMETER,DIAMETER_MM) values ('44','40','0,0031','0,0799');
--------------------------------------------------------
--  DDL for Index AMERICAN_WIRE_GAUGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MWD"."AMERICAN_WIRE_GAUGE_PK" ON "MWD"."AMERICAN_WIRE_GAUGES" ("AWG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP" ;
--------------------------------------------------------
--  DDL for Index AMERICAN_WIRE_GAUGE_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MWD"."AMERICAN_WIRE_GAUGE_UK" ON "MWD"."AMERICAN_WIRE_GAUGES" ("AWG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP" ;
--------------------------------------------------------
--  DDL for Trigger AMERICAN_WIRE_GAUGES_JNTRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MWD"."AMERICAN_WIRE_GAUGES_JNTRG" 
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON MWD.AMERICAN_WIRE_GAUGES for each row 
 Declare 
  rec MWD.AMERICAN_WIRE_GAUGES_JN%ROWTYPE; 
  blank MWD.AMERICAN_WIRE_GAUGES_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.AWG_ID := :NEW.AWG_ID; 
      rec.AWG := :NEW.AWG; 
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
      rec.AWG_ID := :OLD.AWG_ID; 
      rec.AWG := :OLD.AWG; 
      rec.INCH_DIAMETER := :OLD.INCH_DIAMETER; 
      rec.DIAMETER_MM := :OLD.DIAMETER_MM; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.AMERICAN_WIRE_GAUGES_JN VALUES rec; 
  END;
/
ALTER TRIGGER "MWD"."AMERICAN_WIRE_GAUGES_JNTRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table AMERICAN_WIRE_GAUGES
--------------------------------------------------------

  ALTER TABLE "MWD"."AMERICAN_WIRE_GAUGES" ADD CONSTRAINT "AMERICAN_WIRE_GAUGE_UK" UNIQUE ("AWG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP"  ENABLE;
  ALTER TABLE "MWD"."AMERICAN_WIRE_GAUGES" ADD CONSTRAINT "AMERICAN_WIRE_GAUGE_PK" PRIMARY KEY ("AWG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP"  ENABLE;
  ALTER TABLE "MWD"."AMERICAN_WIRE_GAUGES" MODIFY ("AWG_ID" NOT NULL ENABLE);
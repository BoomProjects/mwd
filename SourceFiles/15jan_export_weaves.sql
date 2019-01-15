--------------------------------------------------------
--  File created - Tuesday-January-15-2019   
--------------------------------------------------------
DROP TABLE "MWD"."WEAVES" cascade constraints;
DROP TABLE "MWD"."DOMAINS" cascade constraints;
DROP TABLE "MWD"."WEAVES_JN" cascade constraints;
--------------------------------------------------------
--  DDL for Table WEAVES
--------------------------------------------------------

  CREATE TABLE "MWD"."WEAVES" 
   (	"WEAVE_ID" NUMBER, 
	"NAME" VARCHAR2(30 BYTE), 
	"SYNONYMS" VARCHAR2(2000 BYTE), 
	"PARENT_WEAVE_ID" NUMBER, 
	"COMPLEXITY" VARCHAR2(30 BYTE) DEFAULT 'BEGINNER', 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"SPEED_WEAVE" VARCHAR2(2000 BYTE), 
	"SOURCE_URL" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP" ;
--------------------------------------------------------
--  DDL for Table DOMAINS
--------------------------------------------------------

  CREATE TABLE "MWD"."DOMAINS" 
   (	"DOMAIN_VALUE_ID" NUMBER, 
	"DOMAIN_VALUE" VARCHAR2(100 BYTE), 
	"DOMAIN_NAME" VARCHAR2(100 BYTE), 
	"DOMAIN_REFLOC" VARCHAR2(100 BYTE) DEFAULT 'UNKNOWN', 
	"SORT_ORDER" NUMBER, 
	"PARENT_DOMAIN_VALUE_ID" NUMBER, 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"DOMAIN_TYPE" VARCHAR2(30 BYTE) DEFAULT 'LIST_OF_VALUES', 
	"ACTIVE" CHAR(1 BYTE) DEFAULT 'Y', 
	"USER_CREATED" VARCHAR2(30 BYTE), 
	"DATE_CREATED" DATE, 
	"USER_MODIFIED" VARCHAR2(30 BYTE), 
	"DATE_MODIFIED" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP" ;
--------------------------------------------------------
--  DDL for Table WEAVES_JN
--------------------------------------------------------

  CREATE TABLE "MWD"."WEAVES_JN" 
   (	"JN_OPERATION" CHAR(3 BYTE), 
	"JN_ORACLE_USER" VARCHAR2(30 BYTE), 
	"JN_DATETIME" DATE, 
	"JN_NOTES" VARCHAR2(240 BYTE), 
	"JN_APPLN" VARCHAR2(35 BYTE), 
	"JN_SESSION" NUMBER(38,0), 
	"WEAVE_ID" NUMBER, 
	"NAME" VARCHAR2(30 BYTE), 
	"SYNONYMS" VARCHAR2(2000 BYTE), 
	"PARENT_WEAVE_ID" NUMBER, 
	"COMPLEXITY" VARCHAR2(30 BYTE), 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"SPEED_WEAVE" VARCHAR2(2000 BYTE), 
	"SOURCE_URL" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP" ;
REM INSERTING into MWD.WEAVES
SET DEFINE OFF;
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('22','Box Chain','Box','11',null,'Box chain is a simple European 4 in 1 variant that is four rows wide, with the fourth row connecting back onto the first making it into a chain weave.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=12');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('23','Elfweave','Elf Weave','11',null,'A Basic European 4 in 1 variation which uses some persian style connections to create this great looking weave. Rings shown are 18 gauge 3/16"" ID.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=300');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('24','Flowers in Cages','Rosette Link','1',null,'This is a variation on Birdcage/Byzantine/Birdsnest that uses 3 ring rosettes inside the cages. Flowers in Cages is a weave by Baealiel Dreamseeker.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=76');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('25','Jens Pind Linkage','JPL, JPL3, Jens Pind Linkage 3, Spiral 4 in 1',null,null,'Jens Pind is a 4-1 spiral weave, with a tight enough AR that the spiral locks in place.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=335');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('26','Jacob''s Ladder','Jacob''s Chain, Magician''s Ladder, Spiral 3 in 1','12',null,'This is what happens when you mess up a Half Persian 3 in 1..it happens ;) It is constructed the same as European 6 in 1 but with only 2 rows. It can also be used as a magicians prop, and creates a very nifty effect.','Weave Euro 6 in 1 and take off the third row.','http://www.mailleartisans.org/weaves/weavedisplay.php?key=281');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('27','Celtic Visions',null,null,null,'Japanese in structure but looks more like Celtic knotwork. Minimum AR is the classic two ring size combo. The central small rings, however, can be reduced to an AR of 2.0 since they only pass through two other rings. Also, while listed ARs use same wire diameter for both the large and small ring, the weave is often made with a smaller wire diameter for the smaller ring, as demonstrated in the tutorials.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=244');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('28','Fourever Chain','Fourever 4 Chain',null,null,'Its basic structure consists of tightly woven 4-ring Mobius Balls, that are connected in a 2 in 1 Chain manner to a chain. And it holds its delicate structure only, if woven near the low AR limit, that is at 2.6 for the single-ring variants, and at 4.1 for the kinged ones - else a chain similar to a modified 4-ring Flower chain results. High-AR limits are not yet fully explored, but I propose not going above 2.9 (respectively 4.5 for the kinged version). And naturally there are further design options by using different ARs for Mobis and connectors.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=1178');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('29','Fourever 6 Chain',null,'28',null,'Its basic structure consists of tightly woven 4-ring Mobius Balls, that are connected in a 2 in 1 Chain manner to a chain. And it holds its delicate structure only, if woven near the low AR limit, that is at 2.6 for the single-ring variants, and at 4.1 for the kinged ones - else a chain similar to a modified 4-ring Flower chain results. High-AR limits are not yet fully explored, but I propose not going above 2.9 (respectively 4.5 for the kinged version). And naturally there are further design options by using different ARs for Mobis and connectors.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=1178');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('30','Kinged Fourever Chain','Forget-Me-Knot Chain','28',null,'4-mobius kinged up as Forget-me-knot chain.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=1178');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('31','Roundmaille',null,'11',null,'This weave is six rows wide European 4 in 1 with the sixth row connecting to the first. Best made with relatively low aspect ratios. The minimum is an AR of 3.2, which makes the weave ideal for structural applications. Recommended range: 3.3 - 4.0.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=15');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('32','Mobius Ball','Möbius Ball, Moebius Ball',null,null,'Mobius Ball is a very unique chainmail weave as it is made out of a number of rings which can vary according to the ring size, how tightly it is being made, and its intended application. Every ring in a Mobius Ball passes through every other ring. Tight Mobius Balls with higher ring numbers make great stress toys. In this application the Mobius Ball is patented (US Pat. 541-3519) and also trademarked by Mead Simon. ',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=23');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('33','Half Persian 4 in 1',null,'15',null,null,null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=50');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('34','Jens Pind Linkage 4','JPL4','25',null,null,null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=439');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('35','Jens Pind Linkage 5','JPL5','25',null,null,null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=372');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('36','5-Point Small Scale Flower','5-Pointed Overlapping Scale Flower',null,null,'Not a weave, but a tutorial with sizes.',null,'http://www.mailleartisans.org/articles/articledisplay.php?key=598');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('37','Captive Inverted Roundmaille',null,'18',null,'Inverted round with captive rings inside the chain. Minimum ARs for number of captives per cell: 1: 4.7 / 2: 5.5 / 3: 6.4 / 4: 7.4 / 5: 8.3',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=68');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('38','Elfsheet','Elf Sheet','23',null,null,null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=1099');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('39','Vipera Berus','Northern Viper',null,null,'Third bastard son of mixing European and Hoodoo. Make 1 in 1 chain, connect sides like in hoodoo or louhi. Easy to make after you get the idea.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=471');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('40','Vipera Berus Kinged',null,'39',null,'Doubled up Vipera Berus.',null,'https://www.youtube.com/watch?v=UuTyyumo2Hk');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('41','Vipera Berus Sheet',null,'39',null,'This is real Vipera Berus Sheet. It is Vipera Berus 4 in 1 in which each strip of rings is connected to each other with a Hoodoo-like zigzag pattern. ',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=473');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('42','Vipera Berus 4 in 1',null,'39',null,'This weave is same to Vipera Berus as Louhi is to Hoodoo. It is a strip of European 4 in 1 with Hoodoo-like connections on the sides. ',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=472');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('43','Dragonscale (small)','Dragonscale',null,null,'Assuming the same wire size is used for both ring types in the weave, the minimum for the small ring is around AR of 3.6. The large ring in this case must have an AR that is at least 2.0 higher than the small rings.
(small ring ID + 2*WD) / WD). Dragonscale is basically two European 4 in 1 weaves interwoven. Two ring sizes must be used to make this weave. Large rings only go through small rings. The smaller ring outer diameter must be at least slightly smaller than the larger ring inner diameter.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=11');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('44','Dragonscale (large)','Dragonscale',null,null,'Assuming the same wire size is used for both ring types in the weave, the minimum for the small ring is around AR of 3.6. The large ring in this case must have an AR that is at least 2.0 higher than the small rings.
(small ring ID + 2*WD) / WD). Dragonscale is basically two European 4 in 1 weaves interwoven. Two ring sizes must be used to make this weave. Large rings only go through small rings. The smaller ring outer diameter must be at least slightly smaller than the larger ring inner diameter.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=11');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('45','Dragonscale',null,null,null,'Assuming the same wire size is used for both ring types in the weave, the minimum for the small ring is around AR of 3.6. The large ring in this case must have an AR that is at least 2.0 higher than the small rings.
(small ring ID + 2*WD) / WD). Dragonscale is basically two European 4 in 1 weaves interwoven. Two ring sizes must be used to make this weave. Large rings only go through small rings. The smaller ring outer diameter must be at least slightly smaller than the larger ring inner diameter.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=11');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('46','4 Winds',null,null,null,'I am not usually one to design weaves with multiple ring sizes, but this weave just lends itself so well to it. Rather than one big ring, two rings can also be used to connect each cell. When this is done the faces of each cell alternate directions. AR for the 4 Winds cells is 3.09. For the large connector rings the AR is around 4.5. ',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=981');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('47','Sweetpea',null,null,null,'It is very like Medo-Persian and Fieldstone. Each unit is joined by one ring on each side instead of 1 into 2 like Medo-Persian. 4.2 ar is perfect.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=852');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('48','Candy Cane Cord','Spirally Goodness, CCC, Alternating Candy Cane Cord, or (A)CCC','1',null,'6 in 1 weave. Candy Cane Cord came forward after some experimentation with Byzantine, and can also be started using Box Chain. Variants exist with Full Persian 6 in 1 segments, using this method as an in-between connector to reverse the grain in an elegant way. A similar effect is seen on box chain and byzantine. A spiral effect is accomplished by weaving a segment as usual, and then weaving a segment of box chain. By combining these two aspects in different ways / amounts a plethora of variants can be made. This weave is primarily a chain/rope type weave, but variants from roundweave starters and quadweave starters unround into a very ugly sheet.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=1025');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('49','Infinity Rose Fidget',null,null,null,'This is not a weave, but a tutorial.',null,'https://lisaellis.selz.com/');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('50','Moorish Rose',null,'32',null,'Moorish Rose is a 9 in 1 weave made with 6-link Mobius Balls. The Mobius Balls are joined with three-link Mobius Balls made from the links on the corners of the six. The flat sides of the six are also joined together 2 in 2-stlye. Works with 22g 0.025" 5/32", 18g 0.048" 5/16". [Edit: Moorish Rose is essentially a progression of Brejão Flowers.]',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=1078');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('51','Alligator Back','Euro-Persian Hybrid','11',null,'Alligator Back is Crocodile Back based on European 4 in 1 instead of European 6 in 1. Made the same way as Persian Dragonscale but with only one side stitched up. This sample was a little tight with an AR of 4.16 (wire 1.2mm 5mm ID) so I recommend a slightly larger AR. ',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=819');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('52','GSG',null,'15',null,'GSG, named for the Great Southern Gathering where the weave was perfected, is a weave created by buddha. GSG is a Half Persian 3 Sheet 6 in 1 chain, turned sideways, two columns wide strip. There exist also three or more column wide GSG variants, that share the main weaving direction of basic GSG.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=200');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('53','Pencil Weave',null,'6',null,'This is essentially a spiral variant of Hilt Chain. Each of the rings which are parallel in the Hilt Chain instead connect in a spiral 2 in 1 Chain. The pattern can be continued to form a tube with a diameter determined by the ring size. It is also a progression of Half Persian 3 in 1 Full Spiral. Any AR over 5.2 works. Pic is 14 SWG aluminum 5/8"" ID, AR ~= 7.8. Eight 2-1 spirals make one solid tube at this size. Number of spirals per tube ~= AR. This is closely related to Round Counterspiral 5 but Pencil Weave features both around-the-eye and through-the-eye connections while Round Counterspiral uses only around-the-eye. ',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=1331');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('54','Dragonback',null,'15',null,'Dragonback is two strips of Half Persian 3 in 1 stitched up the center on both sides with European 4 in 1. Persian Dragonscale is a similar weave, but the way the European 4 in 1 is connected to the Half Persian 3 in 1 is different. This weave is different on the top and bottom. The rings used are 18awg (1.0mm)/5.0mm with an AR of 5.0.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=1224');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('55','Voodoo',null,'15',null,'Somewhat hard to describe without going into detail. It is very stable and relatively flexible.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=188');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('56','Alligator Back (small)','Euro-Persian Hybrid','11',null,'Alligator Back is Crocodile Back based on European 4 in 1 instead of European 6 in 1. Made the same way as Persian Dragonscale but with only one side stitched up. This sample was a little tight with an AR of 4.16 (wire 1.2mm 5mm ID) so I recommend a slightly larger AR. ',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=819');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('1','Byzantine','Byzantine 2, Etruscan, Birdcage, Fool''s Dilemma, Idiot''s Trap, Idiot''s Delight, Bird''s Nest',null,null,'Single units of Box Chain separated by sets of connector rings. Most commonly 2 connectors.','4 open rings to 2 closed rings. Make units of 2-in-2 and leave the last 2 open to connect units.','http://www.mailleartisans.org/weaves/weavedisplay.php?key=13');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('2','Byzantine 1','Byzantine 2, Etruscan, Birdcage, Fool''s Dilemma, Idiot''s Trap, Idiot''s Delight, Bird''s Nest','1',null,'Single units of Box Chain separated by 1 connector ring.','3 open rings to 2 closed rings. Make units of 2-in-2 and leave the last 1 open to connect units.','http://www.mailleartisans.org/weaves/weavedisplay.php?key=13');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('3','Byzantine 3','Byzantine 2, Etruscan, Birdcage, Fool''s Dilemma, Idiot''s Trap, Idiot''s Delight, Bird''s Nest','1',null,'Single units of Box Chain separated by sets of 3 connector rings.','5 open rings to 2 closed rings. Make units of 2-in-2 and leave the last 3 open to connect units.','http://www.mailleartisans.org/weaves/weavedisplay.php?key=13');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('4','Byzantine 4','Byzantine 2, Etruscan, Birdcage, Fool''s Dilemma, Idiot''s Trap, Idiot''s Delight, Bird''s Nest','1',null,'Single units of Box Chain separated by sets of 4 connector rings.','6 open rings to 2 closed rings. Make units of 2-in-2 and leave the last 4 open to connect units.','http://www.mailleartisans.org/weaves/weavedisplay.php?key=13');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('5','2 in 1 Chain','1 on 1',null,null,'2 in 1 is the foundation of every chainmail weave, with four principal layouts: Japanese, European, Spiral and Persian.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=54');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('6','Spiral 2 in 1',null,'5',null,'Spiral 2 in 1 chains have been twisted to their limit, and held in place by some other mechanism. The characteristic feature of this family is that each subsequent ring connection has a greater angle than the one preceding it.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=54');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('7','European 2 in 1',null,'5',null,'European utilizes a through-the-eye connection, placing the rings in rows that have a lean. The direction of these rows is often called the grain of the weave.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=54');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('8','Japanese 2 in 1',null,'5',null,'Japanese typically has connections at right angles, with sheets formed through the use of only the horizontal links.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=54');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('9','Persian 2 in 1',null,'5',null,'Persians true base is HP 3 in 1. This is the setup of around-the-eye connections that allows for the Persian family to begin. ',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=54');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('10','tRNA Chain','Stabilized Spiral 2 in 1','6',null,'Named after "transfer ribonucleic acid" for its shape. This a a 2 in 1 Chain twisted with stabilizer rings. Natural twist, will not lay flat at this AR. Larger AR rings can be used to make it lay flat. Holding it up always twists it.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=1416');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('11','European 4 in 1','E4-1','7',null,'European 4 in 1 is one of the most popular chainmail weaves known to mankind. It is what a lot of armour from the European middle ages was made out of. It is very easy to learn and is a versatile fabric weave that can be used to make things like shirts, coifs, dicebags, and inlays.  The sample displayed uses stainless steel rings made from .063" (1.60mm / 16 SWG) wire wrapped on 5/16" (7.94mm) mandrel. With a measured ID of .346" (8.79mm) these rings bear an AR of 5.5.  An AR of 2.9 is the minimum for E4-1. An AR of 3.0 is ideal for structural applications such as basketry. Inlays can be done in any AR possible with this weave, but are best done in the three to four range so they look less open. As a fabric, the maille maker will have to find a ring size that provides the desired openness and flexibility of the weave. Shirts, coifs, and other clothing items are generally made in the four to six range. Welded/riveted rings allow for higher ARs while maintaining good strength.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=6');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('12','European 6 in 1',null,'11',null,'European 6 in 1 is one of the simplest sheet weave progressions of European 4 in 1. In it, each ring passes through six others, creating a denser fabric, depending on the ring aspect ratio used. The minimum for this weave is an AR of 4.3.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=7');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('13','Rhinos Snorting Drano','RSD',null,null,'Persian/European hybrid. Best with rings of a small AR. Many possible variations. ',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=27');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('14','Helm Chain','Parallel Chain',null,null,'Two examples of converting Helm chain into sheet are Conundrum and Wyrm Skin.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=464');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('15','Half Persian 3 in 1',null,null,null,'Half Persian 3 in 1 is exactly one half of Full Persian 6 in 1. Half Persian 3 in 1 can be a standalone chain weave, or expanded into a sheet weave as well. Ideal AR: 4.3. Recommended AR range: 3.9 - 4.8. ',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=52');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('16','Half Persian 5 in 1',null,'15',null,'Has many of the same properties as Half Persian 3 in 1, but is more dense and lays wider at the base.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=291');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('17','Full Persian','Full Persian 6 in 1','15',null,'The minimum AR lies in the neighbourhood of AR of 4.8 The weave is stiff and unbendable at this point, and remains relatively inflexible until the low 5s. Amounts of flexibility ideal for general mailling purposes are achieved starting around an AR of 5.3, although the chain retains a certain amount of "stiffness" that keeps it from being completely collapsable up to around 6. It can still be formed into structural ring shapes when opposite ends of the chain are affixed to each other. Still useful far above an AR of 6.0, individual ring strength withstanding.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=44');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('18','Inverted Round',null,null,null,'Inverted Round is a variant of Roundmaille with the grain at a 90 degree angle. Can have captive rings added to produce Captive Inverted Round. Can have reinforced rings added to produce Reinforced Inverted Round, or Bore Worm.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=110');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('19','Japanese 12 in 2',null,null,null,'Take the Japanese 6 in 1 weave, and double it. The main advantage of this weave, if you use the correct ring sizes, is a major increase in stability of the weave. The rings do not slip over one another or flop over, therefore the pattern always shows to its best. Japanese 12 in 2 made in larger AR pairings (example: ARs 5.8,4.3) can be successfully stabilized through the use of captive rings.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=343');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('20','Japanese 6 in 1','Asa No Ha Gusari, Oriental 6 in 1','8',null,'There are two types of rings in this weave: vertical ones, which each go through two, and horizontal ones, which each go through six. Providing the wire diameter is kept the same between the horizontal and vertical rings, the minimum AR for the smaller ring is 2.0.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=16');
Insert into MWD.WEAVES (WEAVE_ID,NAME,SYNONYMS,PARENT_WEAVE_ID,COMPLEXITY,DESCRIPTION,SPEED_WEAVE,SOURCE_URL) values ('21','Flower',null,null,null,'The Flower weave is constructed of 3-ring Mobius Balls connected in series by 1 or more connector rings.',null,'http://www.mailleartisans.org/weaves/weavedisplay.php?key=25');
--------------------------------------------------------
--  DDL for Index WEAVES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MWD"."WEAVES_PK" ON "MWD"."WEAVES" ("WEAVE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP" ;
--------------------------------------------------------
--  DDL for Index WEAVES_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MWD"."WEAVES_UK" ON "MWD"."WEAVES" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP" ;
--------------------------------------------------------
--  DDL for Trigger WEAVES_BRIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MWD"."WEAVES_BRIU" 
    BEFORE INSERT OR UPDATE ON MWD.WEAVES 
    FOR EACH ROW 
DECLARE 
  weav_id number; 
  value_in_list number;
BEGIN 
  if inserting then   
    if :new.weave_id is null then 
      select weav_seq.nextval 
        into weav_id 
        from dual; 
      :new.weave_id := weav_id; 
    end if; 
  end if; 

  	-- in lieu of check constraint.
	if :new.complexity is not null then
		select nvl(count(*),0)
			into value_in_list
			from domains
			where domain_name = 'WEAVE_COMPLEXITY'
			and active = 'Y';
		if (value_in_list = 0) then
			:new.complexity := null;
		end if;
	end if;

END; 

/
ALTER TRIGGER "MWD"."WEAVES_BRIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger WEAVES_JNTRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MWD"."WEAVES_JNTRG" 
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON MWD.WEAVES for each row 
 Declare 
  rec MWD.WEAVES_JN%ROWTYPE; 
  blank MWD.WEAVES_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.WEAVE_ID := :NEW.WEAVE_ID; 
      rec.NAME := :NEW.NAME; 
      rec.SYNONYMS := :NEW.SYNONYMS; 
      rec.PARENT_WEAVE_ID := :NEW.PARENT_WEAVE_ID; 
      rec.COMPLEXITY := :NEW.COMPLEXITY; 
      rec.DESCRIPTION := :NEW.DESCRIPTION; 
      rec.SPEED_WEAVE := :NEW.SPEED_WEAVE; 
      rec.SOURCE_URL := :NEW.SOURCE_URL; 
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
      rec.WEAVE_ID := :OLD.WEAVE_ID; 
      rec.NAME := :OLD.NAME; 
      rec.SYNONYMS := :OLD.SYNONYMS; 
      rec.PARENT_WEAVE_ID := :OLD.PARENT_WEAVE_ID; 
      rec.COMPLEXITY := :OLD.COMPLEXITY; 
      rec.DESCRIPTION := :OLD.DESCRIPTION; 
      rec.SPEED_WEAVE := :OLD.SPEED_WEAVE; 
      rec.SOURCE_URL := :OLD.SOURCE_URL; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into MWD.WEAVES_JN VALUES rec; 
  END; 

/
ALTER TRIGGER "MWD"."WEAVES_JNTRG" ENABLE;
--------------------------------------------------------
--  DDL for Synonymn DUAL
--------------------------------------------------------

  CREATE OR REPLACE PUBLIC SYNONYM "DUAL" FOR "SYS"."DUAL";
--------------------------------------------------------
--  Constraints for Table WEAVES
--------------------------------------------------------

  ALTER TABLE "MWD"."WEAVES" ADD CONSTRAINT "WEAVES_UK" UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP"  ENABLE;
  ALTER TABLE "MWD"."WEAVES" ADD CONSTRAINT "WEAVES_PK" PRIMARY KEY ("WEAVE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BP"  ENABLE;
  ALTER TABLE "MWD"."WEAVES" MODIFY ("WEAVE_ID" NOT NULL ENABLE);

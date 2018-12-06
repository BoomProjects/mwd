REM   Script: MWD Schema
REM   STAGE 2: DML for REFERENCE TABLES: AMERICAN WIRE GAUGEs, STANDARD WIRE GAUGEs.


-- ALL FROM EXCEL: DATA_DML_standard_wire_gauges - DD 27/09/2018 12:00. upd column names and rows INSERTED 02/12/2018.

INSERT INTO standard_wire_gauges VALUES (1,'7/0',0.500,12.7);
INSERT INTO standard_wire_gauges VALUES (1+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'6/0',0.464,11.786);
INSERT INTO standard_wire_gauges VALUES (2+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'5/0',0.432,10.973);
INSERT INTO standard_wire_gauges VALUES (3+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'4/0',0.400,10.16);
INSERT INTO standard_wire_gauges VALUES (4+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'3/0',0.372,9.449);
INSERT INTO standard_wire_gauges VALUES (5+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'2/0',0.348,8.839);
INSERT INTO standard_wire_gauges VALUES (6+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'0',0.324,8.23);
INSERT INTO standard_wire_gauges VALUES (7+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'1',0.300,7.62);
INSERT INTO standard_wire_gauges VALUES (8+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'2',0.276,7.01);
INSERT INTO standard_wire_gauges VALUES (9+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'3',0.252,6.401);
INSERT INTO standard_wire_gauges VALUES (10+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'4',0.232,5.893);
INSERT INTO standard_wire_gauges VALUES (11+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'5',0.212,5.385);
INSERT INTO standard_wire_gauges VALUES (12+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'6',0.192,4.877);
INSERT INTO standard_wire_gauges VALUES (13+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'7',0.176,4.47);
INSERT INTO standard_wire_gauges VALUES (14+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'8',0.160,4.064);
INSERT INTO standard_wire_gauges VALUES (15+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'9',0.144,3.658);
INSERT INTO standard_wire_gauges VALUES (16+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'10',0.128,3.251);
INSERT INTO standard_wire_gauges VALUES (17+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'11',0.116,2.946);
INSERT INTO standard_wire_gauges VALUES (18+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'12',0.104,2.642);
INSERT INTO standard_wire_gauges VALUES (19+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'13',0.092,2.337);
INSERT INTO standard_wire_gauges VALUES (20+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'14',0.080,2.032);
INSERT INTO standard_wire_gauges VALUES (21+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'15',0.072,1.829);
INSERT INTO standard_wire_gauges VALUES (22+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'16',0.064,1.626);
INSERT INTO standard_wire_gauges VALUES (23+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'17',0.056,1.422);
INSERT INTO standard_wire_gauges VALUES (24+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'18',0.048,1.219);
INSERT INTO standard_wire_gauges VALUES (25+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'19',0.040,1.016);
INSERT INTO standard_wire_gauges VALUES (26+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'20',0.036,0.914);
INSERT INTO standard_wire_gauges VALUES (27+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'21',0.032,0.813);
INSERT INTO standard_wire_gauges VALUES (28+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'22',0.028,0.711);
INSERT INTO standard_wire_gauges VALUES (29+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'23',0.024,0.610);
INSERT INTO standard_wire_gauges VALUES (30+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'24',0.022,0.559);
INSERT INTO standard_wire_gauges VALUES (31+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'25',0.020,0.5080);
INSERT INTO standard_wire_gauges VALUES (32+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'26',0.018,0.4572);
INSERT INTO standard_wire_gauges VALUES (33+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'27',0.0164,0.4166);
INSERT INTO standard_wire_gauges VALUES (34+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'28',0.0148,0.3759);
INSERT INTO standard_wire_gauges VALUES (35+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'29',0.0136,0.3454);
INSERT INTO standard_wire_gauges VALUES (36+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'30',0.0124,0.3150);
INSERT INTO standard_wire_gauges VALUES (37+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'31',0.0116,0.2946);
INSERT INTO standard_wire_gauges VALUES (38+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'32',0.0108,0.2743);
INSERT INTO standard_wire_gauges VALUES (39+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'33',0.0100,0.2540);
INSERT INTO standard_wire_gauges VALUES (40+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'34',0.0092,0.2337);
INSERT INTO standard_wire_gauges VALUES (41+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'35',0.0084,0.2134);
INSERT INTO standard_wire_gauges VALUES (42+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'36',0.0076,0.1930);
INSERT INTO standard_wire_gauges VALUES (43+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'37',0.0068,0.1727);
INSERT INTO standard_wire_gauges VALUES (44+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'38',0.0060,0.1524);
INSERT INTO standard_wire_gauges VALUES (45+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'39',0.0052,0.1321);
INSERT INTO standard_wire_gauges VALUES (46+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'40',0.0048,0.1219);
INSERT INTO standard_wire_gauges VALUES (47+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'41',0.0044,0.1118);
INSERT INTO standard_wire_gauges VALUES (48+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'42',0.004,0.1016);
INSERT INTO standard_wire_gauges VALUES (49+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'43',0.0036,0.0914);
INSERT INTO standard_wire_gauges VALUES (50+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'44',0.0032,0.0813);
INSERT INTO standard_wire_gauges VALUES (51+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'45',0.0028,0.0711);
INSERT INTO standard_wire_gauges VALUES (52+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'46',0.0024,0.0610);
INSERT INTO standard_wire_gauges VALUES (53+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'47',0.0020,0.0508);
INSERT INTO standard_wire_gauges VALUES (54+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'48',0.0016,0.0406);
INSERT INTO standard_wire_gauges VALUES (55+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'49',0.0012,0.0305);
INSERT INTO standard_wire_gauges VALUES (56+(SELECT SWG_ID FROM standard_wire_gauges WHERE SWG = '7/0'),'50',0.0010,0.0254);

-- ALL FROM EXCEL: DATA_DML_american_wire_gauges - DD 27/09/2018 12:00.

INSERT INTO american_wire_gauges VALUES (1,'0000 (4/0)',0.4600,11.684);
INSERT INTO american_wire_gauges VALUES (1+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'000 (3/0)',0.4096,10.405);
INSERT INTO american_wire_gauges VALUES (2+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'00 (2/0)',0.3648,9.266);
INSERT INTO american_wire_gauges VALUES (3+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'0 (1/0)',0.3249,8.251);
INSERT INTO american_wire_gauges VALUES (4+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'1',0.2893,7.348);
INSERT INTO american_wire_gauges VALUES (5+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'2',0.2576,6.544);
INSERT INTO american_wire_gauges VALUES (6+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'3',0.2294,5.827);
INSERT INTO american_wire_gauges VALUES (7+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'4',0.2043,5.189);
INSERT INTO american_wire_gauges VALUES (8+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'5',0.1819,4.621);
INSERT INTO american_wire_gauges VALUES (9+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'6',0.1620,4.115);
INSERT INTO american_wire_gauges VALUES (10+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'7',0.1443,3.665);
INSERT INTO american_wire_gauges VALUES (11+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'8',0.1285,3.264);
INSERT INTO american_wire_gauges VALUES (12+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'9',0.1144,2.906);
INSERT INTO american_wire_gauges VALUES (13+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'10',0.1019,2.588);
INSERT INTO american_wire_gauges VALUES (14+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'11',0.0907,2.305);
INSERT INTO american_wire_gauges VALUES (15+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'12',0.0808,2.053);
INSERT INTO american_wire_gauges VALUES (16+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'13',0.0720,1.828);
INSERT INTO american_wire_gauges VALUES (17+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'14',0.0641,1.628);
INSERT INTO american_wire_gauges VALUES (18+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'15',0.0571,1.45);
INSERT INTO american_wire_gauges VALUES (19+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'16',0.0508,1.291);
INSERT INTO american_wire_gauges VALUES (20+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'17',0.0453,1.15);
INSERT INTO american_wire_gauges VALUES (21+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'18',0.0403,1.024);
INSERT INTO american_wire_gauges VALUES (22+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'19',0.0359,0.912);
INSERT INTO american_wire_gauges VALUES (23+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'20',0.0320,0.812);
INSERT INTO american_wire_gauges VALUES (24+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'21',0.0285,0.723);
INSERT INTO american_wire_gauges VALUES (25+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'22',0.0253,0.644);
INSERT INTO american_wire_gauges VALUES (26+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'23',0.0226,0.573);
INSERT INTO american_wire_gauges VALUES (27+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'24',0.0201,0.511);
INSERT INTO american_wire_gauges VALUES (28+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'25',0.0179,0.455);
INSERT INTO american_wire_gauges VALUES (29+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'26',0.0159,0.405);
INSERT INTO american_wire_gauges VALUES (30+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'27',0.0142,0.361);
INSERT INTO american_wire_gauges VALUES (31+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'28',0.0126,0.321);
INSERT INTO american_wire_gauges VALUES (32+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'29',0.0113,0.286);
INSERT INTO american_wire_gauges VALUES (33+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'30',0.0100,0.255);
INSERT INTO american_wire_gauges VALUES (34+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'31',0.00893,0.227);
INSERT INTO american_wire_gauges VALUES (35+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'32',0.00795,0.202);
INSERT INTO american_wire_gauges VALUES (36+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'33',0.00708,0.180);
INSERT INTO american_wire_gauges VALUES (37+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'34',0.00630,0.160);
INSERT INTO american_wire_gauges VALUES (38+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'35',0.00561,0.143);
INSERT INTO american_wire_gauges VALUES (39+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'36',0.00500,0.127);
INSERT INTO american_wire_gauges VALUES (40+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'37',0.00445,0.113);
INSERT INTO american_wire_gauges VALUES (41+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'38',0.00397,0.101);
INSERT INTO american_wire_gauges VALUES (42+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'39',0.00353,0.0897);
INSERT INTO american_wire_gauges VALUES (43+(SELECT AWG_ID FROM american_wire_gauges WHERE AWG = '0000 (4/0)'),'40',0.00314,0.0799);

commit;
/

prompt Creating SAMPLE...
create table SAMPLE
(
  sampleid   INTEGER not null,
  sampletype VARCHAR2(10) not null,
  requierdqu VARCHAR2(50) not null
)
;
alter table SAMPLE
  add primary key (SAMPLEID);

prompt Creating PARTICIPANT...
create table PARTICIPANT
(
  participantid NUMBER(5) not null,
  pname         VARCHAR2(15) not null,
  age           NUMBER(3) not null,
  gender        VARCHAR2(9) not null,
  address       VARCHAR2(15) not null,
  pemail        VARCHAR2(20) not null,
  sampleid      INTEGER not null
)
;
alter table PARTICIPANT
  add primary key (PARTICIPANTID);
alter table PARTICIPANT
  add foreign key (SAMPLEID)
  references SAMPLE (SAMPLEID);

prompt Creating BLOODDONATION...
create table BLOODDONATION
(
  blooddonationid NUMBER(5) not null,
  bloodquantity   NUMBER(25) not null,
  bloodtype       VARCHAR2(3) not null,
  participantid   NUMBER(5) not null
)
;
alter table BLOODDONATION
  add primary key (BLOODDONATIONID);
alter table BLOODDONATION
  add foreign key (PARTICIPANTID)
  references PARTICIPANT (PARTICIPANTID);

prompt Creating STUDY...
create table STUDY
(
  studyid      NUMBER(5) not null,
  sdescription VARCHAR2(500) not null,
  startdate    DATE not null,
  enddate      DATE not null,
  title        VARCHAR2(500) not null,
  publication  VARCHAR2(100) not null,
  cnclousions  VARCHAR2(799) not null
)
;
alter table STUDY
  add primary key (STUDYID);

prompt Creating CCONTAINING...
create table CCONTAINING
(
  studyid  NUMBER(5) not null,
  sampleid INTEGER not null
)
;
alter table CCONTAINING
  add primary key (STUDYID, SAMPLEID);
alter table CCONTAINING
  add foreign key (STUDYID)
  references STUDY (STUDYID);
alter table CCONTAINING
  add foreign key (SAMPLEID)
  references SAMPLE (SAMPLEID);

prompt Creating RRESEARCHER...
create table RRESEARCHER
(
  researcherid      NUMBER(5) not null,
  rname             VARCHAR2(15) not null,
  email             VARCHAR2(20) not null,
  phone             NUMBER(10) not null,
  department        INTEGER not null,
  researchfield     VARCHAR2(20) not null,
  yearsofexperience INTEGER not null,
  rdegree           VARCHAR2(15) not null,
  numarticales      INTEGER not null
)
;
alter table RRESEARCHER
  add primary key (RESEARCHERID);

prompt Creating CONDUCTS...
create table CONDUCTS
(
  researcherid NUMBER(5) not null,
  studyid      NUMBER(5) not null
)
;
alter table CONDUCTS
  add primary key (RESEARCHERID, STUDYID);
alter table CONDUCTS
  add foreign key (RESEARCHERID)
  references RRESEARCHER (RESEARCHERID);
alter table CONDUCTS
  add foreign key (STUDYID)
  references STUDY (STUDYID);

prompt Creating REPORTS...
create table REPORTS
(
  reportid         NUMBER(5) not null,
  reportname       VARCHAR2(15) not null,
  rdescription     VARCHAR2(500) not null,
  creationdate     DATE not null,
  recommendations  VARCHAR2(500) not null,
  issueschallenges VARCHAR2(500) not null,
  studyid          NUMBER(5) not null,
  researcherid     NUMBER(5) not null
)
;
alter table REPORTS
  add primary key (REPORTID);
alter table REPORTS
  add foreign key (STUDYID)
  references STUDY (STUDYID);
alter table REPORTS
  add foreign key (RESEARCHERID)
  references RRESEARCHER (RESEARCHERID);

prompt Disabling triggers for SAMPLE...
alter table SAMPLE disable all triggers;
prompt Disabling triggers for PARTICIPANT...
alter table PARTICIPANT disable all triggers;
prompt Disabling triggers for BLOODDONATION...
alter table BLOODDONATION disable all triggers;
prompt Disabling triggers for STUDY...
alter table STUDY disable all triggers;
prompt Disabling triggers for CCONTAINING...
alter table CCONTAINING disable all triggers;
prompt Disabling triggers for RRESEARCHER...
alter table RRESEARCHER disable all triggers;
prompt Disabling triggers for CONDUCTS...
alter table CONDUCTS disable all triggers;
prompt Disabling triggers for REPORTS...
alter table REPORTS disable all triggers;
prompt Disabling foreign key constraints for PARTICIPANT...
alter table PARTICIPANT disable constraint SYS_C00712285;
prompt Disabling foreign key constraints for BLOODDONATION...
alter table BLOODDONATION disable constraint SYS_C00712302;
prompt Disabling foreign key constraints for CCONTAINING...
alter table CCONTAINING disable constraint SYS_C00712311;
alter table CCONTAINING disable constraint SYS_C00712312;
prompt Disabling foreign key constraints for CONDUCTS...
alter table CONDUCTS disable constraint SYS_C00712306;
alter table CONDUCTS disable constraint SYS_C00712307;
prompt Disabling foreign key constraints for REPORTS...
alter table REPORTS disable constraint SYS_C00712295;
alter table REPORTS disable constraint SYS_C00712296;
prompt Deleting REPORTS...
delete from REPORTS;
commit;
prompt Deleting CONDUCTS...
delete from CONDUCTS;
commit;
prompt Deleting RRESEARCHER...
delete from RRESEARCHER;
commit;
prompt Deleting CCONTAINING...
delete from CCONTAINING;
commit;
prompt Deleting STUDY...
delete from STUDY;
commit;
prompt Deleting BLOODDONATION...
delete from BLOODDONATION;
commit;
prompt Deleting PARTICIPANT...
delete from PARTICIPANT;
commit;
prompt Deleting SAMPLE...
delete from SAMPLE;
commit;
prompt Loading SAMPLE...
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (97, 'Children', '238');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (936, 'Adults', '186');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (736, 'Elderly', '425');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (772, 'Elderly', '109');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (995, 'Children', '364');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (379, 'Children', '76');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (603, 'Children', '225');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (358, 'Adults', '348');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (711, 'Pregnant', '372');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (666, 'Children', '390');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (489, 'Children', '67');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (750, 'Elderly', '248');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (122, 'Elderly', '371');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (422, 'Pregnant', '234');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (58, 'Children', '59');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (893, 'Elderly', '328');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (361, 'Pregnant', '394');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (639, 'Elderly', '78');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (275, 'Pregnant', '49');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (987, 'Children', '148');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (935, 'Adults', '224');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (759, 'Children', '231');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (322, 'Children', '181');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (584, 'Elderly', '174');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (46, 'Children', '287');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (834, 'Adults', '270');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (470, 'Children', '344');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (846, 'Children', '91');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (829, 'Elderly', '178');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (162, 'Children', '398');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (788, 'Pregnant', '222');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (88, 'Adults', '34');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (597, 'Children', '304');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (173, 'Pregnant', '290');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (614, 'Adults', '264');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (517, 'Pregnant', '124');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (814, 'Pregnant', '371');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (337, 'Children', '161');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (703, 'Pregnant', '235');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (894, 'Elderly', '356');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (273, 'Adults', '288');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (602, 'Elderly', '444');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (760, 'Children', '375');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (19, 'Adults', '264');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (516, 'Pregnant', '50');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (621, 'Pregnant', '60');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (652, 'Children', '152');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (541, 'Elderly', '176');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (880, 'Elderly', '214');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (355, 'Elderly', '220');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (70, 'Pregnant', '378');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (751, 'Elderly', '150');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (500, 'Pregnant', '217');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (723, 'Children', '256');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (629, 'Adults', '361');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (259, 'Adults', '348');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (292, 'Pregnant', '388');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (53, 'Children', '316');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (793, 'Adults', '188');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (492, 'Children', '183');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (968, 'Elderly', '155');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (527, 'Pregnant', '387');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (803, 'Children', '282');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (823, 'Children', '400');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (974, 'Adults', '72');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (260, 'Adults', '38');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (591, 'Pregnant', '393');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (796, 'Adults', '49');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (65, 'Pregnant', '245');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (622, 'Pregnant', '148');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (79, 'Children', '339');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (224, 'Children', '339');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (899, 'Adults', '284');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (319, 'Elderly', '338');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (389, 'Adults', '218');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (384, 'Pregnant', '115');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (218, 'Children', '319');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (360, 'Elderly', '244');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (601, 'Adults', '214');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (28, 'Pregnant', '302');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (944, 'Children', '432');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (249, 'Pregnant', '155');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (52, 'Pregnant', '146');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (604, 'Pregnant', '175');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (701, 'Elderly', '163');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (915, 'Pregnant', '330');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (410, 'Elderly', '239');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (38, 'Adults', '276');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (40, 'Adults', '308');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (579, 'Elderly', '90');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (72, 'Pregnant', '181');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (373, 'Adults', '252');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (491, 'Children', '396');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (478, 'Adults', '325');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (931, 'Children', '405');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (978, 'Adults', '398');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (397, 'Pregnant', '315');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (261, 'Children', '372');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (140, 'Children', '328');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (488, 'Elderly', '277');
commit;
prompt 100 records committed...
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (240, 'Adults', '345');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (186, 'Pregnant', '356');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (728, 'Adults', '267');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (524, 'Adults', '450');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (467, 'Adults', '277');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (171, 'Adults', '231');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (832, 'Elderly', '428');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (764, 'Children', '39');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (339, 'Elderly', '31');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (694, 'Adults', '392');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (695, 'Elderly', '122');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (476, 'Adults', '205');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (986, 'Elderly', '289');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (246, 'Adults', '374');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (447, 'Pregnant', '369');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (194, 'Elderly', '216');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (76, 'Children', '380');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (31, 'Children', '178');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (800, 'Adults', '240');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (716, 'Elderly', '200');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (778, 'Children', '412');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (985, 'Children', '289');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (569, 'Pregnant', '393');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (238, 'Elderly', '101');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (137, 'Adults', '430');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (994, 'Elderly', '269');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (959, 'Elderly', '429');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (155, 'Adults', '104');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (984, 'Elderly', '301');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (178, 'Pregnant', '259');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (594, 'Children', '84');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (882, 'Pregnant', '63');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (773, 'Adults', '270');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (617, 'Pregnant', '170');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (237, 'Pregnant', '307');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (910, 'Pregnant', '141');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (649, 'Elderly', '397');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (693, 'Children', '163');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (368, 'Elderly', '66');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (932, 'Adults', '316');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (661, 'Elderly', '72');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (268, 'Children', '250');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (950, 'Pregnant', '35');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (36, 'Elderly', '93');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (658, 'Adults', '284');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (699, 'Elderly', '450');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (988, 'Adults', '235');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (653, 'Children', '128');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (853, 'Pregnant', '95');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (50, 'Children', '214');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (219, 'Pregnant', '196');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (509, 'Adults', '157');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (195, 'Elderly', '137');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (619, 'Elderly', '69');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (263, 'Children', '335');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (416, 'Children', '39');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (913, 'Elderly', '279');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (645, 'Children', '206');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (956, 'Children', '169');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (749, 'Pregnant', '275');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (398, 'Adults', '449');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (811, 'Adults', '371');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (269, 'Pregnant', '439');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (256, 'Pregnant', '234');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (867, 'Pregnant', '288');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (74, 'Elderly', '446');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (481, 'Adults', '335');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (792, 'Elderly', '402');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (863, 'Children', '376');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (740, 'Pregnant', '171');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (623, 'Children', '289');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (872, 'Adults', '445');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (245, 'Pregnant', '409');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (405, 'Pregnant', '103');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (15, 'Elderly', '217');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (599, 'Adults', '404');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (41, 'Pregnant', '163');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (637, 'Adults', '313');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (409, 'Pregnant', '218');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (557, 'Elderly', '423');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (451, 'Adults', '381');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (276, 'Pregnant', '385');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (2, 'Children', '448');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (463, 'Elderly', '120');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (119, 'Children', '260');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (672, 'Elderly', '67');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (330, 'Pregnant', '327');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (329, 'Elderly', '294');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (341, 'Adults', '440');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (228, 'Pregnant', '137');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (530, 'Adults', '234');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (118, 'Adults', '311');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (849, 'Children', '289');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (687, 'Pregnant', '404');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (884, 'Adults', '317');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (149, 'Adults', '418');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (702, 'Adults', '224');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (71, 'Adults', '309');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (112, 'Children', '372');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (657, 'Adults', '425');
commit;
prompt 200 records committed...
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (881, 'Pregnant', '224');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (406, 'Adults', '266');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (210, 'Children', '73');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (391, 'Adults', '94');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (633, 'Pregnant', '146');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (888, 'Adults', '162');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (307, 'Adults', '340');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (454, 'Adults', '212');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (462, 'Elderly', '277');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (477, 'Adults', '137');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (108, 'Children', '359');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (744, 'Pregnant', '307');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (887, 'Pregnant', '163');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (835, 'Children', '255');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (196, 'Children', '332');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (949, 'Elderly', '77');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (438, 'Pregnant', '432');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (200, 'Pregnant', '259');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (387, 'Elderly', '299');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (775, 'Children', '45');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (508, 'Pregnant', '105');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (115, 'Pregnant', '196');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (288, 'Adults', '99');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (16, 'Pregnant', '256');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (817, 'Adults', '55');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (185, 'Children', '116');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (836, 'Children', '262');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (973, 'Adults', '411');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (631, 'Adults', '392');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (216, 'Pregnant', '31');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (955, 'Children', '350');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (774, 'Elderly', '331');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (545, 'Pregnant', '350');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (713, 'Adults', '34');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (184, 'Elderly', '447');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (583, 'Adults', '384');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (12, 'Children', '371');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (487, 'Adults', '220');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (971, 'Pregnant', '187');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (286, 'Elderly', '244');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (365, 'Children', '57');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (813, 'Adults', '217');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (353, 'Children', '239');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (825, 'Elderly', '38');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (678, 'Adults', '53');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (807, 'Elderly', '269');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (892, 'Children', '87');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (367, 'Elderly', '405');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (101, 'Children', '290');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (493, 'Pregnant', '230');
insert into SAMPLE (sampleid, sampletype, requierdqu)
values (181, 'Children', '263');
commit;
prompt 251 records loaded
prompt Loading PARTICIPANT...
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (1, 'JulieStuermer', 85, 'MEN', 'USA57 Hanley Dr', 'jstuermer@jlphor.com', 155);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (2, 'EllenRipley', 90, 'WOMEN', 'Canada49 Radovl', 'ellenr@hewlettpackar', 658);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (3, 'FisherStiller', 70, 'MEN', 'Canada119 Jean-', 'f.stiller@printtech.', 286);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (4, 'AniBalk', 33, 'MEN', 'Brazil4 Davidso', 'ani.balk@ghrsystems.', 260);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (5, 'RhonaCartlidge', 72, 'WOMEN', 'Spain30 Kravitz', 'rhona.cartlidge@heri', 240);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (6, 'AliceConnick', 78, 'WOMEN', 'USA6 Emmerich R', 'a.connick@powerlight', 803);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (7, 'ReesePresley', 18, 'WOMEN', 'Brazil43 Arling', 'reese.presley@homede', 892);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (8, 'ChristinaMcNarl', 28, 'WOMEN', 'Germany62nd Str', 'christina.m@marriott', 263);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (9, 'SeannBuscemi', 51, 'WOMEN', 'USA65 Boothe Av', 'seann.buscemi@alogen', 195);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (10, 'FrankPreston', 15, 'WOMEN', 'USA66 Rispoli B', 'frank.preston@timber', 893);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (11, 'RowanMacy', 41, 'WOMEN', 'Finland1 Juice', 'rowan@qssgroup.fi', 716);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (12, 'LaurenceMahood', 80, 'MEN', 'United Kingdom2', 'laurence@mcdonalds.u', 489);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (13, 'GlenDafoe', 34, 'MEN', 'Russia30 Taha D', 'g.dafoe@nsd.com', 467);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (14, 'LoreenaMatarazz', 94, 'MEN', 'USA96 Burlingto', 'loreena.matarazzo@he', 788);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (15, 'VickieCube', 23, 'MEN', 'Netherlands26 M', 'vickie@lindin.nl', 631);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (16, 'MaxNorton', 45, 'MEN', 'India45 Wood Av', 'max.norton@volkswage', 637);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (17, 'GavinKweller', 70, 'WOMEN', 'USA254 Belles D', 'gavin@learningvoyage', 751);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (18, 'RobDean', 40, 'WOMEN', 'Denmark46 Garth', 'r.dean@palmbeachtan.', 968);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (19, 'CarolynMann', 72, 'MEN', 'Germany88 Bragg', 'c.mann@philipmorris.', 832);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (20, 'RascalOrlando', 36, 'WOMEN', 'Japan21st Stree', 'rorlando@glmt.jp', 687);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (21, 'CeiliBlanchett', 62, 'MEN', 'USA46 San Dimas', 'ceili@swp.com', 322);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (22, 'JuanField', 52, 'MEN', 'USA41st Street', 'juan.field@entellige', 913);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (23, 'NormDiffie', 11, 'WOMEN', 'Israel53rd Stre', 'norm.diffie@sis.il', 16);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (24, 'RalphSoul', 94, 'MEN', 'USA32 T?by', 'ralphs@ataservices.c', 268);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (25, 'DeanHolly', 54, 'WOMEN', 'Germany24 Etta ', 'dholly@marriottinter', 19);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (26, 'ReneLandau', 77, 'MEN', 'Denmark91st Str', 'rene.landau@paintedw', 416);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (27, 'XanderHenstridg', 53, 'MEN', 'USA64 Steven Dr', 'xanderh@bayer.com', 760);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (28, 'ColleenCraven', 75, 'MEN', 'Brazil9 Toyama ', 'colleen@parksite.br', 740);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (29, 'CoreyHaslam', 24, 'MEN', 'Brazil75 Goodal', 'corey.haslam@tilia.b', 185);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (30, 'CrystalHoly', 22, 'MEN', 'USA12nd Street', 'crystal.holy@boldtec', 72);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (31, 'SpencerBoyle', 83, 'WOMEN', 'Japan93rd Stree', 'spencer@yumbrands.jp', 584);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (32, 'ChaleeKinney', 33, 'WOMEN', 'South Korea17 C', 'chalee.kinney@cmi.co', 487);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (33, 'ChetPfeiffer', 51, 'WOMEN', 'USA94 Slmea Blv', 'chet.pfeiffer@sarale', 219);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (34, 'AnneGlenn', 94, 'MEN', 'New Zealand21 X', 'aglenn@safehomesecur', 658);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (35, 'OssieO''Neill', 60, 'MEN', 'USA366 Mahood B', 'ossieo@pulaskifinanc', 330);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (36, 'ArminKilmer', 69, 'MEN', 'Denmark56 Krist', 'armin.kilmer@hencie.', 488);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (37, 'EdgarMcFadden', 39, 'WOMEN', 'USA68 Louise Ro', 'edgar.mcfadden@ufs.c', 693);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (38, 'JudgeFranks', 74, 'WOMEN', 'USA32 Earl Stre', 'judge.franks@ubp.com', 72);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (39, 'MickyJay', 17, 'MEN', 'USA48 Rob Ave', 'micky.jay@ivci.com', 397);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (40, 'OdedCollette', 67, 'WOMEN', 'New Zealand19 D', 'odedc@americanvangua', 196);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (41, 'AidaSanders', 19, 'WOMEN', 'Germany51 Crete', 'aida.sanders@otbd.de', 657);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (42, 'MalcolmLoring', 55, 'MEN', 'India16 Delafie', 'malcolm@trafficmanag', 2);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (43, 'NathanHenstridg', 55, 'WOMEN', 'Brazil208 Paul ', 'nathan.h@educational', 358);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (44, 'TarynNicholson', 88, 'MEN', 'Germany629 Thom', 'taryn.nicholson@balc', 88);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (45, 'TiaCornell', 59, 'WOMEN', 'Sweden42 Stewar', 'tia.cornell@totalent', 887);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (46, 'BrothersChamber', 57, 'WOMEN', 'Finland22nd Str', 'brothers@bradleyphar', 200);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (47, 'JesusRosas', 91, 'WOMEN', 'USA72nd Street', 'jesus.rosas@ccfholdi', 196);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (48, 'AnnRanger', 50, 'WOMEN', 'USA78 Carlton A', 'ann.r@tps.com', 887);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (49, 'CoreyMarley', 32, 'WOMEN', 'Germany17 Grand', 'corey.marley@pharmaf', 137);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (50, 'GeorgeWhitford', 15, 'MEN', 'USA61 Joey Ave', 'george.whitford@aqui', 723);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (51, 'CyndiMoffat', 94, 'WOMEN', 'Japan34 Avital ', 'cyndi.moffat@volkswa', 894);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (52, 'WhoopiDutton', 77, 'MEN', 'Spain98 Rankin ', 'whoopi.dutton@onesou', 259);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (53, 'SalmaVoight', 32, 'WOMEN', 'Germany16 Schwi', 'salmav@ceb.de', 15);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (54, 'GabrielKweller', 43, 'MEN', 'USA89 Horsham D', 'gabriel.kweller@unic', 910);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (55, 'TayeHewitt', 56, 'WOMEN', 'Canada31 Rade D', 'taye.h@trinityhomeca', 814);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (56, 'ToshiroCattrall', 94, 'MEN', 'Switzerland926 ', 'toshiro.cattrall@tra', 764);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (57, 'RoryMellencamp', 33, 'MEN', 'USA52 Sweet Dri', 'rory.mellencamp@amer', 892);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (58, 'CaseyLaw', 46, 'MEN', 'France46 El Dor', 'casey.law@sms.fr', 368);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (59, 'JohnPalmieri', 90, 'MEN', 'USA40 Geena Str', 'johnp@data.com', 12);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (60, 'BradPonce', 97, 'MEN', 'USA356 Rickie D', 'b.ponce@sunstream.co', 849);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (61, 'MerylSwinton', 18, 'WOMEN', 'United Kingdom5', 'meryls@capellaeducat', 245);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (62, 'AzucarZevon', 36, 'MEN', 'Mexico57 Rhys A', 'azucar.zevon@pinnacl', 987);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (63, 'MoeDonovan', 79, 'WOMEN', 'USA583 Alex Roa', 'moe.donovan@career.c', 240);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (64, 'YaphetMcGinley', 35, 'MEN', 'USA60 Daryle St', 'ymcginley@trx.com', 817);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (65, 'JetLipnicki', 85, 'MEN', 'USA33rd Street', 'jetl@data.com', 666);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (66, 'VictorFonda', 19, 'WOMEN', 'Switzerland93 S', 'victor.fonda@talx.ch', 834);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (67, 'BernardSteiger', 41, 'WOMEN', 'USA871 Rickie', 'bernard@prp.com', 341);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (68, 'UdoIdle', 46, 'WOMEN', 'France35 Dusche', 'udo@uem.fr', 509);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (69, 'MurrayPlowright', 56, 'MEN', 'USA79 Hayek Ave', 'murray.plowright@gla', 995);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (70, 'BettePotter', 11, 'WOMEN', 'Iceland71 Cattr', 'bette.p@lindin.is', 759);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (71, 'RebeccaLorenz', 60, 'WOMEN', 'Canada8 Davidtz', 'rebecca.lorenz@team.', 699);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (72, 'AzucarWhitmore', 27, 'WOMEN', 'South Africa19 ', 'awhitmore@ultimus.za', 872);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (73, 'EmmaMills', 98, 'MEN', 'Germany41 Bentl', 'emmam@kingston.de', 237);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (74, 'Albertde Lancie', 50, 'MEN', 'United Kingdom5', 'a.delancie@glaxosmit', 292);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (75, 'PattyGyllenhaal', 13, 'WOMEN', 'Australia62 Ham', 'patty.gyllenhaal@vis', 603);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (76, 'MelLiu', 47, 'MEN', 'USA73 Sample Ro', 'mel.liu@portageenvir', 910);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (77, 'JeffButler', 34, 'WOMEN', 'USA78 Sant Cuga', 'jeff.butler@ass.com', 693);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (78, 'CollectiveJohns', 87, 'WOMEN', 'USA50 Darren Av', 'cjohnson@ahl.com', 772);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (79, 'OlympiaRudd', 35, 'WOMEN', 'Italy96 Fort Sa', 'olympia.rudd@volkswa', 881);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (80, 'WesleyLatifah', 70, 'WOMEN', 'USA40 Baltimore', 'wesley.latifah@inzon', 893);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (81, 'SwoosieStatham', 21, 'WOMEN', 'Australia83 Sus', 'swoosie.statham@aop.', 416);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (82, 'ElvisBeals', 57, 'MEN', 'Germany21 Getty', 'elvis.beals@myricom.', 16);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (83, 'ChloeGarza', 64, 'WOMEN', 'USA574 Jessee R', 'chloe.garza@electric', 397);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (84, 'TriniHoward', 64, 'MEN', 'Czech republic2', 't.howard@comglobalsy', 701);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (85, 'DermotWinstone', 36, 'MEN', 'Germany48 Zahn ', 'dermot.winstone@huds', 196);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (86, 'LizzyHackman', 7, 'MEN', 'Italy12 Barry', 'lizzy.hackman@fns.it', 631);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (87, 'RaulSenior', 25, 'WOMEN', 'Israel61 Gibbon', 'raul@logisticare.il', 2);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (88, 'BradBurns', 69, 'MEN', 'Germany70 Jessi', 'brad.b@palmbeachtan.', 602);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (89, 'BustaMcFerrin', 67, 'WOMEN', 'USA453 Wade Str', 'busta.mcferrin@mwh.c', 524);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (90, 'LesleyPatton', 24, 'MEN', 'Brazil842 Sepul', 'lesley.patton@dearbo', 653);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (91, 'RandallSpiner', 98, 'WOMEN', 'Spain83rd Stree', 'randall@esoftsolutio', 405);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (92, 'DebraKotto', 71, 'WOMEN', 'USA169 Lavigne ', 'd.kotto@hcoa.com', 218);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (93, 'AliciaEl-Saher', 74, 'MEN', 'Paraguay14 Lind', 'a.elsaher@sds.py', 389);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (94, 'ChazzCoburn', 72, 'WOMEN', 'USA13 Ellen Ave', 'chazz.coburn@ris.com', 867);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (95, 'ToriDanger', 62, 'MEN', 'South Africa40 ', 'tori.danger@questarc', 171);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (96, 'ParkerMars', 72, 'WOMEN', 'Germany815 Rodg', 'parker@spas.de', 119);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (97, 'GeorgeChild', 40, 'MEN', 'United Kingdom1', 'georgec@sears.uk', 15);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (98, 'BrianTennison', 52, 'MEN', 'Switzerland54 S', 'brian.tennison@msdw.', 973);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (99, 'WinonaSample', 20, 'MEN', 'Costa Rica51 Bo', 'winona.sample@innova', 653);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (100, 'JoaquinKimball', 14, 'MEN', 'Japan6 Mississa', 'joaquin@webgroup.jp', 740);
commit;
prompt 100 records committed...
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (101, 'BernieRandal', 43, 'WOMEN', 'USA923 Heiligen', 'bernier@biosite.com', 693);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (102, 'GabyLaBelle', 95, 'MEN', 'Sweden13 Tooele', 'gaby.labelle@questar', 228);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (103, 'JoshuaFogerty', 39, 'WOMEN', 'Singapore51 Cha', 'joshua.fogerty@white', 373);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (104, 'BeverleyChestnu', 42, 'WOMEN', 'USA11 Reston Ro', 'beverley.chestnut@ql', 658);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (105, 'MadeleineJane', 22, 'WOMEN', 'USA77 Dylan Dri', 'mjane@jcpenney.com', 28);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (106, 'NatashaWhitman', 16, 'WOMEN', 'United Kingdom8', 'natasha@wellsfinanci', 813);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (107, 'BethSewell', 65, 'WOMEN', 'United Kingdom6', 'beth.sewell@ads.uk', 200);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (108, 'NenehHeche', 28, 'WOMEN', 'Australia71 Mad', 'nenehh@iss.au', 155);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (109, 'AniHershey', 42, 'WOMEN', 'Japan11 Gough S', 'ahershey@smartronix.', 481);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (110, 'Mary BethBenson', 39, 'MEN', 'USA680 North Yo', 'marybeth.benson@bold', 619);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (111, 'MerleBiggs', 11, 'MEN', 'USA86 Aniston A', 'merle.biggs@qas.com', 545);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (112, 'NatachaBoorem', 13, 'MEN', 'USA35 Isaac Str', 'natacha.boorem@grani', 584);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (113, 'JakeHynde', 26, 'MEN', 'Italy42nd Stree', 'jake.hynde@ubp.it', 358);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (114, 'JulietFlanery', 85, 'MEN', 'USA31 Haslam Bl', 'julietf@kis.com', 915);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (115, 'AlbertFirth', 12, 'MEN', 'USA32nd Street', 'albert.firth@scripts', 406);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (116, 'LaurenceRollins', 36, 'MEN', 'Netherlands17 I', 'lrollins@venoco.nl', 447);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (117, 'CandiceSinise', 62, 'WOMEN', 'Germany85 Henst', 'candices@hfn.de', 813);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (118, 'WayneDeejay', 14, 'MEN', 'India145 Trini ', 'w.deejay@fmi.in', 583);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (119, 'ChaleeTravolta', 47, 'WOMEN', 'South Africa98 ', 'chaleet@hfg.za', 956);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (120, 'LauraDiffie', 38, 'MEN', 'Austria7 Walnut', 'laura.diffie@anworth', 108);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (121, 'OwenOszajca', 44, 'MEN', 'Germany79 Tyron', 'ooszajca@directdata.', 149);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (122, 'LesleyWalker', 9, 'MEN', 'Brazil17 Heath ', 'lesley@innovativelig', 36);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (123, 'LydiaWakeling', 32, 'WOMEN', 'Lithuania213 Bi', 'lydia.wakeling@kroge', 493);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (124, 'SimonTravolta', 43, 'WOMEN', 'Japan38 Lennox ', 'simon.travolta@webgr', 583);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (125, 'MarisaLauper', 76, 'MEN', 'USA71 Lachey St', 'marisa.lauper@glaxos', 508);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (126, 'OlympiaPacino', 24, 'WOMEN', 'USA34 Benoit St', 'olympiap@midwestmedi', 237);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (127, 'EmmaDoucette', 83, 'MEN', 'Cyprus76 Bridge', 'emma.doucette@intras', 846);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (128, 'ToddRosas', 76, 'WOMEN', 'Brazil16 Richar', 'todd@intraspheretech', 694);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (129, 'LiamChandler', 97, 'MEN', 'USA387 Slmea Av', 'liamc@vms.com', 268);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (130, 'VictorPhifer', 68, 'MEN', 'Georgia14 Carso', 'victor.phifer@deutsc', 584);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (131, 'DwightWhitaker', 41, 'MEN', 'Italy688 Carrer', 'dwight.whitaker@insu', 361);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (132, 'XanderNightinga', 86, 'WOMEN', 'USA26 Clinton A', 'xander.nightingale@r', 661);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (133, 'JoelyBassett', 74, 'MEN', 'USA74 Pacific G', 'joely.bassett@waltdi', 913);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (134, 'DavidBrody', 25, 'MEN', 'USA13 DiFranco ', 'david.brody@timevisi', 273);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (135, 'KevnChaplin', 38, 'MEN', 'Canada81st Stre', 'k.chaplin@tilsonland', 913);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (136, 'MelCromwell', 94, 'MEN', 'USA38 Rich Blvd', 'mel.cromwell@taycorf', 750);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (137, 'MoeImbruglia', 93, 'WOMEN', 'Switzerland31st', 'moe.imbruglia@jma.ch', 246);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (138, 'JeremyFarrow', 77, 'MEN', 'USA22 Marlboro ', 'jfarrow@abs.com', 601);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (139, 'BethThorton', 87, 'MEN', 'Sweden22 Lila R', 'beth@aop.se', 360);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (140, 'CeiliCrudup', 77, 'MEN', 'USA95 Ljubljana', 'ceili.crudup@ksj.com', 487);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (141, 'ChadGere', 90, 'WOMEN', 'United Kingdom1', 'chad.gere@vesta.uk', 881);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (142, 'WoodyFichtner', 72, 'WOMEN', 'United Kingdom9', 'woody.fichtner@knigh', 760);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (143, 'NightEverett', 25, 'WOMEN', 'India43 Flack A', 'neverett@abatix.in', 273);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (144, 'MadeleineGryner', 53, 'MEN', 'India11 Reubens', 'madeleine@sds.in', 759);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (145, 'FionaQuatro', 92, 'MEN', 'United Kingdom3', 'fquatro@bashen.uk', 58);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (146, 'DrewIsaacs', 90, 'MEN', 'USA100 Praga Ro', 'drew.isaacs@atg.com', 162);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (147, 'RutgerSinise', 50, 'MEN', 'Australia568 Ec', 'rutger.sinise@mcdona', 894);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (148, 'IsaacHagerty', 59, 'MEN', 'USA24 Ferrell B', 'isaach@bayer.com', 527);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (149, 'BoWatley', 73, 'MEN', 'Germany597 Morr', 'bo.w@volkswagen.de', 492);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (150, 'DaryleGarfunkel', 57, 'WOMEN', 'Belgium22nd Str', 'daryle.garfunkel@bed', 932);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (151, 'RoscoePryce', 9, 'MEN', 'USA41st Street', 'roscoe.pryce@usphysi', 341);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (152, 'KirkSingletary', 85, 'MEN', 'Italy41 Cherry ', 'k.singletary@teamstu', 462);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (153, 'TeenaWashington', 78, 'WOMEN', 'USA15 Fogerty S', 'teena@glacierbancorp', 695);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (154, 'JonathanOates', 21, 'WOMEN', 'USA8 Sandler St', 'joates@simplycertifi', 228);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (155, 'AlexIsaacs', 47, 'MEN', 'Canada27 Northa', 'alex.i@tracertechnol', 101);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (156, 'CrispinShalhoub', 85, 'MEN', 'Venezuela75 Dor', 'crispin.shalhoub@at.', 360);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (157, 'ColeTripplehorn', 67, 'MEN', 'USA77 Kravitz', 'cole.tripplehorn@ser', 115);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (158, 'SallyKing', 57, 'MEN', 'Germany81st Str', 'sally@netnumina.de', 716);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (159, 'KyraMahoney', 74, 'MEN', 'USA66 Garth Str', 'kyra.mahoney@capital', 15);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (160, 'Chant?Connelly', 44, 'MEN', 'USA755 Presley ', 'chant.connelly@inzon', 774);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (161, 'HoraceNewton', 96, 'WOMEN', 'USA88 Ashley Av', 'horace.newton@canter', 584);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (162, 'DonnaRickles', 76, 'MEN', 'USA72 Stephen R', 'donna.rickles@vivend', 178);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (163, 'CliveHarnes', 62, 'WOMEN', 'Switzerland19 B', 'clive.harnes@general', 16);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (164, 'BustaMitchell', 98, 'WOMEN', 'USA22 Goodall D', 'busta.mitchell@ibm.c', 693);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (165, 'AllisonMortense', 87, 'WOMEN', 'United Kingdom7', 'allison@mwh.uk', 115);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (166, 'KieranDourif', 20, 'MEN', 'Germany57 Vende', 'kierand@refinery.de', 245);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (167, 'GavinTolkan', 80, 'WOMEN', 'USA97 Rapaport ', 'gtolkan@quakercityba', 118);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (168, 'LupeWarburton', 95, 'WOMEN', 'USA3 Ronnie Str', 'lupe@spas.com', 915);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (169, 'GenaBurke', 8, 'WOMEN', 'Italy23 Machine', 'gena.b@streetglow.it', 467);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (170, 'VivicaBasinger', 68, 'MEN', 'Georgia852 Susa', 'vivica.b@infovision.', 307);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (171, 'OmarCazale', 90, 'MEN', 'USA382 Orton Ro', 'omar.cazale@tilsonhr', 438);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (172, 'NoraKurtz', 20, 'MEN', 'Canada12 Wuerzb', 'norak@tmaresources.c', 973);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (173, 'Mary BethBrooke', 26, 'WOMEN', 'USA892 West Mon', 'marybeth.brooke@tps.', 849);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (174, 'Ming-NaStanton', 16, 'MEN', 'Norway41st Stre', 'mingna.s@sears.no', 260);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (175, 'TerrySolido', 66, 'WOMEN', 'Finland63 Heche', 'terry@doraldentalusa', 52);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (176, 'WillNeeson', 26, 'MEN', 'USA67 Wiest', 'will.neeson@hotmail.', 974);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (177, 'Chant?Nicholson', 17, 'MEN', 'USA94 Peachtree', 'chant.n@kimberlyclar', 959);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (178, 'RoyDalley', 45, 'WOMEN', 'Germany18 McAna', 'roy@linacsystems.de', 631);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (179, 'WangHenriksen', 90, 'WOMEN', 'USA46 Toronto D', 'wang@hotmail.com', 984);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (180, 'HumbertoPaxton', 40, 'WOMEN', 'USA62 Deerfield', 'humberto@hersheyfood', 713);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (181, 'JasonSecada', 35, 'MEN', 'USA638 Dustin A', 'jsecada@ibm.com', 50);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (182, 'LaurieArmatradi', 40, 'WOMEN', 'USA86 Kris Driv', 'laurie.armatrading@c', 744);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (183, 'JuliaSoda', 25, 'WOMEN', 'Netherlands61 B', 'julia.soda@nexxtwork', 384);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (184, 'FrancoWoodward', 12, 'WOMEN', 'Brazil93 Matara', 'franco.woodward@matt', 968);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (185, 'RosarioPosener', 93, 'WOMEN', 'USA88 Omar Ave', 'rposener@grs.com', 597);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (186, 'NaomiFehr', 51, 'WOMEN', 'USA50 Levine', 'naomi.fehr@abatix.co', 892);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (187, 'FreddieSpacek', 42, 'WOMEN', 'USA74 Plummer S', 'freddies@isd.com', 489);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (188, 'EddieDonelly', 17, 'MEN', 'United Kingdom7', 'eddie.donelly@sarale', 178);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (189, 'JuanLevy', 41, 'WOMEN', 'USA11 Simpson R', 'juan.l@pinnaclestaff', 603);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (190, 'RaymondTrippleh', 17, 'WOMEN', 'United Kingdom1', 'raymond.tripplehorn@', 716);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (191, 'DickBeals', 95, 'MEN', 'USA18 Mary', 'dick.beals@qas.com', 569);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (192, 'JeroenAvalon', 54, 'MEN', 'Canada23 Liotta', 'jeroen.avalon@albert', 319);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (193, 'JayCara', 21, 'MEN', 'Canada2 Matt Av', 'j.cara@questarcapita', 16);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (194, 'AshtonKahn', 27, 'MEN', 'USA55 Lou Road', 'ashton.k@onstaff.com', 836);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (195, 'MindyStampley', 87, 'WOMEN', 'France32 Ferrer', 'mindys@oss.fr', 273);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (196, 'JeffreyEverett', 69, 'WOMEN', 'USA472 Kurt Str', 'jeffrey.everett@ach.', 491);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (197, 'OdedField', 58, 'WOMEN', 'United Kingdom9', 'oded.field@genghisgr', 986);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (198, 'JaniceMcDiarmid', 70, 'MEN', 'USA95 Dunst Dri', 'janice.mcdiarmid@usa', 978);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (199, 'RitchieCrow', 27, 'WOMEN', 'USA81 Chapman R', 'ritchie.crow@sht.com', 391);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (200, 'GeenaCassidy', 53, 'WOMEN', 'Hungary62 Range', 'geena.c@peerlessmanu', 31);
commit;
prompt 200 records committed...
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (201, 'ViennaLevine', 33, 'WOMEN', 'USA32 Savage', 'vienna.levine@evinco', 454);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (202, 'GoranVance', 30, 'MEN', 'Norway19 Toni S', 'goran.v@pinnaclestaf', 594);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (203, 'ReeseO''Keefe', 81, 'WOMEN', 'USA25 Leeds', 'r.okeefe@trusecure.c', 772);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (204, 'LarenzTilly', 23, 'MEN', 'USA25 Rifkin Ro', 'l.tilly@generalmotor', 268);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (205, 'MaureenChecker', 22, 'WOMEN', 'USA31 Broderick', 'm.checker@drinkmorew', 467);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (206, 'MarleyMcDonald', 15, 'MEN', 'USA60 Kathleen ', 'marley@fmt.com', 410);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (207, 'IkeKatt', 47, 'MEN', 'USA45 McIntyre ', 'ike.katt@newtoninter', 557);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (208, 'NilsRibisi', 10, 'WOMEN', 'USA11 Maria Dri', 'nils.ribisi@gsat.com', 913);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (209, 'VondaBancroft', 13, 'MEN', 'Israel71 Loggia', 'vonda@gci.il', 541);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (210, 'RachaelBrolin', 31, 'WOMEN', 'Japan93 Tempe A', 'rbrolin@sensortechno', 481);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (211, 'PamelaZahn', 19, 'MEN', 'United Kingdom3', 'pamela.zahn@ibm.uk', 899);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (212, 'LeVarStreep', 89, 'WOMEN', 'Belgium48 Hecto', 'levar.s@sht.be', 410);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (213, 'NormHong', 81, 'WOMEN', 'Germany825 Omah', 'norm.hong@smg.de', 384);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (214, 'StewartArkensto', 57, 'WOMEN', 'USA4 Pearce Roa', 'stewart.arkenstone@a', 836);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (215, 'FredericGarza', 34, 'WOMEN', 'Germany23 Vende', 'frederic.garza@wav.d', 773);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (216, 'MalcolmRamirez', 25, 'WOMEN', 'USA25 Ilmenau A', 'malcolm.ramirez@lemp', 807);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (217, 'MiaPaxton', 47, 'MEN', 'Lithuania994 Ri', 'mia.paxton@provident', 249);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (218, 'MurrayKinski', 80, 'WOMEN', 'USA51 Fiona Roa', 'murray.kinski@airmet', 2);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (219, 'HugoRamis', 79, 'WOMEN', 'USA37 Ashley St', 'h.ramis@tilsonlandsc', 666);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (220, 'GladysStone', 64, 'MEN', 'USA23 Liu Drive', 'gladys.s@evinco.com', 661);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (221, 'NormLloyd', 71, 'WOMEN', 'South Africa37 ', 'norm.lloyd@codykrame', 118);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (222, 'Edgarurban', 12, 'WOMEN', 'USA344 Utada Dr', 'edgar.urban@dps.com', 173);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (223, 'JessicaTrevino', 71, 'WOMEN', 'Australia83rd S', 'jessica.trevino@stre', 872);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (224, 'PragaBruce', 83, 'WOMEN', 'USA100 Nosewort', 'praga.bruce@multimed', 594);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (225, 'ChelySinatra', 22, 'MEN', 'United Kingdom7', 'chelys@sunstream.uk', 666);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (226, 'HarveyPage', 48, 'WOMEN', 'Belgium21 Lupe ', 'hpage@seafoxboat.be', 557);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (227, 'GarlandMcDowall', 69, 'WOMEN', 'Germany18 Telfo', 'garland.mcdowall@nex', 52);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (228, 'JetWeiss', 17, 'MEN', 'USA68 Adelaide', 'jetw@swp.com', 339);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (229, 'EttaMolina', 60, 'WOMEN', 'Denmark35 Alger', 'e.molina@jsa.dk', 527);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (230, 'LilyThompson', 97, 'MEN', 'Germany32 MacPh', 'lily.thompson@consul', 15);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (231, 'EarlCrudup', 84, 'MEN', 'United Kingdom7', 'earl.crudup@technica', 79);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (232, 'ChaleeDunst', 11, 'MEN', 'Spain87 Morioka', 'chalee.dunst@newtoni', 276);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (233, 'MandyMould', 17, 'MEN', 'Japan11 Stuttga', 'mandy.m@restaurantpa', 341);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (234, 'BurtDafoe', 70, 'MEN', 'USA18 Hamilton ', 'burt.dafoe@navigator', 422);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (235, 'ElisabethMartin', 16, 'WOMEN', 'Slovakia85 Jim ', 'elisabeth.martin@nlx', 545);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (236, 'BuddyGuest', 55, 'MEN', 'USA15 Baltimore', 'bguest@palmbeachtan.', 884);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (237, 'KristinRusso', 46, 'WOMEN', 'Spain2 Haysbert', 'kristin.russo@gentra', 597);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (238, 'JoelyBoothe', 52, 'MEN', 'United Kingdom8', 'joely.boothe@atg.uk', 913);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (239, 'SamO''Sullivan', 85, 'MEN', 'Denmark74 Gano ', 'sam.osullivan@scheri', 701);
insert into PARTICIPANT (participantid, pname, age, gender, address, pemail, sampleid)
values (240, 'Jean-ClaudeQuai', 17, 'WOMEN', 'USA11 East Peor', 'jeanclaude.quaid@kro', 803);
commit;
prompt 240 records loaded
prompt Loading BLOODDONATION...
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (1, 461, 'AB+', 61);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (2, 368, 'O-', 98);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (3, 157, 'O+', 57);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (4, 184, '''', 18);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (5, 556, '''', 124);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (6, 394, 'AB+', 74);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (7, 460, 'AB+', 201);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (8, 299, '''AB', 200);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (9, 136, 'O-', 240);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (10, 355, 'O-', 29);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (11, 560, 'O+', 158);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (12, 260, 'B+', 224);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (13, 558, 'AB+', 22);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (14, 335, 'O+', 120);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (15, 343, 'O+', 45);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (16, 497, 'A-', 34);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (17, 206, 'B+', 131);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (18, 228, 'A-', 67);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (19, 32, '''', 130);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (20, 574, 'A+', 105);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (21, 109, 'O+', 104);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (22, 295, '''', 109);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (23, 103, 'O-', 148);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (24, 486, 'O+', 31);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (25, 361, 'AB+', 78);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (26, 535, 'B-', 67);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (27, 191, 'B-', 45);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (28, 165, 'A-', 145);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (29, 252, 'AB+', 133);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (30, 297, 'A+', 161);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (31, 228, 'A+', 8);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (32, 131, '''', 185);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (33, 235, 'A-', 161);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (34, 283, 'A-', 144);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (35, 304, 'B-', 74);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (36, 21, '''', 72);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (37, 523, '''AB', 134);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (38, 527, 'AB+', 67);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (39, 469, 'B+', 169);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (40, 513, 'O-', 43);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (41, 525, 'B+', 185);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (42, 282, '''AB', 41);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (43, 131, 'B+', 31);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (44, 467, 'O-', 56);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (45, 582, '''', 4);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (46, 60, 'O-', 52);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (47, 320, '''', 239);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (48, 316, 'B+', 150);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (49, 72, 'B+', 227);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (50, 445, 'AB+', 198);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (51, 63, 'O+', 68);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (52, 314, 'A-', 113);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (53, 576, '''', 147);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (54, 554, 'O-', 106);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (55, 264, 'AB+', 231);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (56, 357, '''', 19);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (57, 373, '''AB', 54);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (58, 309, 'O+', 196);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (59, 284, 'A-', 130);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (60, 106, '''', 122);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (61, 235, 'B-', 36);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (62, 416, '''AB', 57);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (63, 294, '''AB', 168);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (64, 45, '''AB', 81);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (65, 133, 'A-', 56);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (66, 462, 'B+', 92);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (67, 110, 'B+', 83);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (68, 190, 'B-', 228);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (69, 175, 'AB+', 206);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (70, 303, 'O+', 133);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (71, 358, 'B-', 131);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (72, 246, 'AB+', 167);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (73, 134, 'O+', 97);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (74, 242, 'AB+', 94);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (75, 408, 'AB+', 36);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (76, 557, 'O+', 167);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (77, 198, 'O+', 233);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (78, 254, 'B-', 104);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (79, 410, 'A+', 20);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (80, 392, 'O-', 49);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (81, 467, 'A-', 119);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (82, 392, 'B-', 6);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (83, 400, 'A+', 142);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (84, 146, '''', 178);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (85, 382, 'A-', 166);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (86, 53, 'B-', 115);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (87, 52, 'B+', 229);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (88, 260, 'A+', 112);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (89, 552, 'O+', 100);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (90, 252, 'O+', 129);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (91, 443, 'B-', 104);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (92, 227, 'O+', 116);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (93, 320, 'B+', 94);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (94, 494, 'B+', 100);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (95, 106, '''AB', 114);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (96, 52, 'AB+', 3);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (97, 209, 'AB+', 90);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (98, 491, 'B+', 25);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (99, 358, 'B+', 92);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (100, 305, 'A+', 158);
commit;
prompt 100 records committed...
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (101, 566, '''AB', 46);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (102, 331, '''', 160);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (103, 302, '''AB', 22);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (104, 509, '''AB', 55);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (105, 33, 'A+', 77);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (106, 366, 'A+', 160);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (107, 251, 'O-', 159);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (108, 420, '''AB', 186);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (109, 507, '''AB', 191);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (110, 514, 'A-', 8);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (111, 55, 'A+', 151);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (112, 163, 'O+', 204);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (113, 517, 'B+', 175);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (114, 528, 'B-', 220);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (115, 366, 'B-', 101);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (116, 594, 'O+', 36);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (117, 169, 'O+', 165);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (118, 58, 'O+', 103);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (119, 568, 'O-', 83);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (120, 160, 'A-', 4);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (121, 469, 'B+', 163);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (122, 356, 'O-', 66);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (123, 527, 'O-', 233);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (124, 312, 'B+', 120);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (125, 182, 'B-', 142);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (126, 349, 'B+', 159);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (127, 179, 'B-', 198);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (128, 427, 'A-', 217);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (129, 551, 'A+', 54);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (130, 253, 'O-', 239);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (131, 354, '''', 191);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (132, 352, 'A-', 22);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (133, 482, 'AB+', 73);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (134, 504, 'AB+', 69);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (135, 301, 'O+', 154);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (136, 510, 'A-', 214);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (137, 324, '''', 33);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (138, 213, 'B+', 64);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (139, 227, '''AB', 101);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (140, 25, '''AB', 106);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (141, 53, 'AB+', 187);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (142, 591, 'O+', 129);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (143, 551, 'A-', 214);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (144, 451, '''', 72);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (145, 407, '''AB', 212);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (146, 451, 'O+', 104);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (147, 122, '''AB', 14);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (148, 239, 'O+', 147);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (149, 47, 'O+', 134);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (150, 540, 'AB+', 67);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (151, 424, '''AB', 118);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (152, 537, 'O-', 174);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (153, 465, 'B+', 235);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (154, 39, '''', 59);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (155, 366, 'AB+', 18);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (156, 228, '''AB', 8);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (157, 414, 'O-', 123);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (158, 535, 'O-', 15);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (159, 566, '''', 72);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (160, 511, '''', 213);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (161, 571, 'O-', 152);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (162, 510, 'B+', 45);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (163, 249, 'O-', 68);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (164, 110, 'AB+', 218);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (165, 487, 'A-', 213);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (166, 582, 'A+', 58);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (167, 185, 'O-', 18);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (168, 554, 'B-', 13);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (169, 140, '''', 164);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (170, 512, 'A+', 204);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (171, 297, 'B+', 7);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (172, 583, 'O-', 43);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (173, 26, 'O+', 159);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (174, 392, 'B+', 27);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (175, 420, '''AB', 50);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (176, 568, 'B-', 15);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (177, 223, 'O-', 214);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (178, 58, 'B-', 95);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (179, 96, 'B+', 28);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (180, 346, 'B-', 12);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (181, 169, 'AB+', 55);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (182, 174, '''AB', 40);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (183, 376, 'A+', 72);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (184, 72, 'AB+', 204);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (185, 492, 'B-', 120);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (186, 468, 'O-', 12);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (187, 343, 'B-', 122);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (188, 502, 'O-', 18);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (189, 204, 'A-', 90);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (190, 20, 'O-', 86);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (191, 281, 'A+', 127);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (192, 453, 'A+', 142);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (193, 161, 'B+', 31);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (194, 585, 'B+', 166);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (195, 454, '''AB', 208);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (196, 306, 'O-', 192);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (197, 35, 'A-', 140);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (198, 187, 'AB+', 115);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (199, 189, 'A+', 204);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (200, 302, 'O+', 87);
commit;
prompt 200 records committed...
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (201, 540, 'A-', 238);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (202, 262, 'B-', 113);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (203, 396, 'AB+', 217);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (204, 489, 'B-', 239);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (205, 219, 'A+', 154);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (206, 554, '''AB', 136);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (207, 35, 'O+', 238);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (208, 50, 'B+', 97);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (209, 529, 'A-', 97);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (210, 126, 'B+', 124);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (211, 393, '''', 128);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (212, 237, 'B+', 100);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (213, 157, 'O+', 137);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (214, 399, 'B+', 89);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (215, 432, 'B+', 65);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (216, 276, 'AB+', 219);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (217, 113, 'O-', 149);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (218, 503, 'B-', 166);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (219, 233, 'A+', 205);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (220, 583, 'A+', 33);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (221, 233, 'O+', 205);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (222, 243, 'B+', 221);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (223, 190, 'A+', 51);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (224, 49, 'O-', 101);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (225, 270, 'B+', 231);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (226, 99, 'A+', 102);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (227, 485, '''AB', 217);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (228, 303, '''AB', 113);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (229, 361, 'A-', 238);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (230, 543, 'A-', 24);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (231, 380, '''', 1);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (232, 510, 'O-', 173);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (233, 460, 'A+', 70);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (234, 209, 'B+', 138);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (235, 431, 'AB+', 70);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (236, 538, 'B-', 98);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (237, 175, 'B-', 88);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (238, 132, 'A-', 81);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (239, 467, 'A-', 177);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (240, 397, 'A-', 87);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (241, 55, 'AB+', 184);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (242, 569, 'AB+', 96);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (243, 229, 'A+', 140);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (244, 183, 'B+', 159);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (245, 256, 'O-', 96);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (246, 199, 'A-', 75);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (247, 423, 'A+', 115);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (248, 282, 'A+', 169);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (249, 239, 'A+', 222);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (250, 170, 'O+', 134);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (251, 365, 'A-', 125);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (252, 583, '''', 60);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (253, 359, 'A+', 16);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (254, 481, 'AB+', 184);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (255, 122, 'AB+', 32);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (256, 477, 'B+', 132);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (257, 589, '''AB', 19);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (258, 131, 'O+', 43);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (259, 121, 'B+', 19);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (260, 413, '''', 152);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (261, 431, 'B-', 159);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (262, 422, 'O-', 82);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (263, 70, 'A-', 36);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (264, 135, 'A+', 73);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (265, 181, 'O+', 4);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (266, 527, 'O-', 238);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (267, 282, '''AB', 65);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (268, 446, 'A-', 108);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (269, 357, 'O+', 224);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (270, 73, 'O+', 123);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (271, 589, 'A+', 5);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (272, 443, 'AB+', 176);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (273, 324, 'B+', 5);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (274, 443, 'AB+', 130);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (275, 237, 'O-', 205);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (276, 247, '''', 185);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (277, 176, 'AB+', 121);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (278, 160, 'A-', 130);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (279, 592, 'AB+', 139);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (280, 317, 'O-', 67);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (281, 234, 'B+', 48);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (282, 83, 'B+', 103);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (283, 461, '''AB', 182);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (284, 114, 'A+', 228);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (285, 197, '''AB', 144);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (286, 163, 'A-', 131);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (287, 598, 'O+', 37);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (288, 248, 'O+', 218);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (289, 132, '''', 32);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (290, 320, 'O+', 155);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (291, 560, 'A+', 96);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (292, 160, 'O-', 6);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (293, 412, 'B-', 24);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (294, 197, 'O-', 140);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (295, 138, 'B+', 116);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (296, 385, 'B+', 131);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (297, 176, 'O-', 195);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (298, 245, '''AB', 228);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (299, 382, 'B-', 181);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (300, 591, '''AB', 160);
commit;
prompt 300 records committed...
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (301, 399, 'AB+', 217);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (302, 317, '''', 197);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (303, 549, 'O+', 116);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (304, 401, '''AB', 23);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (305, 444, 'O+', 223);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (306, 261, 'B+', 77);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (307, 153, 'B+', 67);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (308, 285, 'O+', 174);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (309, 254, 'AB+', 146);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (310, 153, '''AB', 184);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (311, 428, 'AB+', 193);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (312, 544, 'A+', 231);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (313, 231, 'O-', 106);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (314, 287, '''AB', 113);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (315, 215, 'O-', 152);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (316, 29, 'A-', 72);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (317, 273, 'A-', 115);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (318, 33, 'B-', 136);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (319, 524, '''', 51);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (320, 414, 'B+', 47);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (321, 129, 'AB+', 113);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (322, 25, 'B+', 96);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (323, 370, '''AB', 50);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (324, 598, 'A+', 94);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (325, 518, 'A-', 182);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (326, 107, 'AB+', 82);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (327, 133, 'A-', 185);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (328, 90, 'B+', 37);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (329, 527, 'O-', 123);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (330, 134, 'AB+', 14);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (331, 557, '''', 111);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (332, 275, 'A-', 31);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (333, 273, 'A+', 68);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (334, 380, 'B-', 150);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (335, 34, 'O-', 206);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (336, 136, 'A-', 185);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (337, 582, '''', 225);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (338, 256, '''AB', 4);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (339, 557, 'A-', 25);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (340, 521, 'B-', 129);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (341, 289, 'AB+', 95);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (342, 494, 'O-', 197);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (343, 408, 'B+', 231);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (344, 485, 'O+', 80);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (345, 553, 'O-', 200);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (346, 256, 'A+', 58);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (347, 452, 'A-', 10);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (348, 104, '''AB', 208);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (349, 293, 'A-', 45);
insert into BLOODDONATION (blooddonationid, bloodquantity, bloodtype, participantid)
values (350, 408, 'AB+', 181);
commit;
prompt 350 records loaded
prompt Loading STUDY...
insert into STUDY (studyid, sdescription, startdate, enddate, title, publication, cnclousions)
values (1, ' A comprehensive study on the effects of climate change on polar bears', to_date('15-01-2022', 'dd-mm-yyyy'), to_date('15-01-2023', 'dd-mm-yyyy'), ' Climate Change Impact on Polar Bears', ' Nature', ' Significant habitat loss observed');
insert into STUDY (studyid, sdescription, startdate, enddate, title, publication, cnclousions)
values (2, ' An analysis of the economic impacts of remote work during the COVID-19 pandemic', to_date('01-05-2021', 'dd-mm-yyyy'), to_date('01-05-2022', 'dd-mm-yyyy'), ' Economic Impact of Remote Work', ' Economic Journal', ' Productivity increased but challenges in team collaboration');
insert into STUDY (studyid, sdescription, startdate, enddate, title, publication, cnclousions)
values (3, ' Exploring the potential of quantum computing in solving complex mathematical problems.', to_date('20-03-2020', 'dd-mm-yyyy'), to_date('30-09-2022', 'dd-mm-yyyy'), ' Quantum Computing Applications', ' Journal of Computational Science', ' Promising results in algorithm efficiency.');
insert into STUDY (studyid, sdescription, startdate, enddate, title, publication, cnclousions)
values (4, ' The role of diet and exercise in managing diabetes in middle-aged adults.', to_date('10-08-2019', 'dd-mm-yyyy'), to_date('10-08-2021', 'dd-mm-yyyy'), ' Managing Diabetes through Lifestyle', ' Medical Research', ' Combined approach most effective.');
insert into STUDY (studyid, sdescription, startdate, enddate, title, publication, cnclousions)
values (5, ' A study on the genetic basis of resistance to antibiotics in bacteria.', to_date('01-11-2020', 'dd-mm-yyyy'), to_date('01-11-2022', 'dd-mm-yyyy'), ' Antibiotic Resistance Genetics', ' Microbiology Today', ' Identified key genetic mutations.');
insert into STUDY (studyid, sdescription, startdate, enddate, title, publication, cnclousions)
values (6, ' Investigating the psychological effects of social media usage on teenagers.', to_date('14-02-2021', 'dd-mm-yyyy'), to_date('14-02-2023', 'dd-mm-yyyy'), ' Social Media and Teen Mental Health', ' Psychology and Society', ' Increased anxiety and depression rates.');
insert into STUDY (studyid, sdescription, startdate, enddate, title, publication, cnclousions)
values (7, ' The effectiveness of renewable energy sources in reducing carbon footprints.', to_date('01-07-2018', 'dd-mm-yyyy'), to_date('01-07-2020', 'dd-mm-yyyy'), ' Renewable Energy and Carbon Footprints', ' Environmental Science', ' Solar and wind power most effective.');
insert into STUDY (studyid, sdescription, startdate, enddate, title, publication, cnclousions)
values (8, ' Studying the impact of artificial intelligence on job market trends.', to_date('01-09-2021', 'dd-mm-yyyy'), to_date('01-09-2023', 'dd-mm-yyyy'), ' AI and Job Market Dynamics', ' Technology Review', ' Automation replacing certain job sectors.');
insert into STUDY (studyid, sdescription, startdate, enddate, title, publication, cnclousions)
values (9, ' Evaluating the long-term health effects of a plant-based diet.', to_date('05-04-2017', 'dd-mm-yyyy'), to_date('05-04-2020', 'dd-mm-yyyy'), ' Health Benefits of Plant-Based Diets', ' Nutrition and Health', ' Reduced risk of chronic diseases.');
insert into STUDY (studyid, sdescription, startdate, enddate, title, publication, cnclousions)
values (10, ' Research on the advancements in cancer treatment through immunotherapy.', to_date('12-12-2019', 'dd-mm-yyyy'), to_date('12-12-2022', 'dd-mm-yyyy'), ' Immunotherapy in Cancer Treatment', ' Oncology Research', ' Significant improvements in patient survival rates.');
commit;
prompt 10 records loaded
prompt Loading CCONTAINING...
insert into CCONTAINING (studyid, sampleid)
values (1, 19);
insert into CCONTAINING (studyid, sampleid)
values (1, 36);
insert into CCONTAINING (studyid, sampleid)
values (1, 46);
insert into CCONTAINING (studyid, sampleid)
values (1, 58);
insert into CCONTAINING (studyid, sampleid)
values (1, 71);
insert into CCONTAINING (studyid, sampleid)
values (1, 119);
insert into CCONTAINING (studyid, sampleid)
values (1, 240);
insert into CCONTAINING (studyid, sampleid)
values (1, 286);
insert into CCONTAINING (studyid, sampleid)
values (1, 416);
insert into CCONTAINING (studyid, sampleid)
values (1, 508);
insert into CCONTAINING (studyid, sampleid)
values (1, 591);
insert into CCONTAINING (studyid, sampleid)
values (1, 604);
insert into CCONTAINING (studyid, sampleid)
values (1, 637);
insert into CCONTAINING (studyid, sampleid)
values (1, 649);
insert into CCONTAINING (studyid, sampleid)
values (1, 723);
insert into CCONTAINING (studyid, sampleid)
values (1, 788);
insert into CCONTAINING (studyid, sampleid)
values (1, 817);
insert into CCONTAINING (studyid, sampleid)
values (1, 834);
insert into CCONTAINING (studyid, sampleid)
values (1, 872);
insert into CCONTAINING (studyid, sampleid)
values (1, 884);
insert into CCONTAINING (studyid, sampleid)
values (1, 887);
insert into CCONTAINING (studyid, sampleid)
values (1, 910);
insert into CCONTAINING (studyid, sampleid)
values (2, 50);
insert into CCONTAINING (studyid, sampleid)
values (2, 71);
insert into CCONTAINING (studyid, sampleid)
values (2, 88);
insert into CCONTAINING (studyid, sampleid)
values (2, 200);
insert into CCONTAINING (studyid, sampleid)
values (2, 210);
insert into CCONTAINING (studyid, sampleid)
values (2, 319);
insert into CCONTAINING (studyid, sampleid)
values (2, 339);
insert into CCONTAINING (studyid, sampleid)
values (2, 397);
insert into CCONTAINING (studyid, sampleid)
values (2, 405);
insert into CCONTAINING (studyid, sampleid)
values (2, 409);
insert into CCONTAINING (studyid, sampleid)
values (2, 410);
insert into CCONTAINING (studyid, sampleid)
values (2, 422);
insert into CCONTAINING (studyid, sampleid)
values (2, 470);
insert into CCONTAINING (studyid, sampleid)
values (2, 557);
insert into CCONTAINING (studyid, sampleid)
values (2, 658);
insert into CCONTAINING (studyid, sampleid)
values (2, 661);
insert into CCONTAINING (studyid, sampleid)
values (2, 672);
insert into CCONTAINING (studyid, sampleid)
values (2, 678);
insert into CCONTAINING (studyid, sampleid)
values (2, 694);
insert into CCONTAINING (studyid, sampleid)
values (2, 701);
insert into CCONTAINING (studyid, sampleid)
values (2, 711);
insert into CCONTAINING (studyid, sampleid)
values (2, 764);
insert into CCONTAINING (studyid, sampleid)
values (2, 814);
insert into CCONTAINING (studyid, sampleid)
values (2, 834);
insert into CCONTAINING (studyid, sampleid)
values (2, 880);
insert into CCONTAINING (studyid, sampleid)
values (2, 936);
insert into CCONTAINING (studyid, sampleid)
values (2, 986);
insert into CCONTAINING (studyid, sampleid)
values (3, 2);
insert into CCONTAINING (studyid, sampleid)
values (3, 41);
insert into CCONTAINING (studyid, sampleid)
values (3, 119);
insert into CCONTAINING (studyid, sampleid)
values (3, 195);
insert into CCONTAINING (studyid, sampleid)
values (3, 216);
insert into CCONTAINING (studyid, sampleid)
values (3, 260);
insert into CCONTAINING (studyid, sampleid)
values (3, 269);
insert into CCONTAINING (studyid, sampleid)
values (3, 276);
insert into CCONTAINING (studyid, sampleid)
values (3, 489);
insert into CCONTAINING (studyid, sampleid)
values (3, 614);
insert into CCONTAINING (studyid, sampleid)
values (3, 645);
insert into CCONTAINING (studyid, sampleid)
values (3, 935);
insert into CCONTAINING (studyid, sampleid)
values (4, 15);
insert into CCONTAINING (studyid, sampleid)
values (4, 88);
insert into CCONTAINING (studyid, sampleid)
values (4, 101);
insert into CCONTAINING (studyid, sampleid)
values (4, 140);
insert into CCONTAINING (studyid, sampleid)
values (4, 173);
insert into CCONTAINING (studyid, sampleid)
values (4, 186);
insert into CCONTAINING (studyid, sampleid)
values (4, 245);
insert into CCONTAINING (studyid, sampleid)
values (4, 360);
insert into CCONTAINING (studyid, sampleid)
values (4, 447);
insert into CCONTAINING (studyid, sampleid)
values (4, 478);
insert into CCONTAINING (studyid, sampleid)
values (4, 509);
insert into CCONTAINING (studyid, sampleid)
values (4, 557);
insert into CCONTAINING (studyid, sampleid)
values (4, 584);
insert into CCONTAINING (studyid, sampleid)
values (4, 601);
insert into CCONTAINING (studyid, sampleid)
values (4, 619);
insert into CCONTAINING (studyid, sampleid)
values (4, 631);
insert into CCONTAINING (studyid, sampleid)
values (4, 657);
insert into CCONTAINING (studyid, sampleid)
values (4, 699);
insert into CCONTAINING (studyid, sampleid)
values (4, 711);
insert into CCONTAINING (studyid, sampleid)
values (4, 775);
insert into CCONTAINING (studyid, sampleid)
values (4, 825);
insert into CCONTAINING (studyid, sampleid)
values (4, 881);
insert into CCONTAINING (studyid, sampleid)
values (4, 884);
insert into CCONTAINING (studyid, sampleid)
values (4, 949);
insert into CCONTAINING (studyid, sampleid)
values (5, 2);
insert into CCONTAINING (studyid, sampleid)
values (5, 118);
insert into CCONTAINING (studyid, sampleid)
values (5, 137);
insert into CCONTAINING (studyid, sampleid)
values (5, 155);
insert into CCONTAINING (studyid, sampleid)
values (5, 200);
insert into CCONTAINING (studyid, sampleid)
values (5, 275);
insert into CCONTAINING (studyid, sampleid)
values (5, 276);
insert into CCONTAINING (studyid, sampleid)
values (5, 387);
insert into CCONTAINING (studyid, sampleid)
values (5, 487);
insert into CCONTAINING (studyid, sampleid)
values (5, 508);
insert into CCONTAINING (studyid, sampleid)
values (5, 527);
insert into CCONTAINING (studyid, sampleid)
values (5, 629);
insert into CCONTAINING (studyid, sampleid)
values (5, 693);
insert into CCONTAINING (studyid, sampleid)
values (5, 702);
insert into CCONTAINING (studyid, sampleid)
values (5, 846);
commit;
prompt 100 records committed...
insert into CCONTAINING (studyid, sampleid)
values (5, 936);
insert into CCONTAINING (studyid, sampleid)
values (6, 112);
insert into CCONTAINING (studyid, sampleid)
values (6, 171);
insert into CCONTAINING (studyid, sampleid)
values (6, 196);
insert into CCONTAINING (studyid, sampleid)
values (6, 292);
insert into CCONTAINING (studyid, sampleid)
values (6, 329);
insert into CCONTAINING (studyid, sampleid)
values (6, 339);
insert into CCONTAINING (studyid, sampleid)
values (6, 353);
insert into CCONTAINING (studyid, sampleid)
values (6, 391);
insert into CCONTAINING (studyid, sampleid)
values (6, 500);
insert into CCONTAINING (studyid, sampleid)
values (6, 579);
insert into CCONTAINING (studyid, sampleid)
values (6, 597);
insert into CCONTAINING (studyid, sampleid)
values (6, 599);
insert into CCONTAINING (studyid, sampleid)
values (6, 603);
insert into CCONTAINING (studyid, sampleid)
values (6, 604);
insert into CCONTAINING (studyid, sampleid)
values (6, 637);
insert into CCONTAINING (studyid, sampleid)
values (6, 701);
insert into CCONTAINING (studyid, sampleid)
values (6, 788);
insert into CCONTAINING (studyid, sampleid)
values (6, 793);
insert into CCONTAINING (studyid, sampleid)
values (6, 800);
insert into CCONTAINING (studyid, sampleid)
values (6, 807);
insert into CCONTAINING (studyid, sampleid)
values (6, 813);
insert into CCONTAINING (studyid, sampleid)
values (6, 867);
insert into CCONTAINING (studyid, sampleid)
values (6, 872);
insert into CCONTAINING (studyid, sampleid)
values (6, 888);
insert into CCONTAINING (studyid, sampleid)
values (6, 899);
insert into CCONTAINING (studyid, sampleid)
values (6, 986);
insert into CCONTAINING (studyid, sampleid)
values (7, 2);
insert into CCONTAINING (studyid, sampleid)
values (7, 19);
insert into CCONTAINING (studyid, sampleid)
values (7, 41);
insert into CCONTAINING (studyid, sampleid)
values (7, 52);
insert into CCONTAINING (studyid, sampleid)
values (7, 108);
insert into CCONTAINING (studyid, sampleid)
values (7, 140);
insert into CCONTAINING (studyid, sampleid)
values (7, 273);
insert into CCONTAINING (studyid, sampleid)
values (7, 398);
insert into CCONTAINING (studyid, sampleid)
values (7, 406);
insert into CCONTAINING (studyid, sampleid)
values (7, 481);
insert into CCONTAINING (studyid, sampleid)
values (7, 488);
insert into CCONTAINING (studyid, sampleid)
values (7, 492);
insert into CCONTAINING (studyid, sampleid)
values (7, 716);
insert into CCONTAINING (studyid, sampleid)
values (7, 834);
insert into CCONTAINING (studyid, sampleid)
values (7, 959);
insert into CCONTAINING (studyid, sampleid)
values (8, 41);
insert into CCONTAINING (studyid, sampleid)
values (8, 46);
insert into CCONTAINING (studyid, sampleid)
values (8, 53);
insert into CCONTAINING (studyid, sampleid)
values (8, 74);
insert into CCONTAINING (studyid, sampleid)
values (8, 155);
insert into CCONTAINING (studyid, sampleid)
values (8, 260);
insert into CCONTAINING (studyid, sampleid)
values (8, 329);
insert into CCONTAINING (studyid, sampleid)
values (8, 339);
insert into CCONTAINING (studyid, sampleid)
values (8, 358);
insert into CCONTAINING (studyid, sampleid)
values (8, 451);
insert into CCONTAINING (studyid, sampleid)
values (8, 467);
insert into CCONTAINING (studyid, sampleid)
values (8, 470);
insert into CCONTAINING (studyid, sampleid)
values (8, 476);
insert into CCONTAINING (studyid, sampleid)
values (8, 487);
insert into CCONTAINING (studyid, sampleid)
values (8, 493);
insert into CCONTAINING (studyid, sampleid)
values (8, 516);
insert into CCONTAINING (studyid, sampleid)
values (8, 601);
insert into CCONTAINING (studyid, sampleid)
values (8, 653);
insert into CCONTAINING (studyid, sampleid)
values (8, 658);
insert into CCONTAINING (studyid, sampleid)
values (8, 694);
insert into CCONTAINING (studyid, sampleid)
values (8, 716);
insert into CCONTAINING (studyid, sampleid)
values (8, 744);
insert into CCONTAINING (studyid, sampleid)
values (8, 811);
insert into CCONTAINING (studyid, sampleid)
values (9, 2);
insert into CCONTAINING (studyid, sampleid)
values (9, 12);
insert into CCONTAINING (studyid, sampleid)
values (9, 31);
insert into CCONTAINING (studyid, sampleid)
values (9, 97);
insert into CCONTAINING (studyid, sampleid)
values (9, 195);
insert into CCONTAINING (studyid, sampleid)
values (9, 200);
insert into CCONTAINING (studyid, sampleid)
values (9, 210);
insert into CCONTAINING (studyid, sampleid)
values (9, 256);
insert into CCONTAINING (studyid, sampleid)
values (9, 358);
insert into CCONTAINING (studyid, sampleid)
values (9, 367);
insert into CCONTAINING (studyid, sampleid)
values (9, 391);
insert into CCONTAINING (studyid, sampleid)
values (9, 416);
insert into CCONTAINING (studyid, sampleid)
values (9, 462);
insert into CCONTAINING (studyid, sampleid)
values (9, 530);
insert into CCONTAINING (studyid, sampleid)
values (9, 579);
insert into CCONTAINING (studyid, sampleid)
values (9, 583);
insert into CCONTAINING (studyid, sampleid)
values (9, 591);
insert into CCONTAINING (studyid, sampleid)
values (9, 599);
insert into CCONTAINING (studyid, sampleid)
values (9, 614);
insert into CCONTAINING (studyid, sampleid)
values (9, 621);
insert into CCONTAINING (studyid, sampleid)
values (9, 723);
insert into CCONTAINING (studyid, sampleid)
values (9, 825);
insert into CCONTAINING (studyid, sampleid)
values (9, 829);
insert into CCONTAINING (studyid, sampleid)
values (9, 834);
insert into CCONTAINING (studyid, sampleid)
values (9, 835);
insert into CCONTAINING (studyid, sampleid)
values (9, 849);
insert into CCONTAINING (studyid, sampleid)
values (9, 892);
insert into CCONTAINING (studyid, sampleid)
values (9, 932);
insert into CCONTAINING (studyid, sampleid)
values (10, 28);
insert into CCONTAINING (studyid, sampleid)
values (10, 36);
insert into CCONTAINING (studyid, sampleid)
values (10, 101);
insert into CCONTAINING (studyid, sampleid)
values (10, 184);
insert into CCONTAINING (studyid, sampleid)
values (10, 224);
insert into CCONTAINING (studyid, sampleid)
values (10, 246);
insert into CCONTAINING (studyid, sampleid)
values (10, 260);
commit;
prompt 200 records committed...
insert into CCONTAINING (studyid, sampleid)
values (10, 307);
insert into CCONTAINING (studyid, sampleid)
values (10, 353);
insert into CCONTAINING (studyid, sampleid)
values (10, 361);
insert into CCONTAINING (studyid, sampleid)
values (10, 379);
insert into CCONTAINING (studyid, sampleid)
values (10, 410);
insert into CCONTAINING (studyid, sampleid)
values (10, 476);
insert into CCONTAINING (studyid, sampleid)
values (10, 493);
insert into CCONTAINING (studyid, sampleid)
values (10, 527);
insert into CCONTAINING (studyid, sampleid)
values (10, 530);
insert into CCONTAINING (studyid, sampleid)
values (10, 583);
insert into CCONTAINING (studyid, sampleid)
values (10, 619);
insert into CCONTAINING (studyid, sampleid)
values (10, 629);
insert into CCONTAINING (studyid, sampleid)
values (10, 649);
insert into CCONTAINING (studyid, sampleid)
values (10, 657);
insert into CCONTAINING (studyid, sampleid)
values (10, 666);
insert into CCONTAINING (studyid, sampleid)
values (10, 695);
insert into CCONTAINING (studyid, sampleid)
values (10, 711);
insert into CCONTAINING (studyid, sampleid)
values (10, 759);
insert into CCONTAINING (studyid, sampleid)
values (10, 792);
insert into CCONTAINING (studyid, sampleid)
values (10, 881);
insert into CCONTAINING (studyid, sampleid)
values (10, 913);
insert into CCONTAINING (studyid, sampleid)
values (10, 973);
insert into CCONTAINING (studyid, sampleid)
values (10, 984);
commit;
prompt 223 records loaded
prompt Loading RRESEARCHER...
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (343, 'TziMagnuson', 'tzi.magnuson@hondamo', 42107337, 5, 'Data Science', 13, 'Doctor', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (344, 'EddieMcGinley', 'eddie.mcginley@topic', 76885910, 4, 'Molecular Biology', 13, 'Master', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (345, 'MacBegley', 'm.begley@gna.com', 49756539, 6, 'Genomics', 6, 'Master', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (346, 'TalRyan', 'talr@nat.uk', 38733387, 3, 'Machine Learning', 13, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (347, 'ChetBello', 'chet.b@unicru.uk', 18867355, 6, 'Artificial Intellige', 10, 'Doctor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (348, 'HarrietLindo', 'harrietl@vms.com', 19686786, 1, 'Data Science', 11, 'Bachelor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (349, 'ReneCummings', 'renec@cendant.ch', 42180641, 5, 'Data Science', 12, 'Master', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (350, 'HowardTeng', 'howard@gagwear.uk', 51944302, 7, 'Environmental Engine', 9, 'Bachelor', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (351, 'StewartColon', 'stewart.colon@pepsic', 66373859, 6, 'Genomics', 12, 'Bachelor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (352, 'ClorisLaurie', 'cloris@spinnakerexpl', 62356045, 1, 'Molecular Biology', 7, 'Ph.D. Candidate', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (353, 'ReeseRains', 'reese.rains@kmart.jp', 81875832, 6, 'Molecular Biology', 9, 'Bachelor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (354, 'MenaSnipes', 'mena.s@nat.com', 56732417, 4, 'Data Science', 5, 'Bachelor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (355, 'RosannaCaan', 'rosanna.caan@trekequ', 56977996, 5, 'Environmental Engine', 14, 'Assistant Profe', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (356, 'VerucaWells', 'veruca@fds.com', 34122660, 1, 'Molecular Biology', 11, 'Bachelor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (357, 'DerrickMueller-', 'derrick.muellerstahl', 23084492, 6, 'Artificial Intellige', 13, 'Master', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (358, 'DianneBerenger', 'dianne.berenger@volk', 35209242, 6, 'Cognitive Psycholog', 9, 'Bachelor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (359, 'BustaBurstyn', 'busta.burstyn@commwo', 80517042, 5, 'Data Science', 12, 'Master', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (360, 'IsaiahUggams', 'isaiah@kellogg.com', 77025075, 7, 'Genomics', 5, 'Bachelor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (361, 'IreneCook', 'icook@airmethods.com', 28453162, 1, 'Cognitive Psycholog', 11, 'Ph.D. Candidate', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (362, 'JuddNuman', 'judd.numan@bashen.de', 36980889, 3, 'Astrophysics', 7, 'Ph.D. Candidate', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (363, 'NikkaBranch', 'nikka@lynksystems.de', 12859790, 7, 'Environmental Engine', 6, 'Ph.D. Candidate', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (364, 'AaronDeschanel', 'adeschanel@microsoft', 33013623, 4, 'Astrophysics', 9, 'Master', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (365, 'LoreenaGray', 'loreena.gray@marketb', 93339945, 1, 'Genomics', 14, 'Ph.D. Candidate', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (366, 'CarlaUnion', 'cunion@hps.au', 96830198, 3, 'Quantum Computing', 9, 'Professor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (367, 'BurtBrandt', 'burt.brandt@angiesli', 52765234, 6, 'Cognitive Psycholog', 9, 'Professor', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (368, 'SylvesterVoight', 'sylvester.voight@mon', 19973705, 7, 'Data Science', 5, 'Bachelor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (369, 'JuiceRonstadt', 'juice@pragmatechsoft', 87666732, 1, 'Environmental Engine', 11, 'Assistant Profe', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (370, 'CarolynBacharac', 'carolyn@ositissoftwa', 15776279, 3, 'Environmental Engine', 13, 'Bachelor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (371, 'LeVarWalker', 'levarw@speakeasy.uk', 54036757, 4, 'Molecular Biology', 7, 'Assistant Profe', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (372, 'FisherWills', 'fisher.w@mre.com', 40139857, 5, 'Artificial Intellige', 14, 'Doctor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (373, 'JerryDolenz', 'jerry@freedommedical', 13067273, 1, 'Genomics', 9, 'Master', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (374, 'JeroenGagnon', 'jgagnon@netnumina.co', 88746152, 7, 'Quantum Computing', 11, 'Ph.D. Candidate', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (375, 'MerrillCrowe', 'merrill@dillards.fr', 73408627, 1, 'Molecular Biology', 15, 'Ph.D. Candidate', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (376, 'WallaceChaykin', 'w.chaykin@mds.de', 43099450, 6, 'Quantum Computing', 11, 'Assistant Profe', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (377, 'EwanWeisberg', 'ewan.weisberg@fam.py', 96966437, 4, 'Astrophysics', 11, 'Doctor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (378, 'KimberlyNichols', 'kimberly.nicholson@i', 81847915, 2, 'Molecular Biology', 15, 'Doctor', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (379, 'FirstSampson', 'first.sampson@genghi', 84140678, 1, 'Cognitive Psycholog', 14, 'Lecturer', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (380, 'NenehCandy', 'nenehc@sps.com', 38967461, 3, 'Artificial Intellige', 14, 'Lecturer', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (381, 'MurrayBerenger', 'murray.berenger@dire', 56155578, 6, 'Molecular Biology', 14, 'Master', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (382, 'AnnaBiehn', 'a.biehn@circuitcitys', 21014397, 4, 'Biomedical Engineeri', 9, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (383, 'MiaRains', 'mia@ach.de', 90472394, 1, 'Environmental Engine', 12, 'Doctor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (384, 'KristinRio', 'kristinr@genextechno', 60974231, 7, 'Cognitive Psycholog', 7, 'Lecturer', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (385, 'MatthewLauper', 'matthew.lauper@grt.j', 25209925, 2, 'Data Science', 14, 'Master', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (386, 'CleaMcCormack', 'cleam@fra.lt', 91188939, 5, 'Biomedical Engineeri', 11, 'Assistant Profe', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (387, 'BuffyBranch', 'buffy.branch@kwraf.c', 27170069, 3, 'Cognitive Psycholog', 12, 'Ph.D. Candidate', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (388, 'KyleSwank', 'kyles@ssci.com', 76348994, 1, 'Genomics', 11, 'Doctor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (389, 'BurtonKennedy', 'burton.kennedy@montp', 82989161, 2, 'Data Science', 9, 'Assistant Profe', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (390, 'HarrietSnow', 'hsnow@profitline.se', 79312461, 5, 'Data Science', 13, 'Doctor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (391, 'JeffreySanchez', 'jeffrey.sanchez@paci', 13388808, 4, 'Data Science', 7, 'Ph.D. Candidate', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (392, 'LonnieDelta', 'lonnie.delta@tarrago', 69033465, 2, 'Genomics', 13, 'Professor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (393, 'LynetteCale', 'l.cale@sears.de', 88760103, 3, 'Cognitive Psycholog', 7, 'Master', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (394, 'SteveBaranski', 'steve.baranski@mitsu', 56023089, 6, 'Environmental Engine', 12, 'Doctor', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (395, 'GrahamVenora', 'g.venora@lifelinesys', 54119523, 3, 'Molecular Biology', 15, 'Bachelor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (396, 'DebiOszajca', 'd.oszajca@gsat.jp', 76842849, 1, 'Biomedical Engineeri', 7, 'Lecturer', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (397, 'LesleyAdler', 'lesley@dancor.au', 94360225, 7, 'Quantum Computing', 10, 'Master', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (398, 'AnjelicaCostner', 'anjelica.costner@col', 35570845, 7, 'Machine Learning', 5, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (399, 'VondieMiller', 'vondie.miller@traffi', 92487047, 7, 'Biomedical Engineeri', 10, 'Assistant Profe', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (400, 'BernieSellers', 'bernie.sellers@bashe', 61821779, 6, 'Molecular Biology', 11, 'Lecturer', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (1, 'SammyWells', 'sammy@investorstitle', 18377016, 3, 'Molecular Biology', 14, 'Master', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (2, 'HookahStrathair', 'h.strathairn@safehom', 54671759, 3, 'Molecular Biology', 8, 'Doctor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (3, 'MattMcGregor', 'matt.m@dataprise.es', 46629323, 6, 'Biomedical Engineeri', 15, 'Lecturer', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (4, 'SanderEnglish', 'senglish@dis.com', 53298641, 1, 'Machine Learning', 13, 'Professor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (5, 'KeithNess', 'k.ness@sandyspringba', 95913028, 6, 'Biomedical Engineeri', 5, 'Lecturer', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (6, 'AlbertPhoenix', 'albert.phoenix@apexs', 70941658, 3, 'Astrophysics', 10, 'Assistant Profe', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (7, 'TerriGano', 'terri.gano@quakercit', 15927070, 4, 'Quantum Computing', 7, 'Lecturer', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (8, 'AmandaJudd', 'amanda.judd@lifeline', 62243428, 5, 'Environmental Engine', 5, 'Assistant Profe', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (9, 'LindseyGreene', 'lgreene@airmethods.d', 15028573, 4, 'Genomics', 13, 'Ph.D. Candidate', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (10, 'JoyTyson', 'joy.tyson@diversitec', 24423798, 7, 'Environmental Engine', 12, 'Professor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (11, 'SherylElizabeth', 'sheryl.elizabeth@pin', 50877101, 3, 'Artificial Intellige', 15, 'Master', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (12, 'GabyWalker', 'gaby.walker@heritage', 85492766, 1, 'Data Science', 14, 'Bachelor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (13, 'AlbertSledge', 'albert.s@nmr.com', 90156499, 7, 'Astrophysics', 8, 'Ph.D. Candidate', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (14, 'BustaFoxx', 'busta.foxx@verizon.c', 96339515, 2, 'Quantum Computing', 6, 'Assistant Profe', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (15, 'LeeleeSherman', 'leelee.s@walmartstor', 81655801, 5, 'Artificial Intellige', 11, 'Master', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (16, 'MaggiePaymer', 'maggie.paymer@voicel', 56325147, 6, 'Genomics', 5, 'Doctor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (17, 'GordMacIsaac', 'gordm@consultants.co', 17572475, 6, 'Environmental Engine', 14, 'Professor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (18, 'TramaineFehr', 'tramaine.fehr@credit', 15729827, 1, 'Cognitive Psycholog', 5, 'Lecturer', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (19, 'EmmylouEastwood', 'emmylou.eastwood@jsa', 26380288, 3, 'Biomedical Engineeri', 14, 'Assistant Profe', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (20, 'NastassjaAlliso', 'nastassja.allison@hp', 18413912, 6, 'Data Science', 9, 'Assistant Profe', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (21, 'CharlizeRea', 'charlize.rea@avr.hu', 34114199, 6, 'Genomics', 6, 'Lecturer', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (22, 'TrickFerry', 'trick.ferry@mse.com', 39780591, 7, 'Machine Learning', 13, 'Doctor', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (23, 'EileenRussell', 'eileen.russell@navig', 44352669, 6, 'Molecular Biology', 7, 'Professor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (24, 'KazemYorn', 'kyorn@unilever.com', 20754467, 5, 'Data Science', 9, 'Master', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (25, 'DiamondEat Worl', 'deatworld@fpf.uk', 35592138, 2, 'Quantum Computing', 12, 'Master', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (26, 'AlessandroWinge', 'alessandro.winger@he', 87605701, 7, 'Genomics', 12, 'Assistant Profe', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (27, 'FayeSuchet', 'fsuchet@formatech.co', 44034615, 7, 'Molecular Biology', 6, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (28, 'DaveyCurtis', 'davey.curtis@baesch.', 37561824, 7, 'Environmental Engine', 10, 'Assistant Profe', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (29, 'LarryNeill', 'larry@palmbeachtan.u', 55250134, 3, 'Genomics', 9, 'Bachelor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (30, 'AliciaKimball', 'alicia.k@solipsys.uk', 19488221, 7, 'Machine Learning', 12, 'Professor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (31, 'ReeseLynskey', 'reese.lynskey@shirtf', 53825793, 1, 'Quantum Computing', 12, 'Assistant Profe', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (32, 'JudiCrimson', 'judi.crimson@technic', 97878561, 5, 'Quantum Computing', 8, 'Bachelor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (33, 'ReginaSinatra', 'regina.sinatra@jlpho', 52522835, 7, 'Data Science', 9, 'Master', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (34, 'JohnEngland', 'john.england@canterb', 44071218, 5, 'Machine Learning', 12, 'Ph.D. Candidate', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (35, 'AlannahSpacey', 'alannah.spacey@bluff', 70693071, 3, 'Astrophysics', 12, 'Master', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (36, 'KylieLindley', 'kylie.l@ctg.dk', 40053547, 2, 'Artificial Intellige', 15, 'Ph.D. Candidate', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (37, 'LindaJones', 'linda.jones@berkshir', 88893512, 6, 'Biomedical Engineeri', 14, 'Assistant Profe', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (38, 'MartyKelly', 'mkelly@stonetechprof', 47129145, 4, 'Artificial Intellige', 14, 'Master', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (39, 'OlympiaLuPone', 'olympial@visainterna', 43173975, 4, 'Artificial Intellige', 14, 'Lecturer', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (40, 'WallyWine', 'wally@solipsys.dk', 56226128, 4, 'Artificial Intellige', 12, 'Lecturer', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (41, 'DiannePerlman', 'dianne.p@kellogg.ch', 47333328, 6, 'Machine Learning', 10, 'Lecturer', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (42, 'DesmondSenior', 'd.senior@contract.de', 23102252, 3, 'Data Science', 13, 'Bachelor', 16);
commit;
prompt 100 records committed...
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (43, 'TchekyGoldwyn', 'tgoldwyn@mercantileb', 52338996, 2, 'Environmental Engine', 11, 'Lecturer', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (44, 'JenniferMalkovi', 'jennifer@summitenerg', 32532853, 2, 'Quantum Computing', 5, 'Professor', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (45, 'DylanEverett', 'dylan.everett@unit.c', 36123477, 4, 'Data Science', 6, 'Ph.D. Candidate', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (46, 'MichelleCrow', 'michelle.crow@americ', 48016188, 2, 'Artificial Intellige', 7, 'Professor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (47, 'JaredRaye', 'jared.raye@marathonh', 73966380, 6, 'Data Science', 9, 'Bachelor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (48, 'FayeLoveless', 'fayel@generalmotors.', 97491903, 7, 'Quantum Computing', 12, 'Professor', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (49, 'DebbyPerez', 'debby.perez@paisley.', 21836411, 6, 'Environmental Engine', 11, 'Assistant Profe', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (50, 'RascalRea', 'rascal@captechventur', 35939777, 6, 'Environmental Engine', 9, 'Lecturer', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (51, 'KylieHatfield', 'kylie.h@evinco.de', 24720651, 6, 'Quantum Computing', 7, 'Professor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (52, 'RemyWorrell', 'remy@greenmountain.c', 54126483, 7, 'Artificial Intellige', 13, 'Bachelor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (53, 'KathyMortensen', 'kathy.mortensen@baes', 59996188, 7, 'Molecular Biology', 6, 'Master', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (54, 'MerleWincott', 'mwincott@streetglow.', 13346077, 3, 'Quantum Computing', 9, 'Professor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (55, 'KylieCarmen', 'kylie.carmen@sms.uk', 78952193, 1, 'Artificial Intellige', 15, 'Doctor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (56, 'CliveTicotin', 'clive@pioneerdatasys', 93766567, 3, 'Quantum Computing', 5, 'Doctor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (57, 'BrianCruz', 'brian.cruz@gillette.', 28335020, 4, 'Environmental Engine', 10, 'Doctor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (58, 'AlbertinaGiamat', 'albertina.giamatti@s', 48776231, 4, 'Biomedical Engineeri', 10, 'Master', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (59, 'MaryCruz', 'mcruz@mosaic.com', 16129519, 6, 'Genomics', 14, 'Master', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (60, 'EarlCollins', 'ecollins@kwraf.com', 81158883, 1, 'Machine Learning', 11, 'Assistant Profe', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (61, 'KathleenLewis', 'kathleen.lewis@datap', 63601661, 6, 'Astrophysics', 9, 'Doctor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (62, 'NikSylvian', 'niks@scooterstore.co', 46115315, 3, 'Quantum Computing', 13, 'Professor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (63, 'DemiButler', 'demi@mls.com', 23429291, 1, 'Environmental Engine', 7, 'Professor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (64, 'KeanuForrest', 'k.forrest@teoco.it', 76160482, 5, 'Genomics', 15, 'Lecturer', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (65, 'LarryTripplehor', 'larry.tripplehorn@su', 84038938, 7, 'Astrophysics', 12, 'Ph.D. Candidate', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (66, 'HeathGarber', 'h.garber@lloydgroup.', 16217441, 1, 'Cognitive Psycholog', 12, 'Assistant Profe', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (67, 'LauriePryce', 'laurie.pryce@firstso', 18099337, 2, 'Molecular Biology', 6, 'Master', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (68, 'GladysMcGregor', 'gladys.mcgregor@conq', 51844257, 4, 'Quantum Computing', 14, 'Ph.D. Candidate', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (69, 'LarryLeoni', 'larry.leoni@visionar', 80665732, 7, 'Machine Learning', 12, 'Master', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (70, 'WillieSchiff', 'wschiff@aristotle.uk', 59947795, 7, 'Machine Learning', 10, 'Assistant Profe', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (71, 'ReginaSmurfit', 'regina.smurfit@talx.', 53026087, 7, 'Quantum Computing', 11, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (72, 'JakeShaye', 'jake.shaye@nuinfosys', 79092456, 4, 'Artificial Intellige', 10, 'Bachelor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (73, 'MinnieMinogue', 'minnie@staffone.com', 15867700, 4, 'Quantum Computing', 9, 'Lecturer', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (74, 'LesleyNuman', 'lesleyn@qas.com', 46289249, 5, 'Machine Learning', 15, 'Master', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (75, 'LaraLunch', 'llunch@cmi.de', 36241212, 1, 'Biomedical Engineeri', 15, 'Professor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (76, 'WalterKirkwood', 'walter.k@visionarysy', 76002942, 6, 'Machine Learning', 7, 'Master', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (77, 'KayWesterberg', 'kay.westerberg@eagle', 68079592, 2, 'Artificial Intellige', 7, 'Master', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (78, 'ChristianBonham', 'christian@seafoxboat', 21894179, 1, 'Astrophysics', 7, 'Assistant Profe', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (79, 'ShirleyDeVito', 'shirley.devito@bradl', 49906891, 1, 'Astrophysics', 8, 'Doctor', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (80, 'CeiliPleasure', 'ceili@mms.br', 77613500, 3, 'Cognitive Psycholog', 8, 'Doctor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (81, 'TreySevigny', 'trey.sevigny@restaur', 84051482, 2, 'Artificial Intellige', 5, 'Professor', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (82, 'ChelyKotto', 'chely.kotto@cowlitzb', 25359656, 2, 'Quantum Computing', 9, 'Assistant Profe', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (83, 'RickieSingletar', 'rickie@chipssolution', 93710427, 3, 'Machine Learning', 7, 'Lecturer', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (84, 'BruceRicci', 'bruce.ricci@esoftsol', 79971149, 2, 'Environmental Engine', 9, 'Lecturer', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (85, 'FredCantrell', 'fcantrell@fmt.jp', 55658302, 1, 'Data Science', 6, 'Assistant Profe', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (86, 'KatrinThomas', 'katrin.thomas@efcban', 47525357, 3, 'Genomics', 12, 'Bachelor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (87, 'DanCervine', 'dan.cervine@shar.uk', 35778160, 2, 'Cognitive Psycholog', 11, 'Assistant Profe', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (88, 'SuzanneGarfunke', 'suzanne.garfunkel@in', 34327774, 4, 'Molecular Biology', 13, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (89, 'MarkBroza', 'mark.broza@arkidata.', 38363914, 2, 'Machine Learning', 13, 'Master', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (90, 'NinaHiatt', 'nina.hiatt@securityc', 54150883, 6, 'Machine Learning', 5, 'Ph.D. Candidate', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (91, 'JillTolkan', 'jill@y2marketing.com', 81029827, 4, 'Molecular Biology', 10, 'Doctor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (92, 'DomingoClarkson', 'domingo.clarkson@por', 57802723, 7, 'Artificial Intellige', 11, 'Professor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (93, 'EwanVai', 'ewan.vai@monarchcasi', 90388094, 1, 'Genomics', 8, 'Master', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (94, 'TommyBrooks', 't.brooks@nha.com', 23009914, 4, 'Artificial Intellige', 14, 'Lecturer', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (95, 'TeenaSedgwick', 'tsedgwick@educationa', 97487939, 3, 'Artificial Intellige', 13, 'Lecturer', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (96, 'ReneeRhymes', 'renee.rhymes@cascade', 78497772, 6, 'Environmental Engine', 7, 'Lecturer', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (97, 'ChadOsmond', 'chad.osmond@uem.jp', 78269211, 1, 'Biomedical Engineeri', 11, 'Master', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (98, 'JuanOrlando', 'juan.orlando@clubone', 31025479, 7, 'Cognitive Psycholog', 11, 'Ph.D. Candidate', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (99, 'ChelyTankard', 'chely@pharmacia.fr', 91161523, 4, 'Data Science', 5, 'Lecturer', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (100, 'MaxineLeachman', 'maxine.leachman@gran', 22135766, 2, 'Quantum Computing', 7, 'Bachelor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (101, 'GwynethWilson', 'gwynethw@savela.com', 26554092, 2, 'Molecular Biology', 11, 'Assistant Profe', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (102, 'TarynRock', 'tarynr@sony.es', 96325052, 6, 'Artificial Intellige', 12, 'Assistant Profe', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (103, 'KieranPacino', 'kieranp@dataprise.co', 77947743, 3, 'Biomedical Engineeri', 6, 'Bachelor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (104, 'ScottGore', 's.gore@quakercityban', 61608166, 6, 'Astrophysics', 14, 'Master', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (105, 'DerrickSellers', 'derrick.sellers@vest', 61635321, 6, 'Molecular Biology', 12, 'Lecturer', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (106, 'RachelElliott', 'rachele@atg.com', 82506184, 4, 'Data Science', 6, 'Master', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (107, 'EmersonWong', 'ewong@vms.lt', 78340780, 3, 'Cognitive Psycholog', 9, 'Assistant Profe', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (108, 'MaryHouston', 'mhouston@capitolbanc', 37833521, 2, 'Genomics', 13, 'Professor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (109, 'ShirleyMagnuson', 'shirley.magnuson@mos', 91283553, 7, 'Astrophysics', 13, 'Ph.D. Candidate', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (110, 'KathyElliott', 'kathy@computersource', 36083934, 2, 'Molecular Biology', 13, 'Ph.D. Candidate', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (111, 'BarryBegley', 'bbegley@diversitech.', 60941672, 7, 'Genomics', 6, 'Bachelor', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (112, 'AidaDouglas', 'aida.d@savela.de', 26037223, 1, 'Cognitive Psycholog', 14, 'Doctor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (113, 'NickyNuman', 'nicky.n@democracydat', 76508708, 7, 'Environmental Engine', 8, 'Bachelor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (114, 'TziDukakis', 'tzid@parker.ca', 95150489, 4, 'Genomics', 7, 'Ph.D. Candidate', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (115, 'JaneRamirez', 'jane.r@merck.de', 63156712, 3, 'Biomedical Engineeri', 8, 'Professor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (116, 'RickyCoyote', 'ricky.coyote@veritek', 13532830, 5, 'Biomedical Engineeri', 15, 'Lecturer', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (117, 'HeathPuckett', 'heathp@gateway.com', 85308823, 5, 'Genomics', 8, 'Doctor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (118, 'AnnChurch', 'ann.church@pinnacles', 95123694, 3, 'Cognitive Psycholog', 7, 'Ph.D. Candidate', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (119, 'JerryDalley', 'jerry.dalley@axis.au', 59884884, 5, 'Cognitive Psycholog', 6, 'Ph.D. Candidate', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (120, 'KylieGoldberg', 'kylie.g@aoltimewarne', 69865744, 7, 'Genomics', 9, 'Master', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (121, 'SharonHoly', 'sholy@infovision.li', 85528584, 2, 'Data Science', 13, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (122, 'CrystalAllison', 'crystal.allison@dps.', 50716923, 7, 'Biomedical Engineeri', 6, 'Master', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (123, 'RodneySinise', 'rodney.s@networkdisp', 29692030, 4, 'Artificial Intellige', 6, 'Bachelor', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (124, 'LarryParish', 'larry@vfs.de', 48842647, 3, 'Biomedical Engineeri', 11, 'Lecturer', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (125, 'DebbyPatillo', 'debby.patillo@liners', 79164547, 7, 'Biomedical Engineeri', 9, 'Ph.D. Candidate', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (126, 'CollectivePlumm', 'collective.p@kroger.', 32448389, 4, 'Genomics', 13, 'Ph.D. Candidate', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (127, 'JavonVance', 'javon.vance@cima.uk', 48451385, 1, 'Astrophysics', 9, 'Assistant Profe', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (128, 'KeithGriffin', 'keith@networkdisplay', 22548466, 3, 'Data Science', 10, 'Assistant Profe', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (129, 'SalmaKotto', 'salmak@larkinenterpr', 52833234, 6, 'Astrophysics', 11, 'Master', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (130, 'LouRatzenberger', 'lou.ratzenberger@mre', 79698318, 2, 'Artificial Intellige', 9, 'Bachelor', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (131, 'BruceSarsgaard', 'bruce.sarsgaard@prog', 39892150, 6, 'Quantum Computing', 8, 'Master', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (132, 'GeorgeStuermer', 'george.stuermer@cima', 72920168, 5, 'Artificial Intellige', 13, 'Bachelor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (133, 'JodieOsborne', 'jodie.osborne@slt.co', 32636187, 4, 'Biomedical Engineeri', 13, 'Lecturer', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (134, 'CaryChappelle', 'cchappelle@doraldent', 93989446, 3, 'Genomics', 12, 'Ph.D. Candidate', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (135, 'JulietteRosas', 'jrosas@manhattanasso', 87270484, 1, 'Molecular Biology', 13, 'Bachelor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (136, 'ChiMcGill', 'chi.mcgill@safeway.c', 55840806, 4, 'Cognitive Psycholog', 15, 'Lecturer', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (137, 'IanRomijn-Stamo', 'ian.romijnstamos@sei', 18214219, 6, 'Biomedical Engineeri', 6, 'Ph.D. Candidate', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (138, 'RhettDean', 'rhett.dean@investmen', 36742648, 5, 'Astrophysics', 9, 'Assistant Profe', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (139, 'BonnieHoly', 'bonnie.holy@allegian', 68327237, 6, 'Cognitive Psycholog', 12, 'Professor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (140, 'RobinWinger', 'rwinger@unit.uk', 95021656, 5, 'Artificial Intellige', 8, 'Ph.D. Candidate', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (141, 'AngelinaWarburt', 'angelina.warburton@p', 24587905, 1, 'Data Science', 11, 'Ph.D. Candidate', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (142, 'Chant?Heche', 'chant.heche@dancor.c', 17322871, 3, 'Genomics', 12, 'Assistant Profe', 7);
commit;
prompt 200 records committed...
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (143, 'CesarMcFadden', 'cesar.mcfadden@mathi', 50109660, 6, 'Machine Learning', 6, 'Master', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (144, 'FreddyMcConaugh', 'freddy.mcconaughey@p', 51971420, 4, 'Artificial Intellige', 15, 'Doctor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (145, 'MaureenIglesias', 'maureen@telesynthesi', 58968609, 7, 'Data Science', 14, 'Bachelor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (146, 'SigourneyJoli', 'sigourney@capstone.c', 63997443, 7, 'Cognitive Psycholog', 15, 'Ph.D. Candidate', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (147, 'RaymondCarringt', 'r.carrington@exinomt', 74804527, 4, 'Quantum Computing', 8, 'Lecturer', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (148, 'JimMacDowell', 'jim.macdowell@lms.br', 88445148, 3, 'Environmental Engine', 11, 'Ph.D. Candidate', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (149, 'GarthRonstadt', 'garth.ronstadt@epiqs', 35534893, 2, 'Data Science', 6, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (150, 'ClarenceSuperna', 'clarence.s@elite.mx', 49141376, 5, 'Astrophysics', 14, 'Ph.D. Candidate', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (151, 'SaulBruce', 'saul.bruce@parksite.', 94998365, 5, 'Astrophysics', 11, 'Ph.D. Candidate', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (152, 'GloriaWainwrigh', 'gloria.wainwright@pr', 65134678, 6, 'Genomics', 10, 'Doctor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (153, 'MekhiHershey', 'mekhi.hershey@columb', 46735874, 2, 'Environmental Engine', 15, 'Lecturer', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (154, 'ScarlettPesci', 'scarlettp@mqsoftware', 45653644, 5, 'Quantum Computing', 7, 'Bachelor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (155, 'Lisade Lancie', 'lisa.d@nat.it', 21610360, 6, 'Environmental Engine', 11, 'Assistant Profe', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (156, 'AlecCapshaw', 'alec.capshaw@ams.com', 12550547, 2, 'Genomics', 10, 'Assistant Profe', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (157, 'RicardoMoore', 'ricardo.moore@pharma', 33132906, 3, 'Cognitive Psycholog', 13, 'Bachelor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (158, 'ThomasBlige', 'thomas.blige@microso', 45469276, 4, 'Data Science', 13, 'Bachelor', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (159, 'SuzyKutcher', 'suzy.kutcher@avr.uk', 66865693, 3, 'Artificial Intellige', 10, 'Lecturer', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (160, 'ConnieCornell', 'ccornell@smg.com', 87659174, 4, 'Artificial Intellige', 9, 'Doctor', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (161, 'DanielHagerty', 'daniel.hagerty@infin', 43518369, 5, 'Artificial Intellige', 6, 'Bachelor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (162, 'NancyTennison', 'nancy.tennison@prior', 30291261, 3, 'Quantum Computing', 14, 'Assistant Profe', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (163, 'EmilyDempsey', 'emily.dempsey@smi.ch', 76889991, 3, 'Biomedical Engineeri', 10, 'Professor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (164, 'PamBelle', 'pam.belle@enterprise', 14992332, 7, 'Quantum Computing', 11, 'Bachelor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (165, 'PragaJanssen', 'praga.janssen@coldst', 55533178, 6, 'Molecular Biology', 9, 'Professor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (166, 'CornellWeiland', 'cornell.weiland@bedf', 13377866, 6, 'Environmental Engine', 9, 'Ph.D. Candidate', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (167, 'KristinCurtis', 'kristin.c@saralee.de', 70680861, 4, 'Astrophysics', 5, 'Lecturer', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (168, 'RobinByrd', 'r.byrd@sprint.com', 37953679, 4, 'Data Science', 14, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (169, 'BethHolmes', 'beth.holmes@linksys.', 72252170, 6, 'Data Science', 8, 'Master', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (170, 'ShelbyTorino', 'shelby.torino@comnet', 98023005, 3, 'Astrophysics', 15, 'Lecturer', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (171, 'CandiceNegbaur', 'c.negbaur@interfaces', 76376825, 5, 'Machine Learning', 5, 'Master', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (172, 'CourtneySirtis', 'courtney.sirtis@amer', 13675703, 3, 'Data Science', 11, 'Ph.D. Candidate', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (173, 'RemyVince', 'remy.vince@technica.', 62821392, 2, 'Environmental Engine', 6, 'Lecturer', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (174, 'DevonColeman', 'devon.coleman@airmet', 95138317, 3, 'Cognitive Psycholog', 6, 'Doctor', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (175, 'AzucarTanon', 'azucart@tps.com', 82905779, 4, 'Data Science', 5, 'Ph.D. Candidate', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (176, 'JoyFuray', 'jfuray@accessus.com', 41150593, 4, 'Biomedical Engineeri', 6, 'Doctor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (177, 'JeannePhillips', 'jeanne.phillips@prio', 84357787, 4, 'Machine Learning', 5, 'Lecturer', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (178, 'ChloeWeston', 'chloe.weston@visaint', 25585972, 3, 'Molecular Biology', 8, 'Ph.D. Candidate', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (179, 'BobbiMichael', 'bmichael@paintedword', 93575018, 5, 'Data Science', 7, 'Bachelor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (180, 'MintDean', 'mint.dean@ibm.com', 96273446, 1, 'Molecular Biology', 11, 'Bachelor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (181, 'HumbertoBadaluc', 'humberto.badalucco@s', 35060811, 3, 'Artificial Intellige', 11, 'Doctor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (182, 'SuzyNeil', 'suzy@axis.nl', 71330470, 2, 'Cognitive Psycholog', 13, 'Professor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (183, 'StewartHarmon', 'stewart.h@qssgroup.a', 47291973, 3, 'Machine Learning', 9, 'Ph.D. Candidate', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (184, 'RobertHayes', 'robert@proclarity.ca', 20757319, 7, 'Data Science', 13, 'Lecturer', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (185, 'LanceStudi', 'lance.studi@diamondg', 21794610, 3, 'Molecular Biology', 10, 'Professor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (186, 'Jonny LeeMargul', 'jonnylee@data.br', 89619659, 5, 'Biomedical Engineeri', 15, 'Ph.D. Candidate', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (187, 'JarvisZappacost', 'jarvis.zappacosta@ma', 61820119, 4, 'Data Science', 9, 'Bachelor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (188, 'EliasGaines', 'elias.gaines@kitba.c', 54731359, 2, 'Molecular Biology', 5, 'Bachelor', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (189, 'SamPaymer', 'samp@usdairyproducer', 96530417, 1, 'Astrophysics', 11, 'Lecturer', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (190, 'HopeLevert', 'hope.levert@lms.com', 80187899, 2, 'Astrophysics', 13, 'Lecturer', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (191, 'HumbertoBruce', 'humberto.b@gapinc.br', 88484619, 3, 'Genomics', 5, 'Ph.D. Candidate', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (192, 'BryanFoster', 'bryan.foster@america', 34332197, 1, 'Artificial Intellige', 15, 'Master', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (193, 'LenaEvans', 'lena.evans@biorefere', 14816262, 7, 'Environmental Engine', 14, 'Doctor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (194, 'FrankBrooks', 'frank@heritagemicrof', 42313243, 6, 'Molecular Biology', 10, 'Professor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (195, 'FrankZeta-Jones', 'frank@hiltonhotels.u', 65117804, 3, 'Biomedical Engineeri', 8, 'Doctor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (196, 'TriniCox', 'trini.cox@adeasoluti', 50542368, 6, 'Genomics', 8, 'Lecturer', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (197, 'GordSkarsgard', 'gord.skarsgard@elite', 12542003, 7, 'Astrophysics', 5, 'Master', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (198, 'StephanieRossel', 'stephanie@nobrainerb', 71511706, 1, 'Biomedical Engineeri', 8, 'Master', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (199, 'NeveMathis', 'neve.mathis@gateway.', 47695420, 6, 'Astrophysics', 11, 'Lecturer', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (200, 'HilaryImbruglia', 'hilary.imbruglia@yes', 87439824, 1, 'Machine Learning', 13, 'Lecturer', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (201, 'MikoWinger', 'miko.winger@gci.com', 66451134, 5, 'Machine Learning', 13, 'Ph.D. Candidate', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (202, 'WangMiller', 'w.miller@telesynthes', 50057212, 5, 'Data Science', 9, 'Master', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (203, 'RoryNegbaur', 'rory.negbaur@timberl', 39271195, 3, 'Quantum Computing', 8, 'Ph.D. Candidate', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (204, 'RhonaCalle', 'rcalle@base.com', 56752161, 4, 'Artificial Intellige', 11, 'Ph.D. Candidate', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (205, 'RicardoTomlin', 'r.tomlin@biosite.com', 22003044, 7, 'Artificial Intellige', 5, 'Doctor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (206, 'MenaCumming', 'mena.cumming@safeway', 47472635, 2, 'Data Science', 13, 'Ph.D. Candidate', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (207, 'RoyMarx', 'roy.marx@lindin.il', 42991150, 6, 'Artificial Intellige', 14, 'Professor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (208, 'CubaReeves', 'cubar@dataprise.uk', 95229105, 3, 'Genomics', 10, 'Master', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (209, 'WillSpine', 'w.spine@signature.ca', 57658770, 6, 'Artificial Intellige', 10, 'Ph.D. Candidate', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (210, 'UmaSwank', 'uswank@qas.gr', 81709069, 6, 'Artificial Intellige', 10, 'Bachelor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (211, 'VondaHenriksen', 'v.henriksen@travizon', 45643790, 4, 'Machine Learning', 12, 'Assistant Profe', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (212, 'ChrissieAiken', 'chrissie.aiken@unica', 82232586, 1, 'Quantum Computing', 6, 'Master', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (213, 'RickFoxx', 'rick.foxx@securitych', 80329469, 4, 'Biomedical Engineeri', 9, 'Doctor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (214, 'ChubbyWinwood', 'cwinwood@trinityhome', 31649227, 1, 'Biomedical Engineeri', 11, 'Lecturer', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (215, 'GoranHagar', 'goran.h@gapinc.de', 86084858, 1, 'Molecular Biology', 6, 'Master', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (216, 'TalEnglund', 't.englund@marketfirs', 67130755, 5, 'Biomedical Engineeri', 14, 'Bachelor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (217, 'JohnnieWine', 'johnnie.wine@unit.co', 14620929, 4, 'Environmental Engine', 8, 'Lecturer', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (218, 'RaymondSalt', 'rsalt@spd.de', 94233714, 7, 'Cognitive Psycholog', 14, 'Master', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (219, 'TyCollie', 'tcollie@calence.fr', 33520347, 5, 'Data Science', 12, 'Professor', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (220, 'LinCara', 'lin.cara@credopetrol', 98233183, 2, 'Quantum Computing', 11, 'Bachelor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (221, 'EdgarChandler', 'edgar@hotmail.com', 73527486, 2, 'Quantum Computing', 5, 'Ph.D. Candidate', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (222, 'FrancesKane', 'frances.kane@hitechp', 96602394, 5, 'Environmental Engine', 14, 'Ph.D. Candidate', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (223, 'BreckinViterell', 'breckin.viterelli@ge', 52347450, 5, 'Cognitive Psycholog', 11, 'Bachelor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (224, 'ScottSmith', 'scott.smith@calence.', 57317498, 6, 'Biomedical Engineeri', 10, 'Master', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (225, 'MikaBriscoe', 'm.briscoe@veritekint', 66196958, 7, 'Artificial Intellige', 12, 'Assistant Profe', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (226, 'NenehWoodward', 'neneh.woodward@wells', 68485543, 5, 'Artificial Intellige', 12, 'Assistant Profe', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (227, 'LynetteBarry', 'l.barry@democracydat', 54240618, 6, 'Quantum Computing', 10, 'Master', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (228, 'QuentinChinlund', 'quentin.chinlund@inv', 25900301, 2, 'Quantum Computing', 14, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (229, 'TerriWaits', 'terri.waits@ccfholdi', 48823270, 1, 'Genomics', 5, 'Ph.D. Candidate', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (230, 'MiriamLuPone', 'miriam.lupone@capito', 15447907, 1, 'Quantum Computing', 12, 'Master', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (231, 'ColeyMorse', 'coley.morse@newhoriz', 38409417, 6, 'Machine Learning', 7, 'Lecturer', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (232, 'VingCollins', 'ving.collins@ultimus', 37068761, 3, 'Biomedical Engineeri', 7, 'Assistant Profe', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (233, 'ErnieWagner', 'ernie.w@nobrainerbli', 76669177, 1, 'Molecular Biology', 9, 'Assistant Profe', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (234, 'TaraGetty', 'tara.getty@zaiqtechn', 92297784, 4, 'Artificial Intellige', 15, 'Master', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (235, 'AndreChanning', 'andrec@wellsfinancia', 57848953, 5, 'Molecular Biology', 10, 'Assistant Profe', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (236, 'WillieHarary', 'willie.harary@street', 61762554, 7, 'Cognitive Psycholog', 7, 'Lecturer', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (237, 'LynetteOwen', 'lynette@universalsol', 92328152, 7, 'Data Science', 15, 'Ph.D. Candidate', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (238, 'EmmCumming', 'emm.cumming@nissanmo', 51275829, 1, 'Biomedical Engineeri', 13, 'Professor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (239, 'RonnyLlewelyn', 'rllewelyn@envisionte', 74526628, 3, 'Cognitive Psycholog', 9, 'Lecturer', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (240, 'MiliWakeling', 'mili@processplus.com', 59240221, 2, 'Molecular Biology', 9, 'Bachelor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (241, 'JohnetteTwilley', 'johnette.twilley@pro', 92947322, 5, 'Cognitive Psycholog', 10, 'Assistant Profe', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (242, 'SwoosieColon', 'swoosie.colon@cookte', 61726327, 6, 'Astrophysics', 7, 'Master', 14);
commit;
prompt 300 records committed...
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (243, 'LilaKurtz', 'lila.kurtz@elite.ca', 87841063, 5, 'Astrophysics', 13, 'Ph.D. Candidate', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (244, 'LukeSoda', 'luke.soda@capitalban', 86785318, 7, 'Genomics', 8, 'Assistant Profe', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (245, 'MaureenBlair', 'mblair@unicru.com', 65504579, 5, 'Astrophysics', 12, 'Professor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (246, 'AllanNewton', 'allann@cooktek.com', 75050024, 7, 'Machine Learning', 6, 'Assistant Profe', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (247, 'CharlizeWeisz', 'charlize.weisz@sci.c', 93320868, 4, 'Machine Learning', 7, 'Lecturer', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (248, 'ForestBridges', 'forest.bridges@trini', 13826121, 7, 'Molecular Biology', 9, 'Bachelor', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (249, 'NileCross', 'nilec@allstar.com', 26776039, 2, 'Molecular Biology', 7, 'Professor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (250, 'TayeMcConaughey', 'tayem@mosaic.uk', 32781426, 5, 'Astrophysics', 13, 'Professor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (251, 'DionneKretschma', 'dionne.kretschmann@p', 16123810, 4, 'Astrophysics', 14, 'Doctor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (252, 'HarveyEllis', 'hellis@arkidata.de', 60296661, 6, 'Quantum Computing', 11, 'Lecturer', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (253, 'HarrisSteagall', 'harris.s@softworld.c', 67710375, 5, 'Biomedical Engineeri', 12, 'Assistant Profe', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (254, 'PatGray', 'pat.gray@kroger.br', 76503374, 7, 'Artificial Intellige', 5, 'Lecturer', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (255, 'SuzanneFiennes', 'sfiennes@mls.com', 35579882, 6, 'Environmental Engine', 7, 'Doctor', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (256, 'RodRebhorn', 'rod.rebhorn@glacierb', 30268886, 5, 'Astrophysics', 8, 'Lecturer', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (257, 'RufusVincent', 'rufus.vincent@loreal', 94898326, 7, 'Artificial Intellige', 10, 'Doctor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (258, 'NicoleMcDowell', 'nicole.mcdowell@prio', 48975687, 6, 'Machine Learning', 12, 'Professor', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (259, 'AlDe Almeida', 'al.dealmeida@bigyank', 46109322, 5, 'Cognitive Psycholog', 11, 'Professor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (260, 'RascalFehr', 'rascal.fehr@firstsou', 33199212, 2, 'Genomics', 7, 'Doctor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (261, 'KieranSanders', 'k.sanders@sysconmedi', 57851604, 4, 'Environmental Engine', 10, 'Doctor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (262, 'RitaAdler', 'radler@marathonheate', 81043234, 3, 'Astrophysics', 12, 'Assistant Profe', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (263, 'MindyMcKellen', 'mindy.mckellen@vesta', 27898333, 4, 'Molecular Biology', 15, 'Master', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (264, 'CyndiAllison', 'cyndia@stm.com', 29841010, 1, 'Genomics', 11, 'Doctor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (265, 'TildaPeterson', 'tilda@newtoninteract', 24190320, 6, 'Genomics', 7, 'Lecturer', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (266, 'WillWilson', 'w.wilson@unica.br', 31308597, 2, 'Environmental Engine', 6, 'Bachelor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (267, 'JoshSatriani', 'jsatriani@mathis.com', 29360058, 3, 'Artificial Intellige', 13, 'Bachelor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (268, 'AndyKidman', 'akidman@meridiangold', 52714758, 1, 'Environmental Engine', 11, 'Assistant Profe', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (269, 'DonalHorton', 'donalh@technica.jp', 34910597, 1, 'Genomics', 7, 'Ph.D. Candidate', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (270, 'LiliFeuerstein', 'lfeuerstein@parksite', 29376318, 3, 'Cognitive Psycholog', 10, 'Professor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (271, 'EmersonRhames', 'emerson.rhames@softw', 40885512, 5, 'Artificial Intellige', 5, 'Master', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (272, 'LucindaDempsey', 'lucinda.dempsey@mill', 21260293, 4, 'Data Science', 6, 'Master', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (273, 'LeonardoGarza', 'leonardo.garza@atase', 21650626, 5, 'Data Science', 12, 'Professor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (274, 'KevnHeald', 'kevn.heald@gbas.dk', 42698595, 4, 'Genomics', 7, 'Lecturer', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (275, 'KrisCocker', 'krisc@advancedneurom', 63212683, 4, 'Quantum Computing', 6, 'Lecturer', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (276, 'KatieKleinenber', 'katie.kleinenberg@in', 85477172, 2, 'Quantum Computing', 13, 'Assistant Profe', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (277, 'AnitaCarrington', 'anitac@amerisourcefu', 94524349, 6, 'Environmental Engine', 9, 'Professor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (278, 'LukeMurphy', 'luke.murphy@componen', 20340639, 6, 'Genomics', 15, 'Master', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (279, 'ToshiroKline', 'toshiro.kline@sm.uk', 29557174, 7, 'Machine Learning', 15, 'Ph.D. Candidate', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (280, 'SeanQuatro', 'sean.q@exinomtechnol', 34341606, 1, 'Quantum Computing', 13, 'Ph.D. Candidate', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (281, 'RobinBenson', 'robin.benson@signatu', 90676147, 4, 'Artificial Intellige', 10, 'Ph.D. Candidate', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (282, 'LiquidMacIsaac', 'lmacisaac@heartlab.c', 69161904, 7, 'Biomedical Engineeri', 11, 'Lecturer', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (283, 'KirkLachey', 'klachey@lloydgroup.d', 19066629, 5, 'Cognitive Psycholog', 12, 'Bachelor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (284, 'FrancoGarza', 'franco.garza@ssi.com', 73226044, 4, 'Artificial Intellige', 9, 'Ph.D. Candidate', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (285, 'WilliamFurtado', 'william.furtado@card', 68385903, 4, 'Artificial Intellige', 11, 'Doctor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (286, 'KennyHackman', 'kenny.hackman@bestev', 80409721, 7, 'Biomedical Engineeri', 12, 'Doctor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (287, 'DickHynde', 'dick.h@newmedia.it', 71071147, 5, 'Artificial Intellige', 14, 'Lecturer', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (288, 'BurtonEdmunds', 'burton.edmunds@insur', 98565287, 1, 'Machine Learning', 7, 'Professor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (289, 'ShannynAniston', 'shannyn@sunstream.de', 21215948, 6, 'Genomics', 7, 'Master', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (290, 'NastassjaLeigh', 'nleigh@pds.com', 32625731, 7, 'Artificial Intellige', 10, 'Professor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (291, 'OrlandoBlaine', 'orlando.blaine@cyner', 30320055, 4, 'Astrophysics', 10, 'Assistant Profe', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (292, 'SalMcDonnell', 'salm@cns.com', 89772188, 5, 'Data Science', 13, 'Assistant Profe', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (293, 'AntonioCandy', 'antonio.candy@usgove', 82181949, 2, 'Artificial Intellige', 10, 'Assistant Profe', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (294, 'TedRock', 't.rock@prahs.ca', 37875200, 6, 'Machine Learning', 10, 'Doctor', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (295, 'LuisWayans', 'luis.wayans@wendysin', 45082663, 2, 'Machine Learning', 7, 'Assistant Profe', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (296, 'SolomonWithersp', 'solomon.w@nhr.tr', 35812603, 4, 'Environmental Engine', 11, 'Lecturer', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (297, 'RodneyFlack', 'rflack@providentbanc', 42059655, 2, 'Molecular Biology', 11, 'Lecturer', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (298, 'KatieGoldblum', 'katieg@chhc.com', 70411628, 4, 'Biomedical Engineeri', 9, 'Professor', 8);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (299, 'EdieDooley', 'edie.dooley@glaxosmi', 25486547, 7, 'Quantum Computing', 6, 'Ph.D. Candidate', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (300, 'JakeRhodes', 'jake.rhodes@avr.com', 52329490, 5, 'Quantum Computing', 10, 'Bachelor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (301, 'LoreenaWeller', 'l.weller@prometheusl', 76560516, 6, 'Data Science', 6, 'Doctor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (302, 'LennySuchet', 'lenny@aquascapedesig', 24627833, 5, 'Molecular Biology', 11, 'Bachelor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (303, 'ReginaPalin', 'regina.palin@caliber', 24966404, 5, 'Quantum Computing', 12, 'Master', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (304, 'GabyMcFadden', 'gaby.mcfadden@zaiqte', 28321508, 7, 'Molecular Biology', 14, 'Bachelor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (305, 'NikkaRapaport', 'nikka.rapaport@traff', 33499389, 2, 'Environmental Engine', 5, 'Lecturer', 16);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (306, 'BridgetHerrmann', 'b.herrmann@surmodics', 43561905, 3, 'Cognitive Psycholog', 12, 'Lecturer', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (307, 'TedCharles', 'tcharles@loreal.nl', 85215412, 3, 'Artificial Intellige', 7, 'Ph.D. Candidate', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (308, 'ChrisMcCabe', 'chris.mccabe@totalen', 28475742, 6, 'Machine Learning', 5, 'Doctor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (309, 'Jonny LeeHeche', 'jonnylee.heche@wells', 12372843, 2, 'Data Science', 8, 'Lecturer', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (310, 'AlParsons', 'alp@onesourceprintin', 12835235, 1, 'Genomics', 11, 'Bachelor', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (311, 'BrothersMcLean', 'brothers.mclean@prin', 91640584, 3, 'Machine Learning', 7, 'Master', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (312, 'TreyZappacosta', 'tzappacosta@abs.it', 23761898, 7, 'Astrophysics', 6, 'Lecturer', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (313, 'TemueraCostello', 't.costello@verizon.d', 86885575, 6, 'Data Science', 9, 'Doctor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (314, 'JimmieGreenwood', 'jimmie.greenwood@acc', 71223721, 4, 'Machine Learning', 6, 'Doctor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (315, 'JimmyIsaak', 'jisaak@spd.at', 51367625, 4, 'Biomedical Engineeri', 12, 'Ph.D. Candidate', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (316, 'IreneFaithfull', 'irene@trafficmanagem', 69078688, 1, 'Cognitive Psycholog', 6, 'Professor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (317, 'HopeTate', 'hope.tate@hatworld.c', 61544592, 2, 'Genomics', 14, 'Lecturer', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (318, 'UdoWeisberg', 'udo.weisberg@myricom', 91819614, 7, 'Artificial Intellige', 8, 'Ph.D. Candidate', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (319, 'PeterSpears', 'peter.s@gha.br', 28130628, 1, 'Molecular Biology', 14, 'Professor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (320, 'TanyaShandling', 't.shandling@ogi.com', 84063810, 6, 'Molecular Biology', 13, 'Lecturer', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (321, 'ChristianO''Hara', 'christian.ohara@elit', 12849529, 5, 'Genomics', 8, 'Ph.D. Candidate', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (322, 'TchekyHidalgo', 't.hidalgo@aoe.de', 54899419, 4, 'Molecular Biology', 14, 'Assistant Profe', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (323, 'KeanuWen', 'keanu.w@amerisourcef', 15212696, 4, 'Cognitive Psycholog', 12, 'Doctor', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (324, 'SylvesterKristo', 'sylvester.kristoffer', 79533105, 1, 'Genomics', 12, 'Doctor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (325, 'ShannynBosco', 'sbosco@sm.uk', 92227505, 6, 'Data Science', 7, 'Professor', 10);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (326, 'MickeyGibbons', 'mickeyg@gra.be', 43716033, 1, 'Biomedical Engineeri', 13, 'Doctor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (327, 'VinceHawn', 'vince.hawn@tracertec', 96156706, 1, 'Molecular Biology', 10, 'Professor', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (328, 'JoelyDavison', 'joely.davison@simply', 64252315, 5, 'Artificial Intellige', 6, 'Bachelor', 13);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (329, 'GoranReilly', 'goran.reilly@progres', 15464392, 7, 'Environmental Engine', 7, 'Bachelor', 17);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (330, 'GordonWashingto', 'gordon.washington@co', 32153807, 7, 'Cognitive Psycholog', 7, 'Doctor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (331, 'KatieMcCain', 'k.mccain@insurmark.c', 94202067, 2, 'Molecular Biology', 6, 'Doctor', 9);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (332, 'WadeVaughn', 'wade.v@staffone.com', 21611288, 5, 'Artificial Intellige', 15, 'Ph.D. Candidate', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (333, 'LucindaWilkinso', 'lucinda@diageo.com', 47731930, 7, 'Data Science', 9, 'Lecturer', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (334, 'MelBello', 'mel.bello@bioanalyti', 38060049, 6, 'Quantum Computing', 12, 'Ph.D. Candidate', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (335, 'RodGuzman', 'rodg@campbellsoup.co', 85541791, 7, 'Cognitive Psycholog', 6, 'Bachelor', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (336, 'JuddWeisberg', 'judd.weisberg@safewa', 30666016, 1, 'Machine Learning', 11, 'Ph.D. Candidate', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (337, 'MiliCosta', 'mili.costa@quicksilv', 25331308, 3, 'Astrophysics', 12, 'Ph.D. Candidate', 12);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (338, 'AnnetteRobbins', 'annette.robbins@mwh.', 54281482, 6, 'Genomics', 8, 'Lecturer', 14);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (339, 'DrewWarwick', 'drew@staffone.il', 44975652, 3, 'Astrophysics', 12, 'Professor', 15);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (340, 'BethMurray', 'beth.murray@fsffinan', 28720875, 4, 'Data Science', 10, 'Assistant Profe', 7);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (341, 'ElizabethBell', 'ebell@doraldentalusa', 48363527, 5, 'Genomics', 15, 'Professor', 11);
insert into RRESEARCHER (researcherid, rname, email, phone, department, researchfield, yearsofexperience, rdegree, numarticales)
values (342, 'JesusPresley', 'jesus.presley@swp.za', 26792107, 1, 'Data Science', 5, 'Doctor', 17);
commit;
prompt 400 records loaded
prompt Loading CONDUCTS...
prompt Table is empty
prompt Loading REPORTS...
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (118, 'Data Collection', 'Economic Impact of Pandemics: Lessons from History', to_date('11-12-2022', 'dd-mm-yyyy'), 'Increase focus on research data interoperability', 'Difficulty in engaging with policymakers', 7, 220);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (119, 'Annual Study Re', 'Evaluation of Renewable Energy Adoption in Developing Nations', to_date('20-04-2024', 'dd-mm-yyyy'), 'Promote the use of ethical data practices', 'Inconsistent support for research data governance compliance', 8, 129);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (120, 'Data Utilizatio', 'Disaster Recovery Plans Effectiveness Evaluation', to_date('28-03-2023', 'dd-mm-yyyy'), 'Promote the use of responsible data methodologies in research', 'Challenges in managing research resources', 1, 23);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (121, 'Research Data M', 'Government Policies Impact on Poverty Alleviation', to_date('13-11-2022', 'dd-mm-yyyy'), 'Increase the use of ethical data science methodologies', 'Difficulty in ensuring research transparency', 4, 113);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (122, 'Participant Rec', 'Global Trade Patterns and Economic Integration', to_date('11-06-2022', 'dd-mm-yyyy'), 'Enhance the quality of data governance systems', 'Challenges in integrating interdisciplinary approaches', 2, 168);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (123, 'Research Docume', 'Corporate Responsibility: Environmental Sustainability Programs', to_date('01-04-2024', 'dd-mm-yyyy'), 'Improve the reproducibility of responsible data science', 'Limited opportunities for data governance collaboration', 3, 86);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (124, 'Research Govern', 'Cybersecurity Threat Landscape Analysis', to_date('04-03-2023', 'dd-mm-yyyy'), 'Promote the use of systematic reviews', 'Difficulty in managing data ethics compliance', 5, 146);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (125, 'Participant Eng', 'Sustainable Agriculture Practices Adoption Evaluation', to_date('08-03-2022', 'dd-mm-yyyy'), 'Provide resources for research dissemination', 'Difficulty in achieving stakeholder engagement', 9, 224);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (126, 'Study Execution', 'Gender Pay Gap: Causes and Solutions Analysis', to_date('24-09-2022', 'dd-mm-yyyy'), 'Improve the transparency of data-driven processes', 'Inconsistent support for data ethics documentation', 7, 68);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (127, 'Study Documenta', 'Transportation Systems Efficiency and Public Satisfaction', to_date('04-03-2022', 'dd-mm-yyyy'), 'Increase focus on data ethics and integrity', 'Challenges in managing interdisciplinary teams', 10, 255);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (128, 'Data Privacy Im', 'Role of Robotics in Enhancing Manufacturing Efficiency', to_date('12-01-2022', 'dd-mm-yyyy'), 'Promote the use of responsible data governance ethics methodologies in research', 'Challenges in balancing research and administrative duties', 5, 99);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (129, 'Research Execut', 'Smart City Technologies: Urban Planning Innovations', to_date('14-01-2022', 'dd-mm-yyyy'), 'Enhance the role of research statisticians', 'Time-consuming administrative tasks', 3, 361);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (130, 'Study Feasibili', 'Corporate Governance Best Practices Evaluation', to_date('22-06-2022', 'dd-mm-yyyy'), 'Enhance the training of data ethics researchers', 'Ethical issues in clinical data', 1, 34);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (131, 'Annual Performa', 'Sustainable Fashion Industry Trends Analysis', to_date('26-06-2022', 'dd-mm-yyyy'), 'Enhance the quality of data collection', 'Challenges in interdisciplinary communication', 9, 139);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (132, 'Research Proces', 'Urban Planning Policies\'' Socioeconomic Impacts', to_date('26-10-2023', 'dd-mm-yyyy'), 'Develop strategies for responsible data governance in research', 'Limited opportunities for data governance collaboration', 10, 170);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (133, 'Research Integr', 'Sustainable Transportation Solutions Assessment', to_date('17-10-2022', 'dd-mm-yyyy'), 'Develop strategies for effective data sharing', 'Inconsistent data validation methods', 9, 376);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (134, 'Participant Eng', 'Corporate Governance Best Practices Evaluation', to_date('04-02-2023', 'dd-mm-yyyy'), 'Enhance the reproducibility of research findings', 'Limited funding for interdisciplinary research', 3, 381);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (135, 'Research Govern', 'Diversity Dynamics: Cultural Integration in Multinationals', to_date('04-02-2023', 'dd-mm-yyyy'), 'Increase focus on ethical data governance ethics methodologies in research', 'Limited opportunities for research mobility', 3, 141);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (136, 'Data Protection', 'Renewable Energy Investments: Opportunities and Risks', to_date('26-04-2024', 'dd-mm-yyyy'), 'Encourage the use of advanced ethical data science in research', 'Challenges in ensuring data security', 3, 185);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (137, 'Participant Dat', 'Renewable Energy Role in Climate Change Mitigation', to_date('26-01-2024', 'dd-mm-yyyy'), 'Utilize social media for research dissemination', 'Difficulty in achieving data governance compliance', 2, 333);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (138, 'Study Design Re', 'Air Pollution Control Measures\'' Effectiveness', to_date('13-01-2024', 'dd-mm-yyyy'), 'Improve the monitoring of research progress', 'Inconsistent reporting standards', 10, 214);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (139, 'Research Effici', 'E-commerce Platforms: User Experience and Security', to_date('20-01-2024', 'dd-mm-yyyy'), 'Encourage the use of research networks', 'Limited focus on public engagement', 4, 136);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (140, 'Research Plan S', 'Urban Planning Policies\'' Socioeconomic Impacts', to_date('26-03-2022', 'dd-mm-yyyy'), 'Promote the use of responsible data practices', 'Ethical issues in research data management', 5, 43);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (141, 'Study Findings ', 'Cybersecurity Awareness Programs Evaluation', to_date('22-08-2023', 'dd-mm-yyyy'), 'Enhance the role of data innovation committees', 'Inadequate support for early-career researchers', 2, 159);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (142, 'Study Logistics', 'Green Energy Solutions for Urban Development', to_date('06-07-2022', 'dd-mm-yyyy'), 'Promote the use of responsible data governance ethics in research', 'Ethical issues in research with vulnerable populations', 3, 78);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (143, 'Research Collab', 'Corporate Governance Best Practices Evaluation', to_date('20-01-2022', 'dd-mm-yyyy'), 'Develop partnerships with industry', 'Difficulty in obtaining reliable research data', 8, 256);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (144, 'Research Method', 'Online Learning Platforms Effectiveness Assessment', to_date('11-02-2022', 'dd-mm-yyyy'), 'Promote the use of evidence-based practices', 'Difficulty in achieving research data security', 1, 164);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (145, 'Research Eviden', 'Sustainable Fashion Industry Trends Analysis', to_date('28-02-2024', 'dd-mm-yyyy'), 'Encourage the use of ethical data governance ethics in research', 'Difficulty in achieving interdisciplinary synergy', 2, 80);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (146, 'Research Qualit', 'Diversity Dynamics: Cultural Integration in Multinationals', to_date('08-06-2023', 'dd-mm-yyyy'), 'Promote the use of responsible digital research practices', 'Inadequate support for grant writing', 6, 301);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (147, 'Study Design Su', 'Corporate Governance Best Practices Evaluation', to_date('13-01-2024', 'dd-mm-yyyy'), 'Develop strategies for data-driven insights', 'Complexity in interdisciplinary research design', 9, 73);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (148, 'Study Results R', 'Renewable Energy Role in Climate Change Mitigation', to_date('19-01-2023', 'dd-mm-yyyy'), 'Promote the use of evidence-based practices', 'Ethical issues in participant consent', 3, 342);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (149, 'Research Comple', 'Social Media Influence on Interpersonal Relationships', to_date('05-02-2022', 'dd-mm-yyyy'), 'Develop guidelines for responsible data sharing', 'Inconsistent standards for research dissemination', 4, 303);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (150, 'Participant Dat', 'Big Data Utilization in Enhancing Healthcare Services', to_date('28-02-2022', 'dd-mm-yyyy'), 'Promote the use of responsible data science governance', 'Difficulty in data management', 4, 373);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (151, 'Research Strate', 'Workplace Stress Factors Identification and Management', to_date('10-05-2024', 'dd-mm-yyyy'), 'Develop strategies for ethical data governance ethics in research', 'Inconsistent research data governance practices', 5, 99);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (152, 'Research Plan R', 'Video Games Impact on Cognitive Skills Analysis', to_date('27-08-2023', 'dd-mm-yyyy'), 'Develop policies for responsible data science in research', 'Difficulty in achieving data ethics compliance', 10, 372);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (153, 'Research Qualit', 'Disaster Recovery Plans Effectiveness Evaluation', to_date('21-11-2023', 'dd-mm-yyyy'), 'Develop strategies for responsible data science', 'Ethical concerns in AI research', 4, 113);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (154, 'Data Collection', 'Green Energy Solutions for Urban Development', to_date('16-07-2022', 'dd-mm-yyyy'), 'Ensure the reproducibility of research findings', 'Difficulty in achieving data quality', 2, 372);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (155, 'Data Security R', 'Noise Pollution Effects on Wildlife Habitats Analysis', to_date('02-07-2023', 'dd-mm-yyyy'), 'Increase investment in responsible data science', 'Ethical issues in health research', 1, 3);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (156, 'Research Achiev', 'Social Media Influencers Impact on Teenagers', to_date('14-01-2024', 'dd-mm-yyyy'), 'Enhance the visibility of research activities', 'Difficulty in managing data ethics documentation', 7, 342);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (157, 'Participant Eng', 'Comparative Study on Healthcare Systems Efficiency', to_date('12-11-2023', 'dd-mm-yyyy'), 'Encourage the use of digital innovation in research', 'Ethical concerns in data governance', 9, 214);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (158, 'Participant Eng', 'Disaster Recovery Plans Effectiveness Evaluation', to_date('02-10-2022', 'dd-mm-yyyy'), 'Develop strategies for responsible research data usage', 'Difficulty in addressing data biases', 3, 385);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (159, 'Participant Eng', 'Corporate Governance Best Practices Evaluation', to_date('23-04-2024', 'dd-mm-yyyy'), 'Promote the use of responsible data governance practices in research', 'Inconsistent standards for research integrity', 6, 56);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (160, 'Research Activi', 'Supply Chain Disruptions: Causes and Recovery Strategies', to_date('10-10-2022', 'dd-mm-yyyy'), 'Increase focus on research data interoperability', 'Inconsistent standards for research ethics', 9, 167);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (161, 'Participant Fee', 'Climate Change Impacts on Global Biodiversity', to_date('17-12-2023', 'dd-mm-yyyy'), 'Regularly update research methodologies', 'Difficulty in achieving research data governance integration', 3, 297);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (162, 'Study Implement', 'Air Quality Index and Public Health Implications', to_date('07-12-2022', 'dd-mm-yyyy'), 'Enhance the quality of data science', 'Limited opportunities for research mobility', 5, 356);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (163, 'Research Develo', 'Cybersecurity Awareness Programs Evaluation', to_date('19-02-2022', 'dd-mm-yyyy'), 'Enhance the reproducibility of research findings', 'Limited focus on data ethics in governance', 2, 4);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (164, 'Study Design Su', 'Global Warming Effects: Ecological Implications', to_date('20-01-2022', 'dd-mm-yyyy'), 'Develop strategies for responsible data science', 'Limited opportunities for interdisciplinary training', 3, 43);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (165, 'Study Feasibili', 'Noise Pollution Effects on Wildlife Habitats Analysis', to_date('17-09-2023', 'dd-mm-yyyy'), 'Increase the use of ethical data science methodologies', 'Difficulty in ensuring data accuracy', 7, 275);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (166, 'Participant Ins', 'Technology Role in Financial Inclusion', to_date('03-02-2022', 'dd-mm-yyyy'), 'Increase the use of ethical digital methodologies', 'Difficulty in achieving research scalability', 9, 71);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (167, 'Research Insigh', 'Corporate Governance Best Practices Evaluation', to_date('13-09-2022', 'dd-mm-yyyy'), 'Increase the use of ethical data-driven research', 'Difficulty in managing research publications', 8, 83);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (168, 'Research Findin', 'Green Building Technologies: Sustainable Architecture', to_date('25-05-2023', 'dd-mm-yyyy'), 'Promote the use of ethical AI in data science', 'Ethical concerns in research data governance', 2, 16);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (169, 'Data Utilizatio', 'Water Pollution Prevention and Control Strategies', to_date('26-02-2023', 'dd-mm-yyyy'), 'Encourage open peer review', 'Difficulty in ensuring data accuracy', 10, 154);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (170, 'Research Dissem', 'Environmental Conservation EffortImpact Assessment', to_date('14-04-2023', 'dd-mm-yyyy'), 'Enhance the quality of data governance ethics methodologies practices in research', 'Limited opportunities for data governance collaboration', 10, 341);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (171, 'Study Review Su', 'Healthcare Accessibility in Underserved Areas', to_date('21-02-2023', 'dd-mm-yyyy'), 'Develop strategies for open science', 'Difficulty in achieving data accuracy', 2, 175);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (172, 'Study Metrics R', 'Environmental Conservation EffortImpact Assessment', to_date('12-06-2023', 'dd-mm-yyyy'), 'Increase investment in research infrastructure', 'Challenges in achieving research data governance consistency', 1, 123);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (173, 'Research Qualit', 'Digital Privacy Issues in an Era of Data Breaches', to_date('01-11-2023', 'dd-mm-yyyy'), 'Improve the quality of research outputs', 'Inconsistent research data standards', 4, 375);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (174, 'Participant Eng', 'Government Policies Impact on Poverty Alleviation', to_date('25-01-2023', 'dd-mm-yyyy'), 'Enhance the quality of research proposals', 'Limited focus on research data ethics', 4, 88);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (175, 'Participant Rec', 'Social Media Influence on Interpersonal Relationships', to_date('08-09-2022', 'dd-mm-yyyy'), 'Adopt best practices for data management', 'High turnover rate among research staff', 6, 13);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (176, 'Annual Research', 'Corporate Responsibility: Environmental Sustainability Programs', to_date('26-06-2022', 'dd-mm-yyyy'), 'Enhance the quality of research data', 'Limited focus on research data security', 7, 315);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (177, 'Research Traini', 'Small Business Resilience Amid Economic Fluctuations', to_date('23-06-2023', 'dd-mm-yyyy'), 'Develop policies for responsible digital research', 'Difficulty in addressing ethical research issues', 3, 211);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (178, 'Research Proces', 'Renewable Energy Role in Climate Change Mitigation', to_date('30-03-2022', 'dd-mm-yyyy'), 'Enhance the quality of ethical data governance methodologies practices in research', 'Difficulty in obtaining reliable data sources', 8, 187);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (179, 'Participant Eng', 'Online Learning Platforms Effectiveness Assessment', to_date('28-09-2023', 'dd-mm-yyyy'), 'Improve the reproducibility of responsible data governance ethics methodologies', 'Inconsistent support for research dissemination', 10, 252);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (180, 'Research Challe', 'Cybersecurity Awareness Programs Evaluation', to_date('10-07-2022', 'dd-mm-yyyy'), 'Enhance the role of data ethics in research governance', 'Limited focus on research translation', 9, 218);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (181, 'Study Documenta', 'Artificial Sweeteners Health Implications Analysis', to_date('24-02-2022', 'dd-mm-yyyy'), 'Encourage the use of ethical data governance ethics methodologies in research', 'Insufficient funding for research projects', 5, 254);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (182, 'Research Dissem', 'Government Policies Impact on Poverty Alleviation', to_date('26-01-2023', 'dd-mm-yyyy'), 'Encourage the use of digital innovation in research', 'Challenges in managing interdisciplinary data governance', 3, 176);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (183, 'Research Plan R', 'Noise Pollution Effects on Wildlife Habitats Analysis', to_date('04-06-2023', 'dd-mm-yyyy'), 'Develop policies for ethical data sharing', 'Challenges in achieving research data governance', 6, 288);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (184, 'Data Integrity ', 'Corporate Governance Best Practices Evaluation', to_date('18-12-2023', 'dd-mm-yyyy'), 'Enhance the quality of data governance systems', 'Ethical dilemmas in study design', 8, 130);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (185, 'Research Activi', 'Telemedicine Services Adoption: Challenges and Benefits', to_date('23-02-2022', 'dd-mm-yyyy'), 'Increase the focus on research ethics', 'Difficulty in addressing research data privacy', 8, 358);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (186, 'Participant Exp', 'Supply Chain Disruptions: Causes and Recovery Strategies', to_date('02-03-2022', 'dd-mm-yyyy'), 'Promote the use of responsible data governance ethics methodologies practices in research', 'Ethical concerns in participant recruitment', 1, 80);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (187, 'Participant Eng', 'Technological Advancements in Education Ecosystems', to_date('13-10-2022', 'dd-mm-yyyy'), 'Encourage the use of ethical data governance ethics methodologies in research', 'Ethical issues in participant data security', 2, 58);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (188, 'Study Feasibili', 'Renewable Energy Investments: Opportunities and Risks', to_date('14-02-2023', 'dd-mm-yyyy'), 'Promote the use of mixed methods research', 'Difficulty in addressing data governance compliance', 8, 326);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (189, 'Research Activi', 'Cybersecurity Awareness Programs Evaluation', to_date('19-09-2023', 'dd-mm-yyyy'), 'Encourage interdisciplinary collaboration', 'Limited opportunities for data governance collaboration', 6, 87);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (190, 'Research Qualit', 'Technology Addiction: Causes and Mitigation Strategies', to_date('30-06-2023', 'dd-mm-yyyy'), 'Improve the transparency of digital research', 'Inconsistent research ethics compliance standards', 2, 71);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (191, 'Research Ethics', 'Corporate Governance Best Practices Evaluation', to_date('03-07-2023', 'dd-mm-yyyy'), 'Enhance the role of data governance frameworks', 'Ethical issues in data storage', 4, 313);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (192, 'Research Ethics', 'AI in Customer Service: Enhancing User Experience', to_date('09-03-2023', 'dd-mm-yyyy'), 'Enhance data visualization techniques', 'Difficulty in obtaining informed consent', 8, 260);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (193, 'Research Proces', 'Investigation of Social Media Influence on Teen Mental Health', to_date('15-04-2024', 'dd-mm-yyyy'), 'Promote the use of evidence-based practices', 'Barriers to open access publishing', 4, 37);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (194, 'Study Coordinat', 'Effects of Social Isolation on Mental Well-being', to_date('10-11-2023', 'dd-mm-yyyy'), 'Enhance the quality of data science', 'Challenges in managing research resources', 8, 2);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (195, 'Study Completio', 'Cybersecurity Awareness Programs Evaluation', to_date('25-08-2023', 'dd-mm-yyyy'), 'Collaborate with other research institutions', 'Pressure to secure continuous funding', 8, 368);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (1, 'Research Insigh', 'Political Campaigns Social Media Influence Analysis', to_date('26-12-2023', 'dd-mm-yyyy'), 'Provide clear guidelines for research conduct', 'Inconsistent research methodologies', 2, 196);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (2, 'Research Eviden', 'Cross-Cultural Communication Challenges and Solutions', to_date('13-03-2022', 'dd-mm-yyyy'), 'Increase focus on data ethics and integrity', 'Inconsistent support for research methodologies', 4, 250);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (3, 'Participant Exp', 'Disaster Recovery Plans Effectiveness Evaluation', to_date('08-02-2024', 'dd-mm-yyyy'), 'Increase focus on sustainable research practices', 'Difficulty in achieving research data governance standards', 8, 52);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (4, 'Data Utilizatio', 'Assessment of Pollution Impact on Urban Wildlife Habitats', to_date('28-06-2023', 'dd-mm-yyyy'), 'Increase the use of ethical data governance practices in research', 'Challenges in securing long-term funding', 9, 114);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (5, 'Data Utilizatio', 'Transportation Systems Efficiency and Public Satisfaction', to_date('05-11-2023', 'dd-mm-yyyy'), 'Promote the use of ethical research data', 'Difficulty in publishing negative results', 3, 243);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (6, 'Study Execution', 'Fashion Industry Trends and Sustainability Practices', to_date('18-02-2022', 'dd-mm-yyyy'), 'Encourage the use of ethical data methodologies in research', 'Inconsistent training for research staff', 2, 108);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (7, 'Study Logistics', 'E-commerce Platforms: User Experience and Security', to_date('04-12-2022', 'dd-mm-yyyy'), 'Encourage the use of advanced ethical data science in research', 'Inconsistent standards for research dissemination', 4, 253);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (8, 'Study Recruitme', 'Corporate Governance Best Practices Evaluation', to_date('06-04-2022', 'dd-mm-yyyy'), 'Expand research teams as necessary', 'Limited focus on research sustainability', 8, 91);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (9, 'Research Ethics', 'Alternative Medicine Adoption and Efficacy Analysis', to_date('24-01-2024', 'dd-mm-yyyy'), 'Increase the use of ethical data governance methodologies', 'Difficulty in managing research documentation', 3, 223);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (10, 'Research Method', 'Disaster Management Preparedness and Response Analysis', to_date('23-05-2024', 'dd-mm-yyyy'), 'Develop policies for ethical data governance ethics methodologies', 'Inconsistent data validation methods', 6, 249);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (11, 'Study Implement', 'AI in Customer Service: Enhancing User Experience', to_date('13-02-2024', 'dd-mm-yyyy'), 'Engage with stakeholders regularly', 'Difficulty in achieving stakeholder engagement', 1, 253);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (12, 'Study Logistics', 'Technology Role in Financial Inclusion', to_date('04-03-2022', 'dd-mm-yyyy'), 'Increase focus on responsible research data practices', 'Ethical issues in digital health research', 6, 291);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (13, 'Research Overvi', 'Digital Privacy Issues in an Era of Data Breaches', to_date('27-09-2022', 'dd-mm-yyyy'), 'Encourage the development of interdisciplinary centers', 'Difficulty in managing interdisciplinary data practices', 4, 187);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (14, 'Research Metric', 'Comparative Study on Healthcare Systems Efficiency', to_date('28-12-2022', 'dd-mm-yyyy'), 'Improve the dissemination of research outcomes', 'Difficulty in managing research outputs dissemination', 8, 276);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (15, 'Research Outcom', 'Disaster Recovery Plans Effectiveness Evaluation', to_date('06-02-2023', 'dd-mm-yyyy'), 'Encourage the use of advanced research data platforms', 'Difficulty in addressing data biases', 10, 187);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (16, 'Data Management', 'Global Warming Effects: Ecological Implications', to_date('22-11-2022', 'dd-mm-yyyy'), 'Develop guidelines for conflict of interest management', 'Difficulty in addressing ethical concerns', 9, 124);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (17, 'Research Utiliz', 'Social Media Influence on Interpersonal Relationships', to_date('01-04-2022', 'dd-mm-yyyy'), 'Encourage the use of cloud-based data solutions', 'Difficulty in maintaining data integrity', 3, 209);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (18, 'Data Standards ', 'Assessment of Pollution Impact on Urban Wildlife Habitats', to_date('07-01-2024', 'dd-mm-yyyy'), 'Enhance the quality of data governance methodologies in research', 'Inconsistent research data security standards', 9, 170);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (19, 'Study Documenta', 'Sustainable Development Goals Progress Evaluation', to_date('24-11-2023', 'dd-mm-yyyy'), 'Enhance the quality of data governance ethics in research', 'Ethical concerns in digital research', 3, 369);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (20, 'Study Execution', 'Social Media Influencers Impact on Teenagers', to_date('16-11-2023', 'dd-mm-yyyy'), 'Encourage the use of preprint servers', 'Challenges in achieving research data privacy', 2, 5);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (21, 'Research Activi', 'Green Urban Planning Strategies: Case Studies', to_date('28-05-2022', 'dd-mm-yyyy'), 'Increase focus on ethical data practices', 'Ethical issues in social research', 1, 60);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (22, 'Study Feasibili', 'Supply Chain Disruptions: Causes and Recovery Strategies', to_date('22-10-2023', 'dd-mm-yyyy'), 'Increase focus on data-driven insights', 'Limited focus on societal impact', 5, 295);
commit;
prompt 100 records committed...
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (23, 'Research Suppor', 'AI Applications in Healthcare: Present and Future', to_date('09-02-2024', 'dd-mm-yyyy'), 'Improve the ethical oversight of research', 'Ethical concerns in data use', 2, 286);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (24, 'Research Milest', 'Urbanization Trends and Smart City Initiatives', to_date('27-02-2024', 'dd-mm-yyyy'), 'Promote the use of responsible data science in research', 'Difficulty in managing data privacy', 4, 121);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (25, 'Participant Eng', 'Social Media Influence on Interpersonal Relationships', to_date('15-01-2022', 'dd-mm-yyyy'), 'Improve the ethical oversight of research', 'Inconsistent research ethics review processes', 2, 83);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (26, 'Research Outcom', 'Assessment of Pollution Impact on Urban Wildlife Habitats', to_date('27-07-2023', 'dd-mm-yyyy'), 'Improve the reproducibility of data governance in research', 'Challenges in scaling research projects', 1, 73);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (27, 'Study Findings ', 'Telecommunication Infrastructure Development Assessment', to_date('05-04-2023', 'dd-mm-yyyy'), 'Increase investment in digital research tools', 'Limited focus on societal impact', 4, 101);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (28, 'Study Effective', 'E-commerce Platforms: User Experience and Security', to_date('28-09-2022', 'dd-mm-yyyy'), 'Develop strategies for ethical data governance ethics in research', 'Inadequate support for grant writing', 7, 263);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (29, 'Study Documenta', 'Financial Literacy Programs  Impact on Society', to_date('19-03-2022', 'dd-mm-yyyy'), 'Provide clear guidelines for research conduct', 'Ethical concerns in data use', 4, 328);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (30, 'Research Outcom', 'Comparative Study on Healthcare Systems Efficiency', to_date('18-09-2022', 'dd-mm-yyyy'), 'Enhance the role of data governance ethics methodologies practices in research', 'Ethical concerns in data use', 5, 38);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (31, 'Data Protection', 'Corporate Governance Best Practices Evaluation', to_date('29-05-2024', 'dd-mm-yyyy'), 'Enhance the quality of data management systems', 'Difficulty in managing interdisciplinary data practices', 3, 381);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (32, 'Study Findings ', 'Exploring Consumer Behavior Shifts in Digital Marketplaces', to_date('06-06-2022', 'dd-mm-yyyy'), 'Develop guidelines for ethical data use', 'Difficulty in managing research data governance documentation', 5, 291);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (33, 'Research Eviden', 'Online Shopping Habits and Consumer Preferences', to_date('13-02-2024', 'dd-mm-yyyy'), 'Develop strategies for responsible data innovation', 'Difficulty in managing interdisciplinary data governance ethics', 2, 308);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (34, 'Study Documenta', 'Human Rights Violations in Conflict Zones Analysis', to_date('27-01-2023', 'dd-mm-yyyy'), 'Increase focus on ethical data practices', 'Difficulty in managing interdisciplinary data practices', 3, 115);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (35, 'Study Completio', 'Remote Work Productivity and Team Collaboration Analysis', to_date('06-08-2023', 'dd-mm-yyyy'), 'Enhance the quality of data governance ethics in research', 'Difficulty in addressing ethical data governance', 4, 265);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (36, 'Research Method', 'Technological Advancements in Education Ecosystems', to_date('22-09-2023', 'dd-mm-yyyy'), 'Develop contingency plans for research risks', 'Difficulty in balancing teaching and research', 3, 134);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (37, 'Research Execut', 'Cyberbullying Effects on Adolescent Mental Health', to_date('13-08-2022', 'dd-mm-yyyy'), 'Improve the transparency of research processes', 'Limited opportunities for data ethics training', 3, 220);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (38, 'Research Collab', 'Disaster Recovery Plans Effectiveness Evaluation', to_date('15-08-2023', 'dd-mm-yyyy'), 'Enhance research capacity building', 'Limited funding for interdisciplinary research', 3, 253);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (39, 'Data Security S', 'Role of AI in Financial Market Prediction Models', to_date('04-06-2023', 'dd-mm-yyyy'), 'Enhance the training of digital researchers', 'Limited mentorship for junior researchers', 1, 359);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (40, 'Research Ethics', 'Corporate Governance Best Practices Evaluation', to_date('01-08-2022', 'dd-mm-yyyy'), 'Develop strategies for ethical data science in research', 'Limited focus on research sustainability', 9, 289);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (41, 'Participant Exp', 'Smart City Technologies: Urban Planning Innovations', to_date('21-07-2023', 'dd-mm-yyyy'), 'Increase the use of ethical data governance methodologies in research', 'Difficulty in addressing data biases', 10, 199);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (42, 'Study Analysis ', 'Small Business Resilience Amid Economic Fluctuations', to_date('10-04-2022', 'dd-mm-yyyy'), 'Develop policies for research accountability', 'Difficulty in managing data privacy', 10, 39);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (43, 'Study Update Su', 'Social Media Influencers Impact on Consumer Behavior', to_date('28-01-2023', 'dd-mm-yyyy'), 'Increase investment in ethical data governance methodologies practices in research', 'Limited opportunities for data ethics training', 5, 383);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (44, 'Study Completio', 'Social Media and Body Image Perception Analysis', to_date('17-12-2023', 'dd-mm-yyyy'), 'Promote the use of mixed methods research', 'Difficulty in managing research data governance documentation', 7, 305);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (45, 'Research Dissem', 'Smart City Technologies: Urban Planning Innovations', to_date('29-02-2024', 'dd-mm-yyyy'), 'Implement peer review processes', 'Difficulty in securing ethical funding', 2, 258);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (46, 'Research Method', 'Renewable Resource Management Strategies Evaluation', to_date('16-06-2022', 'dd-mm-yyyy'), 'Encourage the use of ethical data practices in research', 'Difficulty in managing interdisciplinary research outputs', 4, 26);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (47, 'Research Integr', 'Online Education Platforms: Accessibility and Quality', to_date('10-04-2022', 'dd-mm-yyyy'), 'Promote the use of ethical data integration', 'Difficulty in managing data ethics boards', 10, 69);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (48, 'Research Impact', 'Social Justice Movements: Impact and Effectiveness', to_date('12-05-2023', 'dd-mm-yyyy'), 'Promote the use of ethical AI in research', 'Difficulty in addressing data ethics in research', 3, 39);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (49, 'Monthly Study R', 'Sustainable Transportation Solutions Assessment', to_date('03-03-2022', 'dd-mm-yyyy'), 'Encourage the use of cloud-based data solutions', 'Ethical issues in environmental research', 5, 62);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (50, 'Research Activi', 'Renewable Energy Role in Climate Change Mitigation', to_date('22-07-2023', 'dd-mm-yyyy'), 'Enhance the training of data ethics researchers', 'Limited opportunities for international research', 10, 7);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (51, 'Research Collab', 'AI Applications in Healthcare: Present and Future', to_date('05-02-2024', 'dd-mm-yyyy'), 'Increase focus on interdisciplinary studies', 'Ethical issues in environmental research', 10, 306);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (52, 'Study Documenta', 'Green Urban Planning Strategies: Case Studies', to_date('03-09-2022', 'dd-mm-yyyy'), 'Strengthen the role of research advisory boards', 'Difficulty in managing research grants', 8, 156);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (53, 'Research Qualit', 'Sustainable Agriculture Practices Adoption Evaluation', to_date('21-01-2023', 'dd-mm-yyyy'), 'Increase the use of ethical data governance practices in research', 'Challenges in obtaining reliable data', 7, 207);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (54, 'Study Results R', 'Evaluation of Renewable Energy Adoption in Developing Nations', to_date('04-03-2023', 'dd-mm-yyyy'), 'Promote the use of responsible digital research practices', 'Challenges in managing large-scale studies', 3, 366);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (55, 'Participant Ins', 'Digital Privacy Issues in an Era of Data Breaches', to_date('23-03-2022', 'dd-mm-yyyy'), 'Encourage the use of ethical data methodologies in research', 'Inadequate support for research innovation', 3, 60);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (56, 'Data Quality Re', 'Sustainable Fashion Industry Trends Analysis', to_date('18-01-2024', 'dd-mm-yyyy'), 'Encourage publication in high-impact journals', 'Difficulty in obtaining reliable research data', 5, 67);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (57, 'Research Ethics', 'Renewable Energy Role in Climate Change Mitigation', to_date('24-12-2022', 'dd-mm-yyyy'), 'Increase the use of digital health technologies', 'Difficulty in achieving research transparency', 9, 349);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (58, 'Research Insigh', 'Space Exploration Technologies: Future Prospects', to_date('23-07-2023', 'dd-mm-yyyy'), 'Improve the transparency of ethical data governance methodologies', 'Inconsistent research data ethics documentation standards', 10, 339);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (59, 'Research Plan S', 'Sustainable Development Goals Progress Evaluation', to_date('14-12-2023', 'dd-mm-yyyy'), 'Enhance the role of data stewards', 'Limited funding for interdisciplinary research', 2, 255);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (60, 'Monthly Study R', 'Social Media Influence on Interpersonal Relationships', to_date('30-05-2023', 'dd-mm-yyyy'), 'Develop policies for responsible data use in research', 'Limited access to research resources', 7, 368);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (61, 'Research Ethics', 'Urbanization Trends and Smart City Initiatives', to_date('20-07-2022', 'dd-mm-yyyy'), 'Facilitate knowledge transfer between researchers', 'Difficulty in managing research ethics documentation', 4, 46);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (62, 'Research Insigh', 'AI Applications in Human Resources: Opportunities', to_date('26-01-2023', 'dd-mm-yyyy'), 'Ensure adequate resources for all projects', 'Difficulty in managing data governance practices', 2, 312);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (63, 'Research Plan R', 'Alternative Medicine Adoption and Efficacy Analysis', to_date('18-04-2023', 'dd-mm-yyyy'), 'Promote the use of open access repositories', 'Limited access to research collaboration tools', 2, 332);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (64, 'Participant Dat', 'Sustainable Packaging Solutions Evaluation', to_date('13-06-2023', 'dd-mm-yyyy'), 'Increase investment in ethical data science practices', 'Inconsistent support for research dissemination', 8, 177);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (65, 'Research Strate', 'AI Applications in Human Resources: Opportunities', to_date('18-07-2023', 'dd-mm-yyyy'), 'Develop strategies for ethical data science in research', 'Limited infrastructure for data storage', 4, 258);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (66, 'Research Comple', 'AI in Transportation: Enhancing Safety and Efficiency', to_date('07-06-2022', 'dd-mm-yyyy'), 'Develop policies for intellectual property management', 'Ethical issues in digital data', 2, 191);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (67, 'Participant Rec', 'Urban Planning Policies\'' Socioeconomic Impacts', to_date('05-08-2022', 'dd-mm-yyyy'), 'Promote gender and diversity inclusion', 'Difficulty in achieving research data governance standards', 4, 91);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (68, 'Study Feasibili', 'Green Urban Planning Strategies: Case Studies', to_date('12-09-2023', 'dd-mm-yyyy'), 'Develop clear policies for research integrity', 'Difficulty in securing ethical approvals', 4, 247);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (69, 'Funding Utiliza', 'Corporate Responsibility: Environmental Sustainability Programs', to_date('24-12-2023', 'dd-mm-yyyy'), 'Encourage the publication of negative results', 'Challenges in community-based research', 7, 378);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (70, 'Annual Performa', 'Corporate Responsibility: Environmental Sustainability Programs', to_date('21-01-2023', 'dd-mm-yyyy'), 'Promote the use of ethical research data', 'Limited focus on interdisciplinary impact', 3, 372);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (71, 'Study Performan', 'Online Education Platforms: Accessibility and Quality', to_date('11-01-2023', 'dd-mm-yyyy'), 'Improve the transparency of data-driven processes', 'Limited research dissemination channels', 8, 320);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (72, 'Research Govern', 'Effects of Social Isolation on Mental Well-being', to_date('17-03-2023', 'dd-mm-yyyy'), 'Increase investment in research infrastructure', 'Inconsistent research data governance practices', 10, 32);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (73, 'Study Analysis ', 'Diversity Dynamics: Cultural Integration in Multinationals', to_date('04-10-2022', 'dd-mm-yyyy'), 'Enhance the quality of data science', 'Difficulty in maintaining data integrity', 10, 136);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (74, 'Participant Eng', 'E-commerce Platforms: User Experience and Security', to_date('22-03-2024', 'dd-mm-yyyy'), 'Enhance communication channels within the team', 'Ethical issues in human subject research', 2, 349);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (75, 'Research Outcom', 'Social Media and Body Image Perception Analysis', to_date('04-04-2023', 'dd-mm-yyyy'), 'Increase investment in responsible data science', 'Ethical issues in digital data', 5, 214);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (76, 'Research Ethics', 'Comparative Study on Healthcare Systems Efficiency', to_date('14-08-2023', 'dd-mm-yyyy'), 'Improve transparency in reporting findings', 'Challenges in achieving data ethics reliability', 5, 185);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (77, 'Data Ethics Rep', 'Green Urban Planning Strategies: Case Studies', to_date('17-12-2023', 'dd-mm-yyyy'), 'Regularly update research methodologies', 'Limited access to research funding', 6, 245);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (78, 'Data Privacy Im', 'Urban Heat Island Phenomenon Analysis', to_date('02-03-2024', 'dd-mm-yyyy'), 'Increase focus on the societal impact of research', 'Difficulty in addressing research ethics concerns', 6, 80);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (79, 'Annual Research', 'Social Media Influencers Impact on Consumer Behavior', to_date('21-08-2022', 'dd-mm-yyyy'), 'Enhance the training of data science professionals', 'Difficulty in addressing data ethics in research', 7, 102);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (80, 'Participant Dat', 'Effects of Social Isolation on Mental Well-being', to_date('24-06-2023', 'dd-mm-yyyy'), 'Develop policies for responsible authorship', 'Difficulty in securing research ethics approvals', 3, 81);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (81, 'Study Feasibili', 'Social Media Influence on Interpersonal Relationships', to_date('12-03-2024', 'dd-mm-yyyy'), 'Increase focus on the reproducibility of data', 'Challenges in achieving research data consistency', 3, 125);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (82, 'Study Ethics Re', 'Renewable Energy Policy Instruments Evaluation', to_date('22-06-2023', 'dd-mm-yyyy'), 'Develop policies for responsible data science governance methodologies', 'Limited funding for research training', 1, 155);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (83, 'Participant Ret', 'Political Campaigns Social Media Influence Analysis', to_date('12-08-2023', 'dd-mm-yyyy'), 'Expand access to research databases', 'Difficulty in recruiting participants', 1, 75);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (84, 'Data Management', 'Cyberbullying Effects on Adolescent Mental Health', to_date('23-03-2024', 'dd-mm-yyyy'), 'Enhance the role of data governance ethics committees methodologies in research', 'Challenges in managing research integrity', 6, 33);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (85, 'Research Dissem', 'Digital Marketing Trends and Consumer Engagement', to_date('22-08-2022', 'dd-mm-yyyy'), 'Encourage the use of ethical data-driven methodologies', 'Inconsistent research data governance standards', 10, 388);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (86, 'Participant Ret', 'Alternative Medicine Adoption and Efficacy Analysis', to_date('30-05-2022', 'dd-mm-yyyy'), 'Promote the use of advanced data analytics', 'Limited research dissemination channels', 5, 85);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (87, 'Data Security S', 'Analysis of Climate Change Effects on Agricultural Productivity', to_date('26-08-2023', 'dd-mm-yyyy'), 'Promote the use of responsible data governance ethics methodologies in research', 'Limited focus on research data security', 2, 29);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (88, 'Study Coordinat', 'Supply Chain Disruptions: Causes and Recovery Strategies', to_date('07-12-2022', 'dd-mm-yyyy'), 'Promote the use of advanced data analytics', 'Difficulty in obtaining ethical data approvals', 3, 392);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (89, 'Research Budget', 'Remote Work Productivity and Team Collaboration Analysis', to_date('15-11-2023', 'dd-mm-yyyy'), 'Improve the quality of research data management', 'Difficulty in addressing ethical data governance', 4, 218);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (90, 'Research Method', 'Role of AI in Financial Market Prediction Models', to_date('08-01-2024', 'dd-mm-yyyy'), 'Enhance the quality of research publications', 'Difficulty in obtaining informed consent', 8, 153);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (91, 'Participant Saf', 'Urban Planning Policies\'' Socioeconomic Impacts', to_date('12-12-2023', 'dd-mm-yyyy'), 'Enhance the quality of research data governance', 'Difficulty in managing ethical dilemmas', 3, 328);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (92, 'Participant Eng', 'Cyberbullying Effects on Adolescent Mental Health', to_date('20-02-2023', 'dd-mm-yyyy'), 'Increase focus on research sustainability', 'Difficulty in managing research integrity', 6, 205);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (93, 'Data Collection', 'Wildlife Conservation Efforts and Biodiversity Preservation', to_date('10-08-2023', 'dd-mm-yyyy'), 'Encourage the publication of negative results', 'Challenges in achieving research accuracy', 10, 316);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (94, 'Study Logistics', 'Social Media Influence on Interpersonal Relationships', to_date('10-09-2023', 'dd-mm-yyyy'), 'Regularly update research methodologies', 'Barriers to open access publishing', 2, 355);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (95, 'Research Outcom', 'Mental Health Stigma Reduction Strategies Evaluation', to_date('19-04-2022', 'dd-mm-yyyy'), 'Encourage the use of blockchain in research', 'Ethical issues in data storage', 7, 386);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (96, 'Research Impact', 'AI Applications in Education: Challenges and Prospects', to_date('03-03-2023', 'dd-mm-yyyy'), 'Increase investment in research data platforms', 'Inadequate support for research innovation', 10, 221);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (97, 'Participant Ret', 'Renewable Energy Role in Climate Change Mitigation', to_date('16-07-2023', 'dd-mm-yyyy'), 'Increase the use of ethical data science methodologies', 'Limited access to research networks', 3, 155);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (98, 'Study Implement', 'Green Energy Solutions for Urban Development', to_date('20-04-2022', 'dd-mm-yyyy'), 'Improve the quality of research outputs', 'Difficulty in obtaining research approvals', 7, 60);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (99, 'Research Timeli', 'Gender Pay Gap: Causes and Solutions Analysis', to_date('11-06-2023', 'dd-mm-yyyy'), 'Increase focus on responsible research data practices', 'Limited opportunities for research innovation', 2, 193);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (100, 'Study Coordinat', 'Cybersecurity Awareness Programs Evaluation', to_date('17-02-2024', 'dd-mm-yyyy'), 'Enhance the role of research statisticians', 'Difficulty in securing ethical approvals', 4, 312);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (101, 'Data Collection', 'Green Urban Planning Strategies: Case Studies', to_date('11-02-2023', 'dd-mm-yyyy'), 'Develop a system for research performance evaluation', 'Pressure to publish frequently', 7, 13);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (102, 'Research Challe', 'Alternative Medicine Adoption and Efficacy Analysis', to_date('13-04-2023', 'dd-mm-yyyy'), 'Encourage open peer review', 'Difficulty in managing data ethics documentation', 10, 120);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (103, 'Research Contin', 'Technology Role in Financial Inclusion', to_date('15-05-2023', 'dd-mm-yyyy'), 'Increase focus on responsible data innovation', 'Difficulty in addressing data ethics in research', 10, 268);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (104, 'Study Implement', 'Sustainable Transportation Solutions Assessment', to_date('30-12-2022', 'dd-mm-yyyy'), 'Develop a system for research performance evaluation', 'Limited access to research funding sources', 10, 308);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (105, 'Study Metrics S', 'Smart City Technologies: Urban Planning Innovations', to_date('04-08-2023', 'dd-mm-yyyy'), 'Promote the use of ethical research data', 'Challenges in interdisciplinary research', 1, 330);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (106, 'Study Design Re', 'Cybersecurity Awareness Programs Evaluation', to_date('19-10-2022', 'dd-mm-yyyy'), 'Increase focus on responsible data governance ethics methodologies in research', 'Limited mentorship for junior researchers', 2, 67);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (107, 'Study Design Re', 'Online Shopping Habits and Consumer Preferences', to_date('04-11-2023', 'dd-mm-yyyy'), 'Develop strategies for ethical data science', 'Challenges in integrating interdisciplinary approaches', 1, 58);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (108, 'Research Eviden', 'Social Media Influencers Impact on Consumer Behavior', to_date('21-02-2022', 'dd-mm-yyyy'), 'Encourage the use of advanced ethical research data practices', 'Difficulty in addressing data ethics compliance', 7, 111);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (109, 'Research Collab', 'Effects of Exercise Programs on Aging Population', to_date('20-05-2022', 'dd-mm-yyyy'), 'Enhance the role of data governance ethics committees methodologies in research', 'Ethical concerns in data collection', 8, 257);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (110, 'Research Eviden', 'Digital Marketing Trends and Consumer Engagement', to_date('04-04-2022', 'dd-mm-yyyy'), 'Enhance the quality of data science', 'Limited research dissemination channels', 7, 325);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (111, 'Participant Exp', 'Renewable Energy Policies Socioeconomic Impacts', to_date('23-10-2022', 'dd-mm-yyyy'), 'Promote the use of responsible data governance practices in research', 'Difficulty in addressing data governance compliance', 3, 93);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (112, 'Research Qualit', 'Financial Markets Volatility Analysis and Prediction', to_date('06-05-2024', 'dd-mm-yyyy'), 'Encourage interdisciplinary collaboration', 'Challenges in managing large-scale studies', 3, 284);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (113, 'Participant Eng', 'Sustainable Development Goals Progress Evaluation', to_date('04-03-2022', 'dd-mm-yyyy'), 'Develop strategies for data-driven insights', 'Limited focus on data ethics in governance', 2, 134);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (114, 'Research Docume', 'Cybersecurity Threat Landscape in Financial Institutions', to_date('12-11-2022', 'dd-mm-yyyy'), 'Promote best practices in data sharing', 'Ethical concerns in participant data use', 3, 261);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (115, 'Data Utilizatio', 'Online Learning Platforms Effectiveness Assessment', to_date('06-08-2023', 'dd-mm-yyyy'), 'Develop clear policies for research integrity', 'Difficulty in achieving data accuracy', 9, 90);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (116, 'Study Execution', 'Remote Work Productivity and Team Collaboration Analysis', to_date('25-01-2024', 'dd-mm-yyyy'), 'Enhance the role of research auditors', 'Limited opportunities for research innovation', 4, 384);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (117, 'Research Proces', 'Social Media Influencers Impact on Consumer Behavior', to_date('11-05-2024', 'dd-mm-yyyy'), 'Increase investment in responsible data science', 'Inconsistent standards for research data', 4, 377);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (313, 'Participant Dat', 'Gender Equality Initiatives in Corporate Environments', to_date('20-09-2023', 'dd-mm-yyyy'), 'Enhance the reproducibility of research findings', 'Challenges in securing long-term funding', 9, 71);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (314, 'Study Monitorin', 'Online Learning Platforms Effectiveness Assessment', to_date('15-02-2022', 'dd-mm-yyyy'), 'Strengthen the impact of research on policy', 'Difficulty in integrating research technologies', 7, 96);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (315, 'Research Plan R', 'Video Games Impact on Cognitive Skills Analysis', to_date('01-01-2024', 'dd-mm-yyyy'), 'Develop a robust system for data archiving', 'Difficulty in addressing data ethics in governance', 4, 366);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (316, 'Research Evalua', 'Small Business Resilience Amid Economic Fluctuations', to_date('24-06-2023', 'dd-mm-yyyy'), 'Enhance the training of data ethics researchers', 'Difficulty in achieving research transparency', 3, 348);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (317, 'Study Review Re', 'Workplace Stress Factors Identification and Management', to_date('29-12-2022', 'dd-mm-yyyy'), 'Enhance the training of data science professionals', 'Difficulty in integrating research data', 3, 268);
commit;
prompt 200 records committed...
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (318, 'Research Achiev', 'Online Shopping Habits and Consumer Preferences', to_date('21-06-2023', 'dd-mm-yyyy'), 'Develop strategies for ethical research data', 'Difficulty in addressing research ethics concerns', 4, 287);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (319, 'Study Performan', 'Climate Change Impacts on Global Biodiversity', to_date('31-07-2022', 'dd-mm-yyyy'), 'Improve the reproducibility of scientific research', 'Difficulty in integrating research data', 3, 202);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (320, 'Research Integr', 'Blockchain Technology in Supply Chain Management', to_date('10-03-2024', 'dd-mm-yyyy'), 'Increase focus on responsible research data practices', 'Difficulty in managing interdisciplinary data governance ethics', 10, 277);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (321, 'Research Develo', 'Renewable Energy Policies Socioeconomic Impacts', to_date('18-06-2023', 'dd-mm-yyyy'), 'Strengthen the role of ethics committees', 'Difficulty in maintaining data integrity', 10, 333);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (322, 'Research Timeli', 'Food Waste Reduction Strategies: Best Practices', to_date('06-12-2022', 'dd-mm-yyyy'), 'Increase focus on ethical data governance in research', 'Inconsistent support for research innovation', 9, 110);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (323, 'Study Performan', 'Air Pollution Control Measures\'' Effectiveness', to_date('18-08-2022', 'dd-mm-yyyy'), 'Enhance the training of data governance methodologies professionals in research', 'Challenges in managing research dissemination', 10, 158);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (324, 'Research Method', 'Climate Change Impacts on Global Biodiversity', to_date('23-08-2022', 'dd-mm-yyyy'), 'Increase focus on data ethics in research', 'Difficulty in managing research dissemination', 8, 96);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (325, 'Study Performan', 'Social Justice Movements: Impact and Effectiveness', to_date('18-06-2022', 'dd-mm-yyyy'), 'Increase focus on responsible data usage', 'Inadequate support for grant writing', 9, 30);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (326, 'Participant Rec', 'Sustainable Tourism Initiatives: Lessons Learned', to_date('23-04-2024', 'dd-mm-yyyy'), 'Encourage the use of real-world data', 'Difficulty in addressing research data privacy', 5, 225);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (327, 'Participant Exp', 'Mental Health Stigma Reduction Strategies Evaluation', to_date('06-05-2023', 'dd-mm-yyyy'), 'Improve the transparency of ethical data governance methodologies', 'Inconsistent research data governance practices', 7, 313);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (328, 'Research Timeli', 'Green Energy Solutions for Urban Development', to_date('29-06-2023', 'dd-mm-yyyy'), 'Promote the use of open data', 'Inconsistent support for research innovation', 1, 42);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (329, 'Research Synops', 'Water Pollution Prevention and Control Strategies', to_date('04-08-2022', 'dd-mm-yyyy'), 'Promote the use of responsible data governance ethics in research methodologies', 'Difficulty in ensuring research transparency', 7, 364);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (330, 'Study Metrics S', 'Cybersecurity Threat Landscape in Financial Institutions', to_date('27-10-2023', 'dd-mm-yyyy'), 'Develop partnerships with industry', 'Barriers to open access publishing', 6, 160);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (331, 'Study Coordinat', 'Renewable Energy Investments: Opportunities and Risks', to_date('07-05-2024', 'dd-mm-yyyy'), 'Increase awareness of ethical research practices', 'Ethical issues in participant data governance', 1, 24);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (332, 'Research Plan R', 'Blockchain Technology in Supply Chain Management', to_date('16-05-2024', 'dd-mm-yyyy'), 'Promote open access publishing', 'Complex intellectual property issues', 3, 34);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (333, 'Study Review Su', 'Gender Pay Gap: Causes and Solutions Analysis', to_date('01-02-2024', 'dd-mm-yyyy'), 'Enhance the role of data governance ethics committees in research', 'Difficulty in achieving research reliability', 1, 246);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (334, 'Participant Eng', 'Artificial Sweeteners Health Implications Analysis', to_date('18-10-2022', 'dd-mm-yyyy'), 'Develop clear research protocols', 'Challenges in achieving data ethics integration', 8, 3);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (335, 'Study Completio', 'Cross-Cultural Communication Challenges and Solutions', to_date('13-01-2023', 'dd-mm-yyyy'), 'Encourage the use of ethical AI in digital research', 'Limited focus on policy impact', 5, 67);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (336, 'Study Documenta', 'Food Waste Reduction Strategies: Best Practices', to_date('18-01-2023', 'dd-mm-yyyy'), 'Develop strategies for effective communication', 'Difficulty in addressing data privacy issues', 4, 121);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (337, 'Study Review Su', 'Global Trade Patterns and Economic Integration', to_date('30-05-2024', 'dd-mm-yyyy'), 'Conduct regular training sessions for staff', 'Challenges in interdisciplinary communication', 3, 249);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (338, 'Research Timeli', 'Telemedicine Services Adoption: Challenges and Benefits', to_date('15-05-2023', 'dd-mm-yyyy'), 'Increase focus on research data standards', 'Inconsistent support for research collaboration', 8, 92);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (339, 'Funding Utiliza', 'Disaster Management Preparedness and Response Analysis', to_date('17-02-2023', 'dd-mm-yyyy'), 'Promote the use of responsible AI in data-driven research', 'Barriers to adopting new technologies', 10, 294);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (340, 'Study Performan', 'AI Applications in Human Resources: Opportunities', to_date('17-02-2024', 'dd-mm-yyyy'), 'Increase the use of digital health technologies', 'Difficulty in managing research ethics', 3, 22);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (341, 'Data Utilizatio', 'Social Media Role in Democratic Processes', to_date('07-08-2023', 'dd-mm-yyyy'), 'Develop guidelines for ethical data use', 'Ethical concerns in pharmaceutical research', 7, 312);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (342, 'Study Coordinat', 'Human Rights Violations in Conflict Zones Analysis', to_date('17-12-2022', 'dd-mm-yyyy'), 'Enhance the quality of research methodologies', 'Limited research dissemination channels', 9, 34);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (343, 'Participant Saf', 'Renewable Energy Policy Instruments Evaluation', to_date('08-03-2023', 'dd-mm-yyyy'), 'Promote the use of systematic reviews', 'Limited access to high-impact journals', 2, 303);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (344, 'Research Evalua', 'Cybersecurity Threat Landscape in Financial Institutions', to_date('12-12-2022', 'dd-mm-yyyy'), 'Increase focus on responsible data science governance methodologies', 'Difficulty in managing research outputs dissemination', 9, 355);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (345, 'Data Standards ', 'Green Building Technologies: Sustainable Architecture', to_date('03-06-2022', 'dd-mm-yyyy'), 'Encourage the use of ethical data governance ethics in research', 'Challenges in achieving data reliability', 2, 351);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (346, 'Study Design Re', 'Smart Grid Technologies: Advancements and Challenges', to_date('24-02-2024', 'dd-mm-yyyy'), 'Utilize feedback for continuous improvement', 'Challenges in managing interdisciplinary teams', 5, 78);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (347, 'Research Report', 'Renewable Resource Management Strategies Evaluation', to_date('06-03-2024', 'dd-mm-yyyy'), 'Enhance the quality of research data', 'Difficulty in achieving data governance ethics compliance', 8, 321);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (348, 'Study Performan', 'Workplace Stress Factors Identification and Management', to_date('06-05-2024', 'dd-mm-yyyy'), 'Strengthen interdisciplinary research', 'Ethical concerns in research data governance', 1, 213);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (349, 'Participant Fee', 'Climate Change Impacts on Global Biodiversity', to_date('30-09-2022', 'dd-mm-yyyy'), 'Promote the use of evidence-based practices', 'Ethical concerns in data governance practices', 2, 22);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (350, 'Research Qualit', 'Supply Chain Disruptions: Causes and Recovery Strategies', to_date('16-10-2023', 'dd-mm-yyyy'), 'Develop policies for responsible data governance in research', 'Difficulty in achieving research continuity', 9, 380);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (196, 'Study Execution', 'Social Media Influence on Interpersonal Relationships', to_date('13-06-2023', 'dd-mm-yyyy'), 'Conduct regular training sessions for staff', 'Difficulty in achieving interdisciplinary synergy', 8, 135);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (197, 'Data Protection', 'Online Shopping Habits and Consumer Preferences', to_date('26-01-2022', 'dd-mm-yyyy'), 'Develop strategies for effective communication', 'Challenges in managing research data governance', 9, 75);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (198, 'Research Govern', 'AI in Transportation: Enhancing Safety and Efficiency', to_date('26-01-2023', 'dd-mm-yyyy'), 'Increase the use of ethical data-driven research', 'Difficulty in addressing data governance compliance', 7, 139);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (199, 'Research Partne', 'Green Urban Planning Strategies: Case Studies', to_date('14-02-2022', 'dd-mm-yyyy'), 'Develop policies for responsible data methodologies in research', 'Inconsistent support for research innovation', 3, 45);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (200, 'Research Execut', 'Online Shopping Habits and Consumer Preferences', to_date('14-05-2022', 'dd-mm-yyyy'), 'Enhance the role of research auditors', 'Difficulty in achieving data governance interoperability', 5, 232);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (201, 'Research Activi', 'Air Pollution Control Measures\'' Effectiveness', to_date('03-03-2023', 'dd-mm-yyyy'), 'Increase investment in responsible data science', 'Barriers to accessing participant data', 1, 257);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (202, 'Research Impact', 'Financial Markets Volatility Analysis and Prediction', to_date('14-02-2022', 'dd-mm-yyyy'), 'Develop strategies for ethical data governance ethics methodologies practices', 'Challenges in achieving research data governance reliability', 8, 130);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (203, 'Research Proces', 'Technology Role in Financial Inclusion', to_date('28-10-2022', 'dd-mm-yyyy'), 'Increase investment in data science infrastructure', 'Difficulty in achieving research data governance integration', 4, 206);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (204, 'Research Execut', 'AI Applications in Education: Challenges and Prospects', to_date('19-03-2022', 'dd-mm-yyyy'), 'Ensure the reproducibility of research findings', 'Challenges in research dissemination', 8, 277);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (205, 'Study Implement', 'Gender Equality Initiatives in Corporate Environments', to_date('09-01-2023', 'dd-mm-yyyy'), 'Develop policies for ethical data science', 'Ethical issues in data storage', 9, 281);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (206, 'Research Eviden', 'Sustainable Packaging Solutions Evaluation', to_date('19-01-2024', 'dd-mm-yyyy'), 'Enhance the training of data governance professionals', 'Difficulty in managing research ethics compliance', 9, 136);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (207, 'Research Contin', 'Social Media and Body Image Perception Analysis', to_date('04-11-2022', 'dd-mm-yyyy'), 'Promote ethical research practices', 'Ethical issues in participant consent', 4, 391);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (208, 'Research Strate', 'Workplace Stress Factors Identification and Management', to_date('17-10-2023', 'dd-mm-yyyy'), 'Improve the reproducibility of computational research', 'Ethical issues in genetic data', 10, 17);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (209, 'Study Analysis ', 'Online Shopping Habits and Consumer Preferences', to_date('29-10-2022', 'dd-mm-yyyy'), 'Develop strategies for effective grant management', 'Inconsistent research data standards', 2, 231);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (210, 'Community Engag', 'Financial Markets Volatility Analysis and Prediction', to_date('15-10-2023', 'dd-mm-yyyy'), 'Increase funding for research projects', 'Inconsistent research funding', 4, 157);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (211, 'Data Trends Sum', 'Healthcare Accessibility in Underserved Areas', to_date('10-10-2022', 'dd-mm-yyyy'), 'Improve the transparency of research methodologies', 'Ethical dilemmas in study design', 7, 161);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (212, 'Study Results R', 'Analysis of Food Security Policies\'' Effectiveness', to_date('26-04-2024', 'dd-mm-yyyy'), 'Develop strategies for open science', 'Challenges in community-based research', 10, 308);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (213, 'Study Monitorin', 'Cybersecurity Threat Landscape in Financial Institutions', to_date('29-11-2023', 'dd-mm-yyyy'), 'Strengthen the role of ethics committees', 'Difficulty in managing data ethics documentation', 5, 271);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (214, 'Research Findin', 'Smart City Technologies: Urban Planning Innovations', to_date('24-03-2022', 'dd-mm-yyyy'), 'Improve the reproducibility of responsible data governance practices', 'Ethical issues in behavioral research', 10, 91);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (215, 'Participant Exp', 'Big Data Utilization in Enhancing Healthcare Services', to_date('19-12-2022', 'dd-mm-yyyy'), 'Increase focus on the reproducibility of data', 'Barriers to adopting new technologies', 10, 49);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (216, 'Study Feasibili', 'E-commerce Platforms: User Experience and Security', to_date('18-08-2022', 'dd-mm-yyyy'), 'Enhance the quality of data governance ethics methodologies in research', 'Difficulty in retaining participants', 9, 70);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (217, 'Research Policy', 'Remote Work Productivity and Team Collaboration Analysis', to_date('14-06-2023', 'dd-mm-yyyy'), 'Promote the use of responsible data methodologies in research', 'Challenges in achieving research accuracy', 7, 238);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (218, 'Research Ethics', 'Urban Planning Policies\'' Socioeconomic Impacts', to_date('01-01-2023', 'dd-mm-yyyy'), 'Develop a framework for responsible research conduct', 'Difficulty in achieving interdisciplinary synergy', 3, 341);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (219, 'Research Execut', 'Online Education Platforms: Accessibility and Quality', to_date('23-03-2023', 'dd-mm-yyyy'), 'Enhance the role of data governance ethics committees methodologies in research', 'Limited focus on interdisciplinary research ethics', 4, 137);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (220, 'Research Data M', 'Sustainable Packaging Solutions Evaluation', to_date('08-05-2024', 'dd-mm-yyyy'), 'Increase the use of digital tools in research', 'Limited opportunities for data ethics collaboration', 9, 213);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (221, 'Study Performan', 'Air Pollution Control Measures\'' Effectiveness', to_date('06-03-2023', 'dd-mm-yyyy'), 'Encourage interdisciplinary collaboration', 'Difficulty in addressing data biases', 9, 198);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (222, 'Study Analysis ', 'Technology Role in Financial Inclusion', to_date('09-04-2024', 'dd-mm-yyyy'), 'Improve strategies for participant retention', 'Challenges in obtaining reliable measurements', 10, 121);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (223, 'Participant Fee', 'Video Games Impact on Cognitive Skills Analysis', to_date('04-06-2022', 'dd-mm-yyyy'), 'Increase the use of digital tools in research', 'Inconsistent support for research methodologies', 2, 357);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (224, 'Data Management', 'Environmental Conservation EffortImpact Assessment', to_date('14-05-2023', 'dd-mm-yyyy'), 'Increase focus on ethical research data practices', 'Ethical concerns in data governance practices', 2, 97);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (225, 'Research Execut', 'Noise Pollution Effects on Wildlife Habitats Analysis', to_date('03-08-2022', 'dd-mm-yyyy'), 'Enhance the quality of data-driven decision making', 'Complexity in interdisciplinary research design', 10, 314);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (226, 'Research Qualit', 'Comparative Study on Healthcare Systems Efficiency', to_date('11-03-2023', 'dd-mm-yyyy'), 'Enhance communication channels within the team', 'Difficulty in achieving data governance ethics compliance', 7, 277);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (227, 'Data Security S', 'AI Applications in Education: Challenges and Prospects', to_date('07-04-2022', 'dd-mm-yyyy'), 'Develop policies for responsible data governance methodologies', 'Inconsistent support for data ethics review', 4, 319);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (228, 'Study Coordinat', 'Supply Chain Disruptions: Causes and Recovery Strategies', to_date('10-06-2023', 'dd-mm-yyyy'), 'Adopt best practices for data management', 'Difficulty in managing ethical review processes', 4, 229);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (229, 'Study Review Su', 'Air Quality Index and Public Health Implications', to_date('27-01-2024', 'dd-mm-yyyy'), 'Enhance the role of research ethics committees', 'Limited focus on research translation', 9, 96);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (230, 'Research Challe', 'Sustainable Transportation Solutions Assessment', to_date('19-05-2022', 'dd-mm-yyyy'), 'Enhance the role of research coordinators', 'Inefficient peer review processes', 6, 363);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (231, 'Participant Fee', 'Technological Advancements in Education Ecosystems', to_date('20-02-2023', 'dd-mm-yyyy'), 'Improve recruitment processes for researchers', 'Difficulty in managing data governance review', 5, 182);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (232, 'Data Privacy Im', 'Social Media Influence on Interpersonal Relationships', to_date('20-01-2022', 'dd-mm-yyyy'), 'Enhance the role of data governance ethics methodologies practices in research', 'Inconsistent reporting standards', 5, 147);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (233, 'Study Findings ', 'Corporate Responsibility: Environmental Sustainability Programs', to_date('18-07-2022', 'dd-mm-yyyy'), 'Increase the use of AI in research', 'Difficulty in achieving research data governance integration', 7, 364);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (234, 'Participant Dat', 'Cybersecurity Threat Landscape Analysis', to_date('13-07-2023', 'dd-mm-yyyy'), 'Ensure compliance with regulatory requirements', 'Limited focus on societal impact', 3, 196);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (235, 'Data Analysis T', 'Environmental Conservation EffortImpact Assessment', to_date('06-06-2022', 'dd-mm-yyyy'), 'Encourage the use of blockchain in research', 'Difficulty in managing research ethics compliance', 10, 168);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (236, 'Study Logistics', 'Analysis of Climate Change Effects on Agricultural Productivity', to_date('30-11-2023', 'dd-mm-yyyy'), 'Increase investment in ethical data science practices', 'Ethical issues in clinical research data', 4, 208);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (237, 'Annual Data Sum', 'Role of Robotics in Enhancing Manufacturing Efficiency', to_date('27-10-2022', 'dd-mm-yyyy'), 'Enhance the quality of data science practices in research', 'Limited access to research equipment', 4, 212);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (238, 'Research Execut', 'Effects of Exercise Programs on Aging Population', to_date('07-10-2022', 'dd-mm-yyyy'), 'Increase investment in responsible data science', 'Challenges in interdisciplinary research', 8, 233);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (239, 'Research Develo', 'Renewable Energy Policy Instruments Evaluation', to_date('14-09-2023', 'dd-mm-yyyy'), 'Improve the transparency of responsible data methodologies', 'Difficulty in integrating research technologies', 9, 23);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (240, 'Research Metric', 'Cybersecurity Threat Landscape in Financial Institutions', to_date('10-04-2024', 'dd-mm-yyyy'), 'Improve the reproducibility of ethical research', 'Difficulty in managing multiple projects', 1, 28);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (241, 'Study Design Su', 'Cybersecurity Threat Landscape Analysis', to_date('27-03-2022', 'dd-mm-yyyy'), 'Improve the reproducibility of scientific research', 'Difficulty in obtaining high-quality data', 7, 100);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (242, 'Research Govern', 'Workplace Diversity Initiatives Impact Assessment', to_date('01-02-2023', 'dd-mm-yyyy'), 'Expand research teams as necessary', 'Inconsistent support for research data governance compliance', 6, 384);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (243, 'Research Dissem', 'Sustainable Fashion Industry Trends Analysis', to_date('09-06-2022', 'dd-mm-yyyy'), 'Conduct regular training sessions for staff', 'Lack of access to advanced research tools', 8, 240);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (244, 'Research Plan R', 'Technology Role in Financial Inclusion', to_date('11-07-2023', 'dd-mm-yyyy'), 'Increase focus on ethical research data practices', 'Inconsistent training for research staff', 10, 86);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (245, 'Study Findings ', 'Artificial Sweeteners Health Implications Analysis', to_date('13-04-2022', 'dd-mm-yyyy'), 'Enhance the quality of research data governance', 'Difficulty in managing research ethics review', 8, 352);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (246, 'Research Policy', 'Online Shopping Habits and Consumer Preferences', to_date('22-03-2024', 'dd-mm-yyyy'), 'Develop strategies for effective communication', 'Difficulty in integrating research technologies', 10, 213);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (247, 'Research Evalua', 'Assessment of Pollution Impact on Urban Wildlife Habitats', to_date('16-11-2023', 'dd-mm-yyyy'), 'Enhance the quality of digital data platforms', 'Ethical issues in environmental research', 5, 142);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (248, 'Research Method', 'AI in Transportation: Enhancing Safety and Efficiency', to_date('16-01-2024', 'dd-mm-yyyy'), 'Increase awareness of ethical research practices', 'Difficulty in obtaining accurate data', 1, 247);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (249, 'Data Standards ', 'Air Quality Index and Public Health Implications', to_date('24-06-2022', 'dd-mm-yyyy'), 'Utilize technology for better data management', 'Challenges in managing research data governance ethics', 2, 4);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (250, 'Research Evalua', 'Cybersecurity Threat Landscape in Financial Institutions', to_date('14-04-2023', 'dd-mm-yyyy'), 'Encourage publication in high-impact journals', 'Challenges in integrating research methodologies', 5, 335);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (251, 'Data Collection', 'Mental Health Support Systems Evaluation', to_date('28-07-2023', 'dd-mm-yyyy'), 'Improve strategies for participant retention', 'Difficulty in managing ethical dilemmas', 1, 32);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (252, 'Data Quality Re', 'Gender Equality Initiatives in Corporate Environments', to_date('08-09-2023', 'dd-mm-yyyy'), 'Enhance the role of data stewards', 'Difficulty in achieving data governance interoperability', 6, 297);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (253, 'Research Qualit', 'Digital Privacy Issues in an Era of Data Breaches', to_date('25-10-2022', 'dd-mm-yyyy'), 'Increase the use of ethical data science methodologies', 'Limited opportunities for research data governance', 8, 260);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (254, 'Research Strate', 'Supply Chain Disruptions: Causes and Recovery Strategies', to_date('30-12-2023', 'dd-mm-yyyy'), 'Utilize social media for research dissemination', 'Limited access to high-quality datasets', 9, 163);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (255, 'Research Suppor', 'Social Media Marketing Strategies Evaluation', to_date('25-05-2024', 'dd-mm-yyyy'), 'Provide incentives for participant involvement', 'Difficulty in achieving research reliability', 2, 324);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (256, 'Study Documenta', 'Air Pollution Control Measures\'' Effectiveness', to_date('19-04-2023', 'dd-mm-yyyy'), 'Develop policies for responsible data methodologies in research', 'Challenges in maintaining research quality', 9, 79);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (257, 'Study Completio', 'Digital Privacy Issues in an Era of Data Breaches', to_date('23-12-2022', 'dd-mm-yyyy'), 'Enhance the training of research assistants', 'Limited focus on societal impact', 8, 117);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (258, 'Participant Rec', 'Small Business Resilience Amid Economic Fluctuations', to_date('25-11-2023', 'dd-mm-yyyy'), 'Promote the use of responsible data governance ethics methodologies practices in research', 'Limited opportunities for research mobility', 4, 20);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (259, 'Participant Exp', 'Remote Work Productivity and Team Collaboration Analysis', to_date('21-02-2024', 'dd-mm-yyyy'), 'Enhance the training of data ethics professionals in research', 'Limited opportunities for research data governance', 6, 250);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (260, 'Study Ethics Re', 'Environmental Conservation EffortImpact Assessment', to_date('15-10-2022', 'dd-mm-yyyy'), 'Increase funding for research projects', 'Difficulty in addressing research data governance ethics issues', 2, 93);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (261, 'Research Milest', 'AI in Customer Service: Enhancing User Experience', to_date('08-03-2024', 'dd-mm-yyyy'), 'Increase the use of ethical data governance ethics methodologies', 'Limited opportunities for research mobility', 7, 214);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (262, 'Research Strate', 'Global Warming Effects: Ecological Implications', to_date('29-05-2024', 'dd-mm-yyyy'), 'Improve the reproducibility of ethical research', 'Inconsistent data collection procedures', 4, 152);
commit;
prompt 300 records committed...
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (263, 'Research Strate', 'Noise Pollution Effects on Wildlife Habitats Analysis', to_date('19-02-2022', 'dd-mm-yyyy'), 'Improve the monitoring of research progress', 'Difficulty in addressing research data privacy', 5, 59);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (264, 'Project Complet', 'Diversity Dynamics: Cultural Integration in Multinationals', to_date('16-05-2024', 'dd-mm-yyyy'), 'Increase the use of ethical digital methodologies', 'Challenges in achieving research data integration', 4, 357);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (265, 'Study Completio', 'Renewable Resource Management Strategies Evaluation', to_date('28-01-2023', 'dd-mm-yyyy'), 'Encourage the use of digital twins in research', 'Limited funding for interdisciplinary research', 1, 253);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (266, 'Community Engag', 'Social Media Marketing Strategies Evaluation', to_date('21-03-2022', 'dd-mm-yyyy'), 'Encourage the use of ethical data governance ethics in research', 'Difficulty in achieving stakeholder engagement', 6, 83);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (267, 'Research Qualit', 'Economic Impact of Pandemics: Lessons from History', to_date('30-09-2023', 'dd-mm-yyyy'), 'Improve the reproducibility of data science governance practices in research', 'Ethical issues in genetic data', 6, 307);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (268, 'Data Standards ', 'Waste Management Innovations and Recycling Programs', to_date('17-07-2023', 'dd-mm-yyyy'), 'Encourage the use of cloud-based data solutions', 'Difficulty in achieving research transparency', 1, 202);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (269, 'Research Develo', 'Digital Marketing Trends and Consumer Engagement', to_date('19-12-2023', 'dd-mm-yyyy'), 'Promote gender and diversity inclusion', 'Ethical concerns in data use', 5, 260);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (270, 'Research Collab', 'AI Applications in Human Resources: Opportunities', to_date('06-05-2023', 'dd-mm-yyyy'), 'Enhance the training of data governance methodologies professionals in research', 'Difficulty in achieving data governance compliance', 8, 221);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (271, 'Study Results S', 'Adolescent Mental Health Trends: A Longitudinal Study', to_date('08-04-2022', 'dd-mm-yyyy'), 'Encourage interdisciplinary collaboration', 'Pressure to publish frequently', 10, 348);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (272, 'Research Insigh', 'Mental Health Support Systems Evaluation', to_date('14-01-2022', 'dd-mm-yyyy'), 'Promote the use of ethical data practices', 'Difficulty in engaging with policymakers', 4, 188);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (273, 'Research Method', 'Financial Literacy Programs  Impact on Society', to_date('21-11-2023', 'dd-mm-yyyy'), 'Increase focus on research translation', 'Inconsistent research methodologies support', 10, 35);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (274, 'Study Documenta', 'Waste Management Innovations and Recycling Programs', to_date('06-08-2022', 'dd-mm-yyyy'), 'Enhance the quality of data governance practices in research', 'Limited focus on translational research', 4, 171);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (275, 'Research Qualit', 'Cybersecurity Threat Landscape in Financial Institutions', to_date('13-11-2022', 'dd-mm-yyyy'), 'Develop policies for ethical data governance ethics methodologies', 'Challenges in managing research teams', 8, 235);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (276, 'Participant Fee', 'Financial Literacy Programs  Impact on Society', to_date('14-12-2022', 'dd-mm-yyyy'), 'Improve the reproducibility of data science governance practices in research', 'Limited access to research resources', 6, 210);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (277, 'Participant Fee', 'Green Building Technologies: Sustainable Architecture', to_date('28-02-2022', 'dd-mm-yyyy'), 'Improve the reproducibility of data governance in research', 'Challenges in managing research dissemination', 6, 53);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (278, 'Study Review Su', 'Fashion Industry Trends and Sustainability Practices', to_date('15-05-2022', 'dd-mm-yyyy'), 'Promote ethical research practices', 'Difficulty in achieving data security standards', 1, 268);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (279, 'Study Analysis ', 'Wildlife Conservation Efforts and Biodiversity Preservation', to_date('24-01-2024', 'dd-mm-yyyy'), 'Conduct regular training sessions for staff', 'Limited focus on interdisciplinary data ethics governance', 4, 332);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (280, 'Data Collection', 'Artificial Sweeteners Health Implications Analysis', to_date('10-01-2024', 'dd-mm-yyyy'), 'Encourage the use of ethical data-driven methodologies', 'Limited focus on interdisciplinary data ethics governance', 2, 395);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (281, 'Study Completio', 'Role of AI in Financial Market Prediction Models', to_date('07-02-2022', 'dd-mm-yyyy'), 'Increase the use of responsible data methodologies', 'Difficulty in achieving interdisciplinary collaboration', 10, 361);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (282, 'Participant Rec', 'Evaluation of Renewable Energy Adoption in Developing Nations', to_date('25-08-2022', 'dd-mm-yyyy'), 'Improve the quality of research outputs', 'Challenges in obtaining reliable data', 9, 173);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (283, 'Research Eviden', 'Role of Robotics in Enhancing Manufacturing Efficiency', to_date('12-08-2022', 'dd-mm-yyyy'), 'Enhance the role of research coordinators', 'Challenges in achieving research data privacy', 10, 240);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (284, 'Participant Ins', 'Social Media Role in Democratic Processes', to_date('11-08-2023', 'dd-mm-yyyy'), 'Develop strategies for interdisciplinary research', 'Difficulty in managing research ethics boards', 6, 256);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (285, 'Study Logistics', 'Green Building Technologies: Sustainable Architecture', to_date('03-05-2022', 'dd-mm-yyyy'), 'Enhance the role of data governance in research', 'Inconsistent research data ethics compliance', 2, 142);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (286, 'Research Govern', 'Renewable Energy Policies Socioeconomic Impacts', to_date('25-07-2023', 'dd-mm-yyyy'), 'Improve the transparency of research data usage', 'Inconsistent research data governance practices', 6, 55);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (287, 'Research Ethics', 'Sustainable Development Goals Progress Evaluation', to_date('20-09-2023', 'dd-mm-yyyy'), 'Provide resources for research dissemination', 'Ethical concerns in research data governance', 7, 356);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (288, 'Research Integr', 'Wildlife Conservation Efforts and Biodiversity Preservation', to_date('06-11-2022', 'dd-mm-yyyy'), 'Promote the use of ethical AI in research data practices', 'Difficulty in maintaining research collaborations', 1, 85);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (289, 'Research Report', 'Blockchain Technology in Supply Chain Management', to_date('26-01-2022', 'dd-mm-yyyy'), 'Enhance the role of data ethics committees', 'Challenges in integrating research findings', 10, 290);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (290, 'Study Recruitme', 'Air Pollution Control Measures\'' Effectiveness', to_date('22-04-2024', 'dd-mm-yyyy'), 'Enhance the quality of research infrastructure', 'Difficulty in managing interdisciplinary data governance ethics', 2, 397);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (291, 'Participant Dem', 'Climate Change Impacts on Global Biodiversity', to_date('10-03-2022', 'dd-mm-yyyy'), 'Encourage interdisciplinary collaboration', 'Ethical issues in genetic research', 9, 261);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (292, 'Participant Eng', 'Wildlife Conservation Efforts and Biodiversity Preservation', to_date('30-09-2022', 'dd-mm-yyyy'), 'Improve recruitment processes for researchers', 'Difficulty in addressing research ethics concerns', 10, 272);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (293, 'Research Innova', 'Healthcare Disparities: Access and Quality Assessment', to_date('17-01-2022', 'dd-mm-yyyy'), 'Encourage the development of interdisciplinary centers', 'Limited opportunities for research data ethics documentation', 10, 263);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (294, 'Research Activi', 'Gender Equality Initiatives in Corporate Environments', to_date('04-04-2022', 'dd-mm-yyyy'), 'Encourage the use of advanced research data platforms', 'Inefficient peer review processes', 1, 149);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (295, 'Monthly Study R', 'Air Pollution Control Measures\'' Effectiveness', to_date('06-03-2022', 'dd-mm-yyyy'), 'Promote the use of ethical AI in research data practices', 'Limited infrastructure for data storage', 3, 244);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (296, 'Annual Research', 'Online Education Platforms: Accessibility and Quality', to_date('06-09-2022', 'dd-mm-yyyy'), 'Enhance the role of research ethics committees', 'Inconsistent research data security standards', 8, 336);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (297, 'Data Management', 'Role of Robotics in Enhancing Manufacturing Efficiency', to_date('02-09-2022', 'dd-mm-yyyy'), 'Increase focus on research sustainability', 'Ethical concerns in participant data use', 1, 156);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (298, 'Data Quality Su', 'Urbanization Trends and Smart City Initiatives', to_date('14-12-2023', 'dd-mm-yyyy'), 'Regularly review progress against goals', 'Barriers to international collaboration', 1, 269);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (299, 'Study Documenta', 'Role of AI in Financial Market Prediction Models', to_date('07-10-2023', 'dd-mm-yyyy'), 'Increase focus on responsible data science governance methodologies', 'Inconsistent research data governance standards', 1, 373);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (300, 'Interdisciplina', 'Cybersecurity Awareness Programs Evaluation', to_date('14-08-2022', 'dd-mm-yyyy'), 'Provide resources for research dissemination', 'Inconsistent data validation methods', 4, 328);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (301, 'Research Effect', 'Social Media and Body Image Perception Analysis', to_date('30-11-2023', 'dd-mm-yyyy'), 'Promote the use of cloud computing in research', 'Difficulty in achieving research reliability', 1, 270);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (302, 'Research Activi', 'Political Campaigns Social Media Influence Analysis', to_date('03-04-2022', 'dd-mm-yyyy'), 'Develop strategies for effective data collaboration', 'Insufficient funding for research projects', 3, 177);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (303, 'Data Integrity ', 'Gender Equality Initiatives in Corporate Environments', to_date('04-06-2023', 'dd-mm-yyyy'), 'Promote best practices in data sharing', 'Difficulty in managing data governance practices', 1, 12);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (304, 'Research Govern', 'Financial Markets Volatility Analysis and Prediction', to_date('02-05-2022', 'dd-mm-yyyy'), 'Promote the use of ethical data integration', 'Limited focus on research sustainability', 3, 218);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (305, 'Research Docume', 'Financial Markets Volatility Analysis and Prediction', to_date('15-06-2022', 'dd-mm-yyyy'), 'Enhance the quality of research networks', 'Barriers to accessing participant data', 6, 108);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (306, 'Data Utilizatio', 'Healthcare Accessibility in Underserved Areas', to_date('21-07-2022', 'dd-mm-yyyy'), 'Promote the use of predictive analytics in research', 'Inadequate training for research assistants', 6, 352);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (307, 'Participant Eng', 'Big Data Utilization in Enhancing Healthcare Services', to_date('11-01-2023', 'dd-mm-yyyy'), 'Increase awareness of ethical research practices', 'Challenges in community engagement', 5, 400);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (308, 'Data Protection', 'Renewable Energy Policies Socioeconomic Impacts', to_date('02-07-2023', 'dd-mm-yyyy'), 'Promote the use of responsible AI in research data', 'Difficulty in managing research data ethics review', 8, 115);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (309, 'Data Management', 'Analysis of Food Security Policies\'' Effectiveness', to_date('17-12-2023', 'dd-mm-yyyy'), 'Enhance the role of research auditors', 'Limited focus on interdisciplinary research ethics', 5, 84);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (310, 'Research Challe', 'Effects of Social Isolation on Mental Well-being', to_date('05-11-2022', 'dd-mm-yyyy'), 'Promote the use of open data', 'Inconsistent research data governance practices', 8, 12);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (311, 'Research Execut', 'Sustainable Agriculture Practices Adoption Evaluation', to_date('19-04-2023', 'dd-mm-yyyy'), 'Provide clear guidelines for research conduct', 'Inconsistent support for data ethics documentation', 7, 193);
insert into REPORTS (reportid, reportname, rdescription, creationdate, recommendations, issueschallenges, studyid, researcherid)
values (312, 'Research Ethics', 'Sustainable Packaging Solutions Evaluation', to_date('28-04-2024', 'dd-mm-yyyy'), 'Enhance the quality of research data', 'Limited focus on societal impact', 5, 332);
commit;
prompt 350 records loaded
prompt Enabling foreign key constraints for PARTICIPANT...
alter table PARTICIPANT enable constraint SYS_C00712285;
prompt Enabling foreign key constraints for BLOODDONATION...
alter table BLOODDONATION enable constraint SYS_C00712302;
prompt Enabling foreign key constraints for CCONTAINING...
alter table CCONTAINING enable constraint SYS_C00712311;
alter table CCONTAINING enable constraint SYS_C00712312;
prompt Enabling foreign key constraints for CONDUCTS...
alter table CONDUCTS enable constraint SYS_C00712306;
alter table CONDUCTS enable constraint SYS_C00712307;
prompt Enabling foreign key constraints for REPORTS...
alter table REPORTS enable constraint SYS_C00712295;
alter table REPORTS enable constraint SYS_C00712296;
prompt Enabling triggers for SAMPLE...
alter table SAMPLE enable all triggers;
prompt Enabling triggers for PARTICIPANT...
alter table PARTICIPANT enable all triggers;
prompt Enabling triggers for BLOODDONATION...
alter table BLOODDONATION enable all triggers;
prompt Enabling triggers for STUDY...
alter table STUDY enable all triggers;
prompt Enabling triggers for CCONTAINING...
alter table CCONTAINING enable all triggers;
prompt Enabling triggers for RRESEARCHER...
alter table RRESEARCHER enable all triggers;
prompt Enabling triggers for CONDUCTS...
alter table CONDUCTS enable all triggers;
prompt Enabling triggers for REPORTS...
alter table REPORTS enable all triggers;

/* /home/laurence/3DLDF-3.0/database/astronmy.sql    */
/* Created by Laurence D. Finston (LDF) 2021.05.29.  */

create database Astronomy;

use Astronomy;



-- 
--

drop table Constellations;

create table Constellations
(
   rank_constellation int not null default 0,
   name varchar(64) not null default "",
   abbreviation varchar(16) not null default ""
);

insert ignore into Constellations (rank_constellation, abbreviation, name) values (1, "Hya", "Hydra");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (02, "Vir", "Virgo");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (03, "UMa", "Ursa");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (04, "Cet", "Cetus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (05, "Her", "Hercules");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (06, "Eri", "Eridanus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (07, "Peg", "Pegasus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (08, "Dra", "Draco");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (09, "Cen", "Centaurus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (10, "Aqr", "Aquarius");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (11, "Oph", "Ophiuchus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (12, "Leo", "Leo");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (13, "Boo", "Boötes");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (14, "Psc", "Pisces");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (15, "Sgr", "Sagittarius");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (16, "Cyg", "Cygnus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (17, "Tau", "Taurus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (18, "Cam", "Camelopardalis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (19, "And", "Andromeda");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (20, "Pup", "Puppis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (21, "Aur", "Auriga");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (22, "Aql", "Aquila");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (23, "Ser", "Serpens");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (24, "Per", "Perseus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (25, "Cas", "Cassiopeia");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (26, "Ori", "Orion");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (27, "Cep", "Cepheus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (28, "Lyn", "Lynx");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (29, "Lib", "Libra");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (30, "Gem", "Gemini");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (31, "Cnc", "Cancer");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (32, "Vel", "Vela");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (33, "Sco", "Scorpius");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (34, "Car", "Carina");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (35, "Mon", "Monoceros");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (36, "Scl", "Sculptor");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (37, "Phe", "Phoenix");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (38, "CVn", "Canes");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (39, "Ari", "Aries");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (40, "Cap", "Capricornus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (41, "For", "Fornax");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (42, "Com", "Coma");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (43, "CMa", "Canis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (44, "Pav", "Pavo");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (45, "Gru", "Grus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (46, "Lup", "Lupus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (47, "Sex", "Sextans");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (48, "Tuc", "Tucana");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (49, "Ind", "Indus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (50, "Oct", "Octans");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (51, "Lep", "Lepus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (52, "Lyr", "Lyra");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (53, "Crt", "Crater");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (54, "Col", "Columba");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (55, "Vul", "Vulpecula");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (56, "UMi", "Ursa");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (57, "Tel", "Telescopium");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (58, "Hor", "Horologium");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (59, "Pic", "Pictor");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (60, "PsA", "Piscis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (61, "Hyi", "Hydrus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (62, "Ant", "Antlia");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (63, "Ara", "Ara");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (64, "LMi", "Leo");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (65, "Pyx", "Pyxis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (66, "Mic", "Microscopium");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (67, "Aps", "Apus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (68, "Lac", "Lacerta");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (69, "Delete", "Delphinus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (70, "Crv", "Corvus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (71, "CMi", "Canis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (72, "Dor", "Dorado");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (73, "CrB", "Corona");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (74, "Nor", "Norma");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (75, "Men", "Mensa");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (76, "Vol", "Volans");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (77, "Mus", "Musca");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (78, "Tri", "Triangulum");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (79, "Cha", "Chamaeleon");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (80, "CrA", "Corona");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (81, "Cae", "Caelum");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (82, "Ret", "Reticulum");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (83, "TrA", "Triangulum");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (84, "Sct", "Scutum");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (85, "Cir", "Circinus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (86, "Sge", "Sagitta");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (87, "Equ", "Equuleus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (88, "Cru", "Crux");

select * from Constellations order by rank_constellation;

/* astronmy.sql    */
/* Created by Laurence D. Finston (LDF) 2021.05.29.  */

/* * (1) Copyright notice  */

/* This file is part of GNU 3DLDF, a package for three-dimensional drawing.  */
/* Copyright (C) 2021 The Free Software Foundation, Inc. */

/* GNU 3DLDF is free software; you can redistribute it and/or modify  */
/* it under the terms of the GNU General Public License as published by  */
/* the Free Software Foundation; either version 3 of the License, or  */
/* (at your option) any later version. */

/* GNU 3DLDF is distributed in the hope that it will be useful,  */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of  */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the  */
/* GNU General Public License for more details.  */

/* You should have received a copy of the GNU General Public License  */
/* along with GNU 3DLDF; if not, write to the Free Software  */
/* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA  */

/* GNU 3DLDF is a GNU package.   */
/* It is part of the GNU Project of the   */
/* Free Software Foundation  */
/* and is published under the GNU General Public License.  */
/* See the website http://www.gnu.org  */
/* for more information.    */
/* GNU 3DLDF is available for downloading from  */
/* http://www.gnu.org/software/3dldf/LDF.html.  */

/* Please send bug reports to Laurence.Finston@gmx.de */
/* The mailing list help-3dldf@gnu.org is available for people to  */
/* ask other users for help.   */
/* The mailing list info-3dldf@gnu.org is for sending  */
/* announcements to users. To subscribe to these mailing lists, send an  */
/* email with "subscribe <email-address>" as the subject.   */

/* The author can be contacted at:  */

/* Laurence D. Finston                   */
/* c/o Free Software Foundation, Inc.   */
/* 51 Franklin St, Fifth Floor           */
/* Boston, MA  02110-1301               */
/* USA                                   */

/* Laurence.Finston@gmx.de */


/* * (1)  */

use 3dldf;

/* ** (2) Create tables  */

-- create table XXX
-- (
--    abc int unique,

--    constraint unique(abc)

-- );


-- drop table XXX;
-- create table XXX
-- (
--    abc int not null default 1,
--    constraint unique(abc)
   
-- );

-- show columns from XXX;

/* *** (3) Stars  */

-- drop table Stars;

create table Stars
(
   common_name varchar(32) not null default "",
   greek_name varchar(32) not null default "",
   latin_name varchar(32) not null default "",
   arabic_name varchar(32) not null default "",
   flamsteed_designation_number int not null default 0,
   bayer_designation_greek_letter varchar(16) not null default "",
   bayer_designation_greek_letter_tex varchar(16) not null default "",	
   bayer_designation_extension varchar(16) not null default "",	
   bs_hr_number int not null default 0 unique,
   approx_rank_apparent_magnitude int not null default 0,
   apparent_magnitude float default null,
   apparent_magnitude_varies boolean not null default 0,
   absolute_magnitude float not null default 0,
   absolute_magnitude_varies boolean not null default 0,
   constellation_abbreviation char(3) not null default "",
   constellation_full_name varchar(32) not null default "",
   constellation_name_genitive varchar(64) not null default "",
   constellation_number int not null default 0,
   right_ascension_hours int not null default 0,
   right_ascension_minutes int not null default 0,
   right_ascension_seconds float not null default 0.0,
   right_ascension_decimal_hours float not null default 0.0,
   right_ascension_decimal_degrees float not null default 0.0,
   declination_degrees int not null default 0,
   declination_minutes int not null default 0,
   declination_seconds float not null default 0.0,
   declination_decimal_degrees float not null default 0.0,
   is_binary int not null default 0,
   is_multiple int not null default 0,
   is_binary_component int not null default 0,
   is_eclipsing_binary int not null default 0,
   notes varchar(1024) not null default ""
);

create table ttemp
(
   right_ascension time(4)
);

alter table Stars add column right_ascension_decimal_hours float not null default 0.0 after right_ascension_seconds;
alter table Stars add column declination_decimal_degrees float not null default 0.0 after declination_seconds;
alter table Stars add column constellation_number int not null default 0 after constellation_name_genitive;
alter table Stars add column constellation_name_genitive varchar(64) not null default "" after constellation_full_name;
alter table Stars add column approx_rank_apparent_magnitude int not null default 0 after bs_hr_number;
alter table Stars add column right_ascension_decimal_degrees float not null default 0.0 after right_ascension_decimal_hours;
alter table Stars add column right_ascension_decimal_hours float not null default 0.0 after right_ascension_seconds;
alter table Stars add column is_binary int not null default 0 after declination_decimal_degrees;
alter table Stars add column is_multiple int not null default 0 after is_binary;
alter table Stars add column is_binary_component int not null default 0 after is_multiple;
alter table Stars add column bayer_designation_extension varchar(16) not null default "" after bayer_designation_greek_letter;
alter table Stars add column notes varchar(1024) not null default "" after is_binary_component;
alter table Stars add column apparent_magnitude float not null default 1000 after approx_rank_apparent_magnitude;
-- alter table Stars drop column apparent_magnitude;
alter table Stars add column bayer_designation_greek_letter_tex varchar(16) not null default "" after bayer_designation_greek_letter;
alter table Stars add column apparent_magnitude_varies boolean not null default 0 after apparent_magnitude;
alter table Stars add column absolute_magnitude float not null default 0 after apparent_magnitude_varies;

   
alter table Stars add column absolute_magnitude_varies boolean not null default 0 after absolute_magnitude; 


alter table Stars add column is_eclipsing_binary int not null default 0 after is_binary_component;

/* !! START HERE:  LDF 2021.7.10.  */ 

11. Beta Centauri             Hadar             14 04 -60.4  311.8  +1.2  B1III         0.61  -5.42    6.21 0.56   530
12. Alpha Aquilae             Altair            19 51  +8.9   47.8  -9.0  A7V           0.77   2.21  194.44 0.94    17
13. Alpha Crucis              Acrux             12 27 -63.1  300.2  -0.4  B0.5IV+B1V    0.79  -4.17   10.17 0.67   320
14. Alpha Tauri               Aldebaran         04 36 +16.5  181.0 -20.2  K5III         0.86v -0.64v  50.09 0.95    65
15. Alpha Scorpii             Antares           16 29 -26.4  351.9 +15.1  M1Ib+B4V      0.95v -5.39v   5.40 1.68   600
16. Alpha Virginis            Spica             13 25 -11.2  316.1 +50.8  B1V+B2V       0.97  -3.56   12.44 0.86   260
17. Beta Geminorum            Pollux            07 45 +28.0  192.2 +23.3  K0III         1.14   1.07   96.74 0.87    34
18. Alpha Piscis Austrini     Fomalhaut         22 58 -29.6   20.6 -65.0  A3V           1.15   1.72  130.08 0.92    25
19. Alpha Cygni               Deneb             20 41 +45.3   84.3  +2.1  A2Ia          1.24  -8.74    1.01 0.57  3000
20. Beta Crucis               Mimosa            12 48 -59.7  302.5  +3.2  B0.5III       1.26  -3.91    9.25 0.61   350




alter table Stars remove constraint unique(bs_hr_number);

/* ** (2) */

select distinct bayer_designation_greek_letter from Stars where bayer_designation_greek_letter
like("%^%") order by bayer_designation_greek_letter;

update Stars set bayer_designation_greek_letter_tex = "$\\alpha$" where bayer_designation_greek_letter = "alpha";

update Stars set bayer_designation_greek_letter_tex = "$\\alpha^{1}$" where bayer_designation_greek_letter = "alpha^1";

update Stars set bayer_designation_greek_letter_tex = "$\\alpha^{2}$" where bayer_designation_greek_letter = "alpha^2";

update Stars set bayer_designation_greek_letter_tex = "$\\beta$" where bayer_designation_greek_letter = "beta";

update Stars set bayer_designation_greek_letter_tex = "$\\beta^{1}$" where bayer_designation_greek_letter = "beta^1";

update Stars set bayer_designation_greek_letter_tex = "$\\beta^{2}$" where bayer_designation_greek_letter = "beta^2";

update Stars set bayer_designation_greek_letter_tex = "$\\chi$" where bayer_designation_greek_letter = "chi";

update Stars set bayer_designation_greek_letter_tex = "$\\chi^{1}$" where bayer_designation_greek_letter = "chi^1";

update Stars set bayer_designation_greek_letter_tex = "$\\chi^{2}$" where bayer_designation_greek_letter = "chi^2";

update Stars set bayer_designation_greek_letter_tex = "$\\delta$" where bayer_designation_greek_letter = "delta";

update Stars set bayer_designation_greek_letter_tex = "$\\delta^{1}$" where bayer_designation_greek_letter = "delta^1";

update Stars set bayer_designation_greek_letter_tex = "$\\delta^{2}$" where bayer_designation_greek_letter = "delta^2";

update Stars set bayer_designation_greek_letter_tex = "$\\epsilon$" where bayer_designation_greek_letter = "epsilon";

update Stars set bayer_designation_greek_letter_tex = "$\\epsilon^{1}$" where bayer_designation_greek_letter = "epsilon^1";

update Stars set bayer_designation_greek_letter_tex = "$\\eta$" where bayer_designation_greek_letter = "eta";

update Stars set bayer_designation_greek_letter_tex = "$\\eta^{1}$" where bayer_designation_greek_letter = "eta^1";

update Stars set bayer_designation_greek_letter_tex = "$\\eta^{2}$" where bayer_designation_greek_letter = "eta^2";

update Stars set bayer_designation_greek_letter_tex = "$\\gamma$" where bayer_designation_greek_letter = "gamma";

update Stars set bayer_designation_greek_letter_tex = "$\\gamma^{1}$" where bayer_designation_greek_letter = "gamma^1";

update Stars set bayer_designation_greek_letter_tex = "$\\gamma^{2}$" where bayer_designation_greek_letter = "gamma^2";

update Stars set bayer_designation_greek_letter_tex = "$\\iota$" where bayer_designation_greek_letter = "iota";

update Stars set bayer_designation_greek_letter_tex = "$\\iota^{1}$" where bayer_designation_greek_letter = "iota^1";

update Stars set bayer_designation_greek_letter_tex = "$\\iota^{2}$" where bayer_designation_greek_letter = "iota^2";

update Stars set bayer_designation_greek_letter_tex = "$\\kappa$" where bayer_designation_greek_letter = "kappa";

update Stars set bayer_designation_greek_letter_tex = "$\\kappa^{1}$" where bayer_designation_greek_letter = "kappa^1";

update Stars set bayer_designation_greek_letter_tex = "$\\kappa^{2}$" where bayer_designation_greek_letter = "kappa^2";

update Stars set bayer_designation_greek_letter_tex = "$\\lambda$" where bayer_designation_greek_letter = "lambda";

update Stars set bayer_designation_greek_letter_tex = "$\\lambda^{1}$" where bayer_designation_greek_letter = "lambda^1";

update Stars set bayer_designation_greek_letter_tex = "$\\lambda^{2}$" where bayer_designation_greek_letter = "lambda^2";

update Stars set bayer_designation_greek_letter_tex = "$\\mu$" where bayer_designation_greek_letter = "mu";

update Stars set bayer_designation_greek_letter_tex = "$\\mu^{1}$" where bayer_designation_greek_letter = "mu^1";

update Stars set bayer_designation_greek_letter_tex = "$\\mu^{2}$" where bayer_designation_greek_letter = "mu^2";

update Stars set bayer_designation_greek_letter_tex = "$\\nu$" where bayer_designation_greek_letter = "nu";

update Stars set bayer_designation_greek_letter_tex = "$\\nu^{1}$" where bayer_designation_greek_letter = "nu^1";

update Stars set bayer_designation_greek_letter_tex = "$\\nu^{2}$" where bayer_designation_greek_letter = "nu^2";

update Stars set bayer_designation_greek_letter_tex = "$\\nu^{3}$" where bayer_designation_greek_letter = "nu^3";

update Stars set bayer_designation_greek_letter_tex = "$\\o^$" where bayer_designation_greek_letter = "o";

update Stars set bayer_designation_greek_letter_tex = "$\\o^{1}$" where bayer_designation_greek_letter = "o^1";

update Stars set bayer_designation_greek_letter_tex = "$\\o^{2}$" where bayer_designation_greek_letter = "o^2";

update Stars set bayer_designation_greek_letter_tex = "$\\omega$" where bayer_designation_greek_letter = "omega";

update Stars set bayer_designation_greek_letter_tex = "$\\omega^{1}$" where bayer_designation_greek_letter = "omega^1";

update Stars set bayer_designation_greek_letter_tex = "$\\omega^{2}$" where bayer_designation_greek_letter = "omega^2";

update Stars set bayer_designation_greek_letter_tex = "$\\omicron^{2}$" where bayer_designation_greek_letter = "omicron^2";

update Stars set bayer_designation_greek_letter_tex = "$\\phi$" where bayer_designation_greek_letter = "phi";

update Stars set bayer_designation_greek_letter_tex = "$\\phi^{1}$" where bayer_designation_greek_letter = "phi^1";

update Stars set bayer_designation_greek_letter_tex = "$\\phi^{2}$" where bayer_designation_greek_letter = "phi^2";

update Stars set bayer_designation_greek_letter_tex = "$\\pi^{2}$" where bayer_designation_greek_letter = "pi^2";

update Stars set bayer_designation_greek_letter_tex = "$\\pi^{3}$" where bayer_designation_greek_letter = "pi^3";

update Stars set bayer_designation_greek_letter_tex = "$\\pi^{4}$" where bayer_designation_greek_letter = "pi^4";

update Stars set bayer_designation_greek_letter_tex = "$\\pi^{5}$" where bayer_designation_greek_letter = "pi^5";

update Stars set bayer_designation_greek_letter_tex = "$\\pi^{6}$" where bayer_designation_greek_letter = "pi^6";

update Stars set bayer_designation_greek_letter_tex = "$\\psi$" where bayer_designation_greek_letter = "psi";

update Stars set bayer_designation_greek_letter_tex = "$\\psi^{1}$" where bayer_designation_greek_letter = "psi^1";

update Stars set bayer_designation_greek_letter_tex = "$\\psi^{2}$" where bayer_designation_greek_letter = "psi^2";

update Stars set bayer_designation_greek_letter_tex = "$\\psi^{3}$" where bayer_designation_greek_letter = "psi^3";

update Stars set bayer_designation_greek_letter_tex = "$\\psi^{5}$" where bayer_designation_greek_letter = "psi^5";

update Stars set bayer_designation_greek_letter_tex = "$\\psi^{6}$" where bayer_designation_greek_letter = "psi^6";

update Stars set bayer_designation_greek_letter_tex = "$\\rho$" where bayer_designation_greek_letter = "rho";

update Stars set bayer_designation_greek_letter_tex = "$\\rho^{1}$" where bayer_designation_greek_letter = "rho^1";

update Stars set bayer_designation_greek_letter_tex = "$\\rho^{2}$" where bayer_designation_greek_letter = "rho^2";

update Stars set bayer_designation_greek_letter_tex = "$\\sigma$" where bayer_designation_greek_letter = "sigma";

update Stars set bayer_designation_greek_letter_tex = "$\\sigma^{3}$" where bayer_designation_greek_letter = "sigma^3";

update Stars set bayer_designation_greek_letter_tex = "$\\tau^{1}$" where bayer_designation_greek_letter = "tau^1";

update Stars set bayer_designation_greek_letter_tex = "$\\tau$" where bayer_designation_greek_letter = "tau";

update Stars set bayer_designation_greek_letter_tex = "$\\tau^{2}$" where bayer_designation_greek_letter = "tau^2";

update Stars set bayer_designation_greek_letter_tex = "$\\tau^{3}$" where bayer_designation_greek_letter = "tau^3";

update Stars set bayer_designation_greek_letter_tex = "$\\tau^{4}$" where bayer_designation_greek_letter = "tau^4";

update Stars set bayer_designation_greek_letter_tex = "$\\tau^{5}$" where bayer_designation_greek_letter = "tau^5";

update Stars set bayer_designation_greek_letter_tex = "$\\tau^{6}$" where bayer_designation_greek_letter = "tau^6";

update Stars set bayer_designation_greek_letter_tex = "$\\theta$" where bayer_designation_greek_letter = "theta";

update Stars set bayer_designation_greek_letter_tex = "$\\theta^{1}$" where bayer_designation_greek_letter = "theta^1";

update Stars set bayer_designation_greek_letter_tex = "$\\theta^{2}$" where bayer_designation_greek_letter = "theta^2";

update Stars set bayer_designation_greek_letter_tex = "$\\upsilon$" where bayer_designation_greek_letter = "upsilon";

update Stars set bayer_designation_greek_letter_tex = "$\\upsilon^{1}$" where bayer_designation_greek_letter = "upsilon^1";

update Stars set bayer_designation_greek_letter_tex = "$\\upsilon^{2}$" where bayer_designation_greek_letter = "upsilon^2";

update Stars set bayer_designation_greek_letter_tex = "$\\xi$" where bayer_designation_greek_letter = "xi";

update Stars set bayer_designation_greek_letter_tex = "$\\xi^{1}$" where bayer_designation_greek_letter = "xi^1";

update Stars set bayer_designation_greek_letter_tex = "$\\xi^{2}$" where bayer_designation_greek_letter = "xi^2";

update Stars set bayer_designation_greek_letter_tex = "$\\zeta^{1}$" where bayer_designation_greek_letter = "zeta^1";

update Stars set bayer_designation_greek_letter_tex = "$\\zeta$" where bayer_designation_greek_letter = "zeta";

update Stars set bayer_designation_greek_letter_tex = "$\\zeta^{2}$" where bayer_designation_greek_letter = "zeta^2";

select * from Stars where bayer_designation_greek_letter_tex != "" and bayer_designation_greek_letter_tex = ""\G

-- alter table Stars drop column is_binary;

show columns from Stars;

insert into ttemp (right_ascension) values ('1:45:20.02');

select * from ttemp;
select time_to_sec('1:45:20.02');
select time_to_sec('1:45:20');

select utc_time();

/* *** (3) Constellations  */

drop table Constellations;

create table Constellations
(
   rank_constellation int not null default 0,
   name varchar(64) not null default "",
   name_genitive varchar(64) not null default "",
   abbreviation varchar(16) not null default ""
);

alter table Constellations add column name_genitive varchar(64) not null default "" after name;

show columns from Constellations;

/* *** (3) Stars_Links  */

drop table Stars_Links;

create table Stars_Links
(
   common_name varchar(32) not null default "",
   flamsteed_designation_number int not null default 0,
   bayer_designation_greek_letter varchar(16) not null default "",
   constellation_name_genitive varchar(64) not null default "",
   bs_hr_number int not null default 0,
   link varchar(128) not null default ""
);

/* **** (4) */

show columns from Stars_Links;

/* **** (4) Sirius  */

delete from Stars_Links where common_name = "Sirius";

replace into Stars_Links (common_name, flamsteed_designation_number, bayer_designation_greek_letter,
                          bs_hr_number, constellation_name_genitive, link)
values
("Sirius", 9, "alpha", 2491, "Canis Majoris", "https://en.wikipedia.org/wiki/Sirius");


replace into Stars_Links (common_name, flamsteed_designation_number, bayer_designation_greek_letter,
                          bs_hr_number, constellation_name_genitive, link)
values
("Sirius", 9, "alpha", 2491, "Canis Majoris", "http://simbad.u-strasbg.fr/simbad/sim-id?Ident=*+alf+CMa");

replace into Stars_Links (common_name, flamsteed_designation_number, bayer_designation_greek_letter,
                          bs_hr_number, constellation_name_genitive, link)
values
("Sirius", 9, "alpha", 2491, "Canis Majoris", "http://simbad.u-strasbg.fr/simbad/sim-id?Ident=TYC+5949-2777-1");

replace into Stars_Links (common_name, flamsteed_designation_number, bayer_designation_greek_letter,
                          bs_hr_number, constellation_name_genitive, link)
values
("Sirius", 9, "alpha", 2491, "Canis Majoris", "http://simbad.u-strasbg.fr/simbad/sim-id?Ident=*+alf+CMa+B");

/* **** (4) Canopus  */



replace into Stars_Links (common_name, flamsteed_designation_number, bayer_designation_greek_letter,
                          bs_hr_number, constellation_name_genitive, link)
values
(
"Canopus", 0, "alpha", 2326, "Carinae", "https://en.wikipedia.org/wiki/Canopus");


replace into Stars_Links (common_name, flamsteed_designation_number, bayer_designation_greek_letter,
                          bs_hr_number, constellation_name_genitive, link)
values
(
"Canopus", 0, "alpha", 2326, "Carinae", "http://simbad.u-strasbg.fr/simbad/sim-id?Ident=canopus");


/* **** (4) Select from Stars_Links  */

select * from Stars_Links order by bs_hr_number, link\G

select * from Stars_Links where bs_hr_number = (select bs_hr_number from Stars where common_name = "Sirius")\G

select * from Stars where common_name = "Canopus"\G

select * from Stars_Links where bs_hr_number = (select bs_hr_number from Stars where common_name = "Canopus")\G

/* *** (3) */

/* ** (2) Insert into Constellations  */

insert ignore into Constellations (rank_constellation, abbreviation, name) values (1, "Hya", "Hydra");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (02, "Vir", "Virgo");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (03, "UMa", "Ursa Major");

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

insert ignore into Constellations (rank_constellation, abbreviation, name) values (56, "UMi", "Ursa Minor");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (57, "Tel", "Telescopium");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (58, "Hor", "Horologium");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (59, "Pic", "Pictor");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (60, "PsA", "Piscis Austrinus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (61, "Hyi", "Hydrus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (62, "Ant", "Antlia");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (63, "Ara", "Ara");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (64, "LMi", "Leo Minor");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (65, "Pyx", "Pyxis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (66, "Mic", "Microscopium");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (67, "Aps", "Apus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (68, "Lac", "Lacerta");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (69, "Delete", "Delphinus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (70, "Crv", "Corvus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (71, "CMi", "Canis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (72, "Dor", "Dorado");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (73, "CrB", "Corona Borealis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (74, "Nor", "Norma");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (75, "Men", "Mensa");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (76, "Vol", "Volans");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (77, "Mus", "Musca");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (78, "Tri", "Triangulum");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (79, "Cha", "Chamaeleon");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (80, "CrA", "Corona Australis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (81, "Cae", "Caelum");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (82, "Ret", "Reticulum");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (83, "TrA", "Triangulum");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (84, "Sct", "Scutum");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (85, "Cir", "Circinus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (86, "Sge", "Sagitta");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (87, "Equ", "Equuleus");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (88, "Cru", "Crux");


/* ** (2) Replace into Stars  */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(28, "omega", "Psc", 9072, 0, 00, 15.8, +6, 57, 57);  

-- select * from Stars order by flamsteed_designation_number\G

-- select * from Stars where bayer_designation_greek_letter = "omega" and constellation_abbreviation = "Psc"\G

/* *** (3)   */

-- select * from Stars where bayer_designation_greek_letter = "omega" and constellation_abbreviation = "Psc"\G

/* Done  28,  "omega",    "Psc",  9072,   0, 00, 15.8, +6, 57, 57, /* Done  */

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "epsilon",  "Tuc",  9076,   0, 00, 51.9,   -65, 28, 27);

/* **** (4) */

-- select * from Stars\G

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "theta",    "Oct",  9084,   0, 02, 31.3,   -76, 57, 49);


/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30,  "YY",       "Psc",  9089,   0, 02, 54.5,   -5, 54, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,  "",         "Cet",  9098,   0, 04, 41.2,   -17, 13, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(33,  "BC",       "Psc",     3,   0, 06, 17.0,   -5, 36, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(21,  "alpha",    "And",    15,   0, 09, 20.9,   +29, 11, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11,  "beta",     "Cas",    21,   0, 10, 10.6,   +59, 15, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "epsilon",  "Phe",    25,   0, 10, 20.7,   -45, 38, 44);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,  "",         "And",    27,   0, 11, 17.4,   +46, 10, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "kappa^2",  "Scl",    34,   0, 12, 30.6,   -27, 41, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "theta",    "Scl",    35,   0, 12, 40.2,   -35, 01, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(88,  "gamma",    "Peg",    39,   0, 14, 11.4,   +15, 17, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(89,  "chi",      "Peg",    45,   0, 15, 33.8,   +20, 18, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,  "AE",       "Cet",    48,   0, 15, 34.7,   -18, 49, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(25,  "sigma",    "And",    68,   0, 19, 18.0,   +36, 53, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,  "iota",     "Cet",    74,   0, 20, 22.2,   -8, 43, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "zeta",     "Tuc",    77,   0, 21, 01.4,   -64, 45, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(41,  "",         "Psc",    80,   0, 21, 33.1,   +8, 17, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,  "rho",      "And",    82,   0, 22, 06.1,   +38, 04, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "R",        "And",    90,   0, 25, 00.9,   +38, 40, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "beta",     "Hyi",    98,   0, 26, 41.9,   -77, 09, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "kappa",    "Phe",   100,   0, 27, 06.5,   -43, 34, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "alpha",    "Phe",    99,   0, 27, 11.7,   -42, 12, 20);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",         "",      118,   0, 31, 18.0,   -23, 41, 08);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "lambda^1",  "Phe",   125,   0, 32, 18.2,   -48, 42, 05);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "beta^1",   "Tuc",   126,   0, 32, 23.1,   -62, 51, 23);

-- select * from Stars where bayer_designation_greek_letter = "beta^1"\G

-- delete from Stars where bayer_designation_greek_letter = "beta^1"\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,  "kappa",     "Cas",   130,   0, 34, 04.0,   +63, 02, 0);

-- select * from Stars where bayer_designation_greek_letter = "kappa"\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(29,  "pi",       "And",   154,   0, 37, 52.4,   +33, 49, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(17,  "zeta",     "Cas",   153,   0, 38, 00.7,   +53, 59, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,   "",         "",      157,   0, 38, 21.0,   +35, 30, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30,  "epsilon",  "And",   163,   0, 39, 32.3,   +29, 24, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(31,  "delta",    "And",   165,   0, 40, 19.3,   +30, 57, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(18,  "alpha",    "Cas",   168,   0, 41, 34.1,   +56, 38, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "mu",       "Phe",   180,   0, 42, 11.7,   -45, 59, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "eta",      "Phe",   191,   0, 44, 10.8,   -57, 21, 43);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,  "beta",     "Cet",   188,   0, 44, 31.0,   -17, 53, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,  "o",        "Cas",   193,   0, 45, 45.9,   +48, 23, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,  "zeta",     "And",   215,   0, 48, 19.4,   +24, 22, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "lambda",   "Hyi",   236,   0, 49, 13.6,   -74, 49, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(63,  "delta",    "Psc",   224,   0, 49, 38.6,   +7, 41, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(64,  "",         "Psc",   225,   0, 49, 57.2,   +17, 02, 25);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,  "eta",      "Cas",   219,   0, 50, 14.2,   +57, 54, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(35,  "nu",       "And",   226,   0, 50, 50.5,   +41, 10, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(19,  "phi^2",    "Cet",   235,   0, 51, 03.2,   -10, 32, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,   "",         "",      233,   0, 51, 52.0,   +64, 20, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,  "",         "Cet",   248,   0, 53, 57.3,    -1, 02, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "lambda^2",  "Tuc",   270,   0, 55, 41.4,   -69, 25, 38);

-- select * from Stars where bayer_designation_greek_letter = "lambda^2" and constellation_abbreviation = "Tuc"\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(37,  "mu",       "And",   269,   0, 57, 47.2,   +38, 35, 5);

-- select * from Stars where bayer_designation_greek_letter = "mu" and constellation_abbreviation = "And"\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,  "gamma",   "Cas",   264,   0, 57, 50.4,   +60, 48, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(38,  "eta",      "And",   271,   0, 58, 11.9,   +23, 31, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(68,  "",            "Psc",   274,   0, 58, 50.5,   +29, 05, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",     "Scl",   280,   0, 59, 29.7,   -29, 15, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "sigma",     "Scl",   293,   1, 03, 19.3,   -31, 27, 10);

-- select * from Stars where constellation_abbreviation = "Scl"\G

-- select bayer_designation_greek_letter from Stars where constellation_abbreviation = "Scl"\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(71, "epsilon",   "Psc",   294,   1, 03, 54.3,   +7, 59, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",      "Phe",   322,   1, 06, 54.3,   -46, 37, 10);

select * from Stars\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",      "Tuc",   332,   1, 08, 02.4,   -61, 40, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "upsilon",   "Phe",   331,   1, 08, 38.4,   -41, 23, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",      "Phe",   338,   1, 09, 09.5,   -55, 08, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30, "mu",        "Cas",   321,   1, 09, 31.1,   +55, 00, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(31, "eta",       "Cet",   334,   1, 09, 31.2,   -10, 05, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(42, "phi",       "And",   335,   1, 10, 35.1,   +47, 20, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(43, "beta",      "And",   337,   1, 10, 46.4,   +35, 43, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",          "",      285,   1, 11, 38.8,   +86, 21, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(33, "theta",     "Cas",   343,   1, 12, 14.5,   +55, 14, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(84, "chi",       "Psc",   351,   1, 12, 27.1,   +21, 07, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(83, "tau",       "Psc",   352,   1, 12, 41.1,   +30, 11, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(86, "zeta",      "Psc",   361,   1, 14, 42.0,   +7, 40, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(89, "",          "Psc",   378,   1, 18, 45.3,   +3, 42, 41);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(90, "upsilon",   "Psc",   383,   1, 20, 29.3,   +27, 21, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34, "phi",       "Cas",   382,   1, 21, 15.6,   +58, 19, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(46, "xi",        "And",   390,   1, 23, 26.3,   +45, 37, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(45, "theta",     "Cet",   402,   1, 24, 56.9,   -8, 05, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(37, "delta",     "Cas",   403,   1, 27, 02.5,   +60, 19, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(36, "psi",       "Cas",   399,   1, 27, 15.9,   +68, 13, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(94, ""           "Psc",   414,   1, 27, 41.8,   +19, 20, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(48, "omega",     "And",   417,   1, 28, 46.3,   +45, 30, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",     "Phe",   429,   1, 29, 10.0,   -43, 13, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(48, "",           "Cet",   433,   1, 30, 29.4,   -21, 32, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",     "Phe",   440,   1, 32, 01.2,   -48, 58, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(99, "eta",       "Psc",   437,   1, 32, 28.6,   +15, 26, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(50, "upsilon",  "And",   458,   1, 37, 53.4,   +41, 29, 5);

-- select * from Stars where bayer_designation_greek_letter = "upsilon" and constellation_abbreviation = "And"\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",      "Eri",   472,   1, 38, 24.0,   -57, 08, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "And",   464,   1, 39, 08.3,   +48, 43, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Cas",   456,   1, 40, 01.9,   +73, 08, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(106,   "nu",       "Psc",   489,   1, 42, 23.8,   +5, 34, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "pi",       "Scl",   497,   1, 42, 58.6,   -32, 14, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   500,   1, 43, 39.7,   -3, 35, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "phi",      "Per",   496,   1, 44, 49.9,   +50, 46, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(52,   "tau",      "Cet",   509,   1, 44, 55.7,   -15, 50, 2);



/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(110,  "o",         "Psc",   510,   1, 46, 22.4,   +9, 15, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Scl",   514,   1, 46, 30.7,   -24, 57, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   513,   1, 46, 55.0,   -5, 38, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(53,   "chi",      "Cet",   531,   1, 50, 29.7,   -10, 35, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(55,   "zeta",     "Cet",   539,   1, 52, 22.5,   -10, 14, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "alpha",    "Tri",   544,   1, 54, 08.5,   +29, 40, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "psi",      "Phe",   555,   1, 54, 23.1,   -46, 12, 46);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(111,   "xi",       "Psc",   549,   1, 54, 30.9,   +3, 16, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "phi",      "Phe",   558,   1, 55, 08.0,   -42, 24, 24);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta^2",    "Hyi",   570,   1, 55, 24.4,   -67, 33, 24);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "beta",     "Ari",   553,   1, 55, 40.0,   +20, 53, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(45,   "epsilon",  "Cas",   542,   1, 55, 44.8,   +63, 45, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "chi",      "Eri",   566,   1, 56, 40.6,   -51, 31, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Hyi",   591,   1, 59, 21.1,   -61, 28, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(59,   "upsilon",  "Cet",   585,   2, 00, 52.6,   -20, 59, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(113,   "alpha",    "Psc",   596,   2, 03, 00.4,   +2, 51, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Per",   590,   2, 03, 32.8,   +54, 34, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(57,   "gamma^1",  "And",   603,   2, 05, 02.6,   +42, 25, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Cas",   580,   2, 05, 03.2,   +72, 30, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "nu",       "For",   612,   2, 05, 19.2,   -29, 12, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "alpha",    "Ari",   617,   2, 08, 13.2,   +23, 32, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "beta",     "Tri",   622,   2, 10, 39.1,   +35, 04, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu",       "For",   652,   2, 13, 43.3,   -30, 38, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(65,   "xi^1",     "Cet",   649,   2, 13, 59.0,   +8, 55, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   645,   2, 14, 50.9,   +51, 09, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   641,   2, 15, 00.9,   +58, 38, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "phi",      "Eri",   674,   2, 17, 10.2,   -51, 25, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Cet",   666,   2, 17, 54.5,   -6, 20, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "gamma",    "Tri",   664,   2, 18, 25.2,   +33, 55, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(68,  "o",         "Cet",   681,   2, 20, 17.0,   -2, 53, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "And",   670,   2, 20, 29.0,   +47, 27, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Hyi",   705,   2, 22, 05.0,   -68, 34, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa",    "Hyi",   715,   2, 22, 59.8,   -73, 33, 44);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa",    "For",   695,   2, 23, 23.3,   -23, 43, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "lambda",   "Hor",   714,   2, 25, 25.0,   -60, 13, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(72,   "rho",      "Cet",   708,   2, 26, 50.7,   -12, 12, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa",    "Eri",   721,   2, 27, 39.8,   -47, 37, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(73,   "xi^2",     "Cet",   718,   2, 29, 08.7,   +8, 32, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Tri",   717,   2, 29, 15.4,   +29, 45, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Cas",   707,   2, 30, 36.9,   +67, 29, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu",       "Hyi",   776,   2, 31, 19.7,   -79, 01, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(76,   "sigma",    "Cet",   740,   2, 32, 57.9,   -15, 09, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Tri",   736,   2, 33, 14.3,   +36, 13, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(78,   "nu",       "Cet",   754,   2, 36, 50.9,   +5, 40, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   753,   2, 37, 05.9,   +6, 58, 27);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   743,   2, 39, 50.0,   +72, 53, 51);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(32,   "nu",       "Ari",   773,   2, 39, 52.3,   +22, 02, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Hyi",   806,   2, 39, 52.8,   -68, 11, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(82,   "delta",    "Cet",   779,   2, 40, 26.0,   +0, 24, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Hor",   802,   2, 41, 14.2,   -54, 28, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Eri",   794,   2, 41, 23.8,   -39, 46, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(86,   "gamma",    "Cet",   804,   2, 44, 15.7,   +3, 18, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Ari",   801,   2, 44, 32.5,   +27, 47, 05);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(89,   "pi",       "Cet",   811,   2, 45, 00.2,   -13, 46, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Per",   800,   2, 45, 18.0,   +44, 22, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "theta",    "Per",   799,   2, 45, 28.4,   +49, 18, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(87,   "mu",       "Cet",   813,   2, 45, 56.7,   +10, 11, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "tau^1",    "Eri",   818,   2, 45, 58.0,   -18, 29, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "For",   841,   2, 49, 51.9,   -32, 19, 44);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Ari",   838,   2, 51, 04.7,   +27, 20, 08);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Per",   840,   2, 51, 45.5,   +38, 23, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "tau^2",    "Eri",   850,   2, 51, 52.7,   -20, 55, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,   "eta",      "Per",   834,   2, 52, 03.6,   +55, 58, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(43,   "sigma",    "Ari",   847,   2, 52, 31.1,   +15, 09, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "R",         "Hor",   868,   2, 54, 29.7,   -49, 48, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "alpha",    "UMi",   424,   2, 55, 00.0,   +89, 20, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(18,   "tau",      "Per",   854,   2, 55, 34.9,   +52, 50, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,   "eta",      "Eri",   874,   2, 57, 19.9,   -8, 49, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   875,   2, 57, 33.2,   -3, 38, 20);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta^1",  "Eri",   897,   2, 58, 57.8,   -40, 13, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Per",   882,   3, 00, 12.8,   +35, 15, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(91,   "lambda",   "Cet",   896,   3, 00, 42.6,   +8, 58, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Hyi",   939,   3, 02, 18.5,   -71, 49, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11,   "tau^3",    "Eri",   919,   3, 03, 12.5,   -23, 33, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(92,   "alpha",    "Cet",   911,   3, 03, 14.9,   +4, 09, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu",       "Hor",   934,   3, 04, 03.1,   -59, 39, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "gamma",    "Per",   915,   3, 06, 08.9,   +53, 34, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(25,   "rho",      "Per",   921,   3, 06, 22.1,   +38, 54, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   881,   3, 08, 41.4,   +79, 29, 20);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(26,   "beta",     "Per",   936,   3, 09, 22.8,   +41, 01, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Per",   937,   3, 10, 24.7,   +49, 40, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "kappa",    "Per",   941,   3, 10, 45.1,   +44, 55, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(57,   "delta",    "Ari",   951,   3, 12, 41.5,   +19, 47, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "For",   963,   3, 12, 51.8,   -28, 54, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "TW",        "Hor",   977,   3, 13, 01.4,   -57, 15, 10);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Cet",   962,   3, 13, 43.2,   -1, 07, 41);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(58,   "zeta",     "Ari",   972,   3, 15, 58.1,   +21, 06, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "zeta",     "Eri",   984,   3, 16, 44.0,   -8, 45, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Per",   987,   3, 19, 57.4,   +50, 17, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(96,   "kappa",    "Cet",   996,   3, 20, 20.0,   +3, 26, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "tau^4",    "Eri",  1003,   3, 20, 20.4,   -21, 41, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1008,   3, 20, 40.0,   -43, 00, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   999,   3, 21, 27.8,   +29, 06, 51);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(61,   "tau",      "Ari",  1005,   3, 22, 17.9,   +21, 12, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   961,   3, 22, 44.8,   +77, 48, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(33,   "alpha",    "Per",  1017,   3, 25, 39.2,   +49, 55, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,  "o",         "Tau",  1030,   3, 25, 48.7,   +9, 05, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1009,   3, 26, 18.1,   +64, 39, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1029,   3, 27, 16.7,   +49, 11, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "xi",       "Tau",  1038,   3, 28, 10.5,   +9, 47, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa",    "Ret",  1083,   3, 29, 42.3,   -62, 52, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1035,   3, 30, 34.9,   +60, 00, 11);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1040,   3, 31, 24.2,   +58, 56, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Eri",  1070,   3, 31, 32.2,   -5, 00, 46);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(35,   "sigma",    "Per",  1052,   3, 31, 53.3,   +48, 03, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Tau",  1066,   3, 31, 53.8,   +12, 59, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(18,   "epsilon",  "Eri",  1084,   3, 33, 48.2,   -9, 23, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(19,   "tau^5",    "Eri",  1088,   3, 34, 36.4,   -21, 34, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,  "EG",        "Eri",  1100,   3, 37, 08.0,   -17, 24, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1106,   3, 37, 45.6,   -40, 12, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(37,   "psi",      "Per",  1087,   3, 37, 48.8,   +48, 15, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Tau",  1101,   3, 37, 49.1,   +0, 27, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "For",  1134,   3, 42, 59.1,   -31, 52, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "BD",        "Cam",  1105,   3, 43, 46.7,   +63, 16, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "delta",    "Eri",  1136,   3, 44, 08.2,   -9, 42, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(39,   "delta",    "Per",  1122,   3, 44, 15.0,   +47, 50, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Ret",  1175,   3, 44, 26.2,   -64, 44, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Eri",  1146,   3, 45, 27.0,   -1, 06, 21);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(38,  "o",         "Per",  1131,   3, 45, 29.0,   +32, 20, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Tau",  1142,   3, 45, 58.7,   +24, 10, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Tau",  1145,   3, 46, 18.8,   +24, 31, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(41,   "nu",       "Per",  1135,   3, 46, 27.4,   +42, 38, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Tau",  1153,   3, 46, 39.6,   +6, 06, 24);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Tau",  1149,   3, 46, 55.9,   +24, 25, 27);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Hyi",  1208,   3, 46, 58.3,   -74, 10, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(26,   "pi",       "Eri",  1162,   3, 47, 01.1,   -12, 02, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23, "v971",       "Tau",  1156,   3, 47, 25.7,   +24, 00, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "tau^6",    "Eri",  1173,   3, 47, 38.7,   -23, 11, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(25,   "eta",      "Tau",  1165,   3, 48, 35.3,   +24, 09, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1195,   3, 50, 08.8,   -36, 08, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Tau",  1178,   3, 50, 16.0,   +24, 06, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "BE",        "Cam",  1155,   3, 51, 14.1,   +65, 34, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Cam",  1148,   3, 52, 20.5,   +71, 23, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(44,   "zeta",     "Per",  1203,   3, 55, 18.0,   +31, 56, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,   "gamma",    "Eri",  1231,   3, 58, 53.6,   -13, 27, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Ret",  1247,   3, 59, 02.6,   -61, 20, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(45,   "epsilon",  "Per",  1220,   3, 59, 06.1,   +40, 03, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(46,   "xi",       "Per",  1228,   4, 00, 10.2,   +35, 50, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(35,   "lambda",   "Tau",  1239,   4, 01, 42.5,   +12, 32, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Eri",  1244,   4, 02, 28.4,   -1, 29, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(38,   "nu",       "Tau",  1251,   4, 04, 08.6,   +6, 02, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Tau",  1256,   4, 05, 47.5,   +22, 07, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(47,   "lambda",   "Per",  1261,   4, 07, 58.2,   +50, 23, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1279,   4, 08, 45.0,   +15, 12, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(48,  "MX",        "Per",  1273,   4, 10, 00.7,   +47, 45, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Tau",  1283,   4, 10, 14.8,   +19, 39, 24);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1270,   4, 11, 02.3,   +59, 57, 20);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(44,  "IM",        "Tau",  1287,   4, 11, 57.7,   +26, 31, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(38,  "o^1",       "Eri",  1298,   4, 12, 46.2,   -6, 47, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Hor",  1326,   4, 14, 37.0,   -42, 14, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Ret",  1336,   4, 14, 40.0,   -62, 25, 40);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(40,  "o^2",       "Eri",  1325,   4, 16, 07.4,   -7, 37, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(51,   "mu",       "Per",  1303,   4, 16, 15.8,   +48, 27, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Dor",  1338,   4, 16, 30.8,   -51, 26, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(49,   "mu",       "Tau",  1320,   4, 16, 32.5,   +8, 56, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Ret",  1355,   4, 16, 48.4,   -59, 15, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Tau",  1319,   4, 16, 49.4,   +15, 26, 44);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Eri",  1347,   4, 18, 35.7,   -33, 45, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(54,   "gamma",    "Tau",  1346,   4, 20, 50.9,   +15, 40, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(57, "v483",       "Tau",  1351,   4, 21, 00.4,   +14, 04, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1367,   4, 21, 27.5,   -20, 35, 48);

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1367,   4, 21, 27.5,   -20, 35, 48);


-- select * from Stars where declination_degrees = -20 and declination_minutes = 35\G

-- delete from Stars where declination_degrees = -20 and declination_minutes = 35\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Per",  1343,   4, 21, 37.0,   +34, 36, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Ret",  1395,   4, 22, 05.6,   -63, 20, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1327,   4, 22, 25.7,   +65, 11, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(61,   "delta",    "Tau",  1373,   4, 24, 00.3,   +17, 35, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Tau",  1376,   4, 24, 28.9,   +16, 49, 08);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(42,   "xi",       "Eri",  1383,   4, 24, 36.2,   -3, 42, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Eri",  1393,   4, 24, 44.0,   -33, 58, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(65,   "kappa^1",  "Tau",  1387,   4, 26, 28.5,   +22, 20, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(68, "v776",       "Tau",  1389,   4, 26, 33.8,   +17, 58, 08);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(71, "v777",       "Tau",  1394,   4, 27, 24.1,   +15, 39, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(69,   "upsilon",  "Tau",  1392,   4, 27, 25.1,   +22, 51, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(77,   "theta^1",  "Tau",  1411,   4, 29, 38.0,   +16, 00, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(74,   "epsilon",  "Tau",  1409,   4, 29, 42.0,   +19, 13, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(78,   "theta^2",  "Tau",  1412,   4, 29, 43.3,   +15, 54, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Cae",  1443,   4, 31, 24.2,   -44, 54, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(50,   "upsilon^1", "Eri",  1453,   4, 34, 14.1,   -29, 43, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Dor",  1465,   4, 34, 23.9,   -55, 00, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(86,   "rho",      "Tau",  1444,   4, 34, 54.0,   +14, 52, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(52,   "upsilon^2", "Eri",  1464,   4, 36, 16.2,   -30, 31, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Tau",  1458,   4, 36, 40.3,   +10, 11, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "R",         "Dor",  1492,   4, 36, 58.7,   -62, 02, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(87,   "alpha",    "Tau",  1457,   4, 36, 59.1,   +16, 32, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(48,   "nu",       "Eri",  1463,   4, 37, 14.7,   -3, 18, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Per",  1454,   4, 37, 58.6,   +41, 18, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Eri",  1481,   4, 39, 01.7,   -14, 16, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Tau",  1473,   4, 39, 11.6,   +12, 32, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Cae",  1502,   4, 41, 09.5,   -41, 49, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(54,  "DM",        "Eri",  1496,   4, 41, 15.1,   -19, 38, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Cae",  1503,   4, 42, 42.8,   -37, 06, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(94,   "tau",      "Tau",  1497,   4, 43, 21.5,   +22, 59, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(57,   "mu",       "Eri",  1520,   4, 46, 25.7,   -3, 13, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Cam",  1511,   4, 49, 33.2,   +56, 47, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "pi^3",     "Ori",  1543,   4, 50, 50.8,   +6, 59, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1533,   4, 51, 09.6,   +37, 31, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "pi^2",     "Ori",  1544,   4, 51, 37.3,   +8, 55, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,   "pi^4",     "Ori",  1552,   4, 52, 11.6,   +5, 38, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(97, "v480",       "Tau",  1547,   4, 52, 27.5,   +18, 52, 11);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,  "o^1",       "Ori",  1556,   4, 53, 34.9,   +14, 16, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(61,   "omega",    "Eri",  1560,   4, 53, 48.3,   -5, 25, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Men",  1629,   4, 54, 40.1,   -74, 54, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "pi^5",     "Ori",  1567,   4, 55, 13.0,   +2, 28, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "alpha",    "Cam",  1542,   4, 55, 54.1,   +66, 22, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,  "o^2",       "Ori",  1580,   4, 57, 24.8,   +13, 32, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,   "iota",     "Aur",  1577,   4, 58, 12.1,   +33, 11, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Cam",  1568,   4, 58, 46.5,   +53, 46, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "pi^6",     "Ori",  1601,   4, 59, 30.5,   +1, 44, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "epsilon",  "Aur",  1605,   5, 03, 18.0,   +43, 50, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "zeta",     "Aur",  1612,   5, 03, 46.5,   +41, 06, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(102,   "iota",     "Tau",  1620,   5, 04, 12.2,   +21, 36, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "beta",     "Cam",  1603,   5, 05, 04.3,   +60, 28, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta^2",    "Pic",  1663,   5, 05, 26.9,   -49, 33, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11, "v1032",      "Ori",  1638,   5, 05, 37.7,   +15, 25, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Dor",  1674,   5, 05, 49.8,   -57, 26, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "epsilon",  "Lep",  1654,   5, 06, 14.7,   -22, 20, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "eta",      "Aur",  1641,   5, 07, 48.9,   +41, 15, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(67,   "beta",     "Eri",  1666,   5, 08, 45.6,   -5, 03, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(69,   "lambda",   "Eri",  1679,   5, 10, 02.0,   -8, 43, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Ori",  1672,   5, 10, 20.8,   +9, 51, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,   "iota",     "Lep",  1696,   5, 13, 09.7,   -11, 50, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Dor",  1744,   5, 13, 44.9,   -67, 09, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "mu",       "Lep",  1702,   5, 13, 45.8,   -16, 11, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "kappa",    "Lep",  1705,   5, 14, 05.2,   -12, 55, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(17,   "rho",      "Ori",  1698,   5, 14, 15.6,   +2, 52, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11,   "mu",       "Aur",  1689,   5, 14, 41.8,   +38, 30, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(19,   "beta",     "Ori",  1713,   5, 15, 25.7,   -8, 10, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "alpha",    "Aur",  1708,   5, 18, 03.5,   +46, 00, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "o",         "Col",  1743,   5, 18, 09.2,   -34, 52, 41);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,   "tau",      "Ori",  1735,   5, 18, 30.3,   -6, 49, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Pic",  1767,   5, 19, 49.4,   -50, 35, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "lambda",   "Lep",  1756,   5, 20, 25.7,   -13, 09, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,   "lambda",   "Aur",  1729,   5, 20, 26.7,   +40, 06, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Ori",  1765,   5, 22, 42.5,   -0, 21, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Ori",  1784,   5, 24, 50.4,   -7, 47, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(28,   "eta",      "Ori",  1788,   5, 25, 24.5,   -2, 22, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1686,   5, 25, 38.4,   +79, 14, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,   "gamma",    "Ori",  1790,   5, 26, 07.5,   +6, 21, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(112,   "beta",     "Tau",  1791,   5, 27, 27.8,   +28, 37, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Tau",  1808,   5, 28, 14.9,   +17, 58, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "beta",     "Lep",  1829,   5, 29, 02.3,   -20, 44, 4);

-- select * from Stars where declination_degrees = -20 and declination_minutes = 44\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1856,   5, 30, 40.1,   -47, 03, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Men",  1953,   5, 31, 09.8,   -76, 19, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Ori",  1839,   5, 31, 46.5,   +5, 57, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Col",  1862,   5, 31, 52.2,   -35, 27, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Cam",  1802,   5, 31, 55.3,   +63, 04, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,   "delta",    "Ori",  1852,   5, 32, 57.2,   -0, 17, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(119,  "CE",        "Tau",  1845,   5, 33, 17.9,   +18, 36, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11,   "alpha",    "Lep",  1865,   5, 33, 32.8,   -17, 48, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Dor",  1922,   5, 33, 47.3,   -62, 28, 41);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(25,   "chi",      "Aur",  1843,   5, 33, 56.0,   +32, 12, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(37,   "phi^1",    "Ori",  1876,   5, 35, 50.2,   +9, 30, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(39,   "lambda",   "Ori",  1879,   5, 36, 09.5,   +9, 56, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v1046",      "Ori",  1890,   5, 36, 16.8,   -4, 29, 00);

-- select * from Stars where bs_hr_number = 1890\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   1891,   5, 36, 17.3,   -4, 24, 49);

-- select * from Stars where bs_hr_number = 1891\G

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(44,   "iota",     "Ori",  1899,   5, 36, 20.3,   -5, 53, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(46,   "epsilon",  "Ori",  1903,   5, 37, 09.2,   -1, 11, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(40,   "phi^2",    "Ori",  1907,   5, 37, 55.4,   +9, 17, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(123,   "zeta",     "Tau",  1910,   5, 38, 45.1,   +21, 09, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(48,   "sigma",    "Ori",  1931,   5, 39, 40.5,   -2, 35, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Col",  1956,   5, 40, 19.2,   -34, 03, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(50,   "zeta",     "Ori",  1948,   5, 41, 41.6,   -1, 56, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Dor",  2015,   5, 44, 48.5,   -65, 43, 43);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "gamma",    "Lep",  1983,   5, 45, 14.1,   -22, 26, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,  "o",         "Aur",  1971,   5, 47, 20.1,   +49, 49, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Pic",  2020,   5, 47, 43.4,   -51, 03, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(14,   "zeta",     "Lep",  1998,   5, 47, 47.7,   -14, 48, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Tau",  1990,   5, 48, 31.0,   +17, 44, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(53,   "kappa",    "Ori",  2004,   5, 48, 38.1,   -9, 39, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Pic",  2042,   5, 50, 09.9,   -56, 09, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2049,   5, 51, 18.4,   -52, 06, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Col",  2040,   5, 51, 36.8,   -35, 45, 44);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,   "delta",    "Lep",  2035,   5, 52, 07.1,   -20, 52, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(32,   "nu",       "Aur",  2012,   5, 52, 46.4,   +39, 09, 0);

/* !! START HERE:  */ 

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Tau",  2034,   5, 54, 29.5,   +27, 36, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(54,   "chi^1",    "Ori",  2047,   5, 55, 28.8,   +20, 16, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(58,   "alpha",    "Ori",  2061,   5, 56, 10.4,   +7, 24, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30,   "xi",       "Aur",  2029,   5, 56, 23.9,   +55, 42, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "eta",      "Lep",  2085,   5, 57, 14.9,   -14, 09, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Col",  2106,   5, 58, 11.6,   -35, 16, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Col",  2120,   5, 59, 42.8,   -42, 48, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Ori",  2103,   5, 59, 46.7,   +0, 33, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,   "beta",     "Aur",  2088,   6, 00, 53.2,   +44, 56, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(37,   "theta",    "Aur",  2095,   6, 00, 59.0,   +37, 12, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(33,   "delta",    "Aur",  2077,   6, 01, 03.1,   +54, 17, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(35,   "pi",       "Aur",  2091,   6, 01, 18.5,   +45, 56, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(61,   "mu",       "Ori",  2124,   6, 03, 24.1,   +9, 38, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(62,   "chi^2",    "Ori",  2135,   6, 05, 01.1,   +20, 08, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Gem",  2134,   6, 05, 14.7,   +23, 15, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(17,  "SS",        "Lep",  2148,   6, 05, 48.7,   -16, 29, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "nu",       "Dor",  2221,   6, 08, 37.1,   -68, 50, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(67,   "nu",       "Ori",  2159,   6, 08, 37.7,   +14, 45, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Men",  2261,   6, 09, 41.3,   -74, 45, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2180,   6, 09, 44.6,   -22, 25, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Pic",  2212,   6, 10, 39.6,   -54, 58, 24);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(70,   "xi",       "Ori",  2199,   6, 12, 59.5,   +14, 12, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Cam",  2165,   6, 14, 42.7,   +65, 42, 43);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "gamma",    "Mon",  2227,   6, 15, 45.5,   -6, 16, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "eta",      "Gem",  2216,   6, 15, 59.7,   +22, 29, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(44,   "kappa",    "Aur",  2219,   6, 16, 33.4,   +29, 29, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa",    "Col",  2256,   6, 17, 12.7,   -35, 08, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Ori",  2241,   6, 17, 29.0,   +12, 15, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Mon",  2273,   6, 20, 36.3,   -7, 49, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2209,   6, 20, 52.9,   +69, 18, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "zeta",     "CMa",  2282,   6, 21, 01.4,   -30, 04, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,  "UZ",        "Lyn",  2238,   6, 21, 15.2,   +59, 00, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Col",  2296,   6, 22, 47.4,   -33, 26, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "beta",     "CMa",  2294,   6, 23, 30.9,   -17, 57, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "mu",       "Gem",  2286,   6, 24, 04.8,   +22, 30, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Car",  2326,   6, 24, 21.8,   -52, 42, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Mon",  2298,   6, 24, 44.9,   +4, 34, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2305,   6, 25, 02.1,   -11, 32, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(46,   "psi^1",    "Aur",  2289,   6, 26, 19.3,   +49, 16, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "lambda",   "CMa",  2361,   6, 28, 51.4,   -32, 35, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Mon",  2344,   6, 28, 52.4,   -4, 46, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(18,   "nu",       "Gem",  2343,   6, 30, 03.7,   +20, 11, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "xi^1",     "CMa",  2387,   6, 32, 37.6,   -23, 25, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2392,   6, 33, 38.9,   -11, 10, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Mon",  2385,   6, 33, 54.3,   +7, 19, 05);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2395,   6, 34, 34.3,   -1, 14, 08);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2435,   6, 35, 23.1,   -52, 59, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "xi^2",     "CMa",  2414,   6, 35, 49.9,   -22, 58, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "nu^2",     "CMa",  2429,   6, 37, 29.5,   -19, 16, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "nu",       "Pup",  2451,   6, 38, 19.7,   -43, 12, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "nu^3",     "CMa",  2443,   6, 38, 42.3,   -18, 15, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,   "gamma",    "Gem",  2421,   6, 38, 46.8,   +16, 22, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,  "S",         "Mon",  2456,   6, 41, 59.8,   +9, 52, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Gem",  2478,   6, 45, 01.9,   +13, 12, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "epsilon",  "Gem",  2473,   6, 45, 04.2,   +25, 06, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2513,   6, 45, 51.7,   -52, 13, 17);

/* **** (4)  Sirius  */

-- select * from Stars where right_ascension_hours = 6 and right_ascension_minutes = 45\G

update Stars set common_name = "Sirius" where right_ascension_hours = 6 and right_ascension_minutes = 45;

update Stars set constellation_full_name = "Canis Majoris" where constellation_abbreviation = "CMa";

-- select * from Stars where bs_hr_number = 2491\G

  1. Alpha Canis Majoris       Sirius            06, 45, -16.7  227.2  -8.9  A1V          -1.46   1.43  379.21 1.58     9

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "alpha",    "CMa",  2491,   6, 45, 57.4, -16, 44, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(31,   "xi",       "Gem",  2484,   6, 46, 19.6,   +12, 52, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2518,   6, 47, 59.4,   -37, 57, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(56,   "psi^5",    "Aur",  2483,   6, 48, 04.2,   +43, 33, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Pic",  2550,   6, 48, 22.8,   -61, 57, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Mon",  2506,   6, 48, 49.5,   +2, 23, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(57,   "psi^6",    "Aur",  2487,   6, 49, 04.0,   +48, 46, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2401,   6, 49, 21.5,   +79, 32, 25);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v415",       "Car",  2554,   6, 50, 15.4,   -53, 38, 41);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "tau",      "Pup",  2553,   6, 50, 23.7,   -50, 38, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "kappa",    "CMa",  2538,   6, 50, 32.0,   -32, 31, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Vol",  2602,   6, 51, 14.0,   -70, 59, 10);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v592",       "Mon",  2534,   6, 51, 35.8,   -8, 03, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,   "theta",    "Gem",  2540,   6, 54, 00.4,   +33, 56, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,  "o^1",       "CMa",  2580,   6, 54, 54.0,   -24, 12, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "NP",        "Pup",  2591,   6, 55, 01.7,   -42, 23, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(14,   "theta",    "CMa",  2574,   6, 55, 03.0,   -12, 03, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Cam",  2511,   6, 55, 41.3,   +68, 51, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,   "iota",     "CMa",  2596,   6, 56, 57.8,   -17, 04, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Lyn",  2560,   6, 58, 52.4,   +58, 23, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(21,   "epsilon",  "CMa",  2618,   6, 59, 21.2,   -28, 59, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "sigma",    "CMa",  2646,   7, 02, 27.4,   -27, 57, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2527,   7, 02, 44.3,   +76, 57, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(42,   "omega",    "Gem",  2630,   7, 03, 32.4,   +24, 11, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,  "o^2",       "CMa",  2653,   7, 03, 47.8,   -23, 51, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "gamma",    "CMa",  2657,   7, 04, 35.7,   -15, 39, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2666,   7, 04, 38.0,   -42, 21, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v386",       "Car",  2683,   7, 04, 39.0,   -56, 46, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(43,   "zeta",     "Gem",  2650,   7, 05, 12.3,   +20, 32, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma^2",  "Vol",  2736,   7, 08, 35.1,   -70, 31, 44);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(25,   "delta",    "CMa",  2693,   7, 09, 08.6,   -26, 25, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Mon",  2701,   7, 11, 08.8,   -4, 16, 02);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(46,   "tau",      "Gem",  2697,   7, 12, 18.9,   +30, 12, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "delta",    "Mon",  2714,   7, 12, 48.5,   -0, 31, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Aur",  2696,   7, 12, 55.5,   +39, 17, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "QW",        "Pup",  2740,   7, 13, 05.3,   -46, 47, 27);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Gem",  2706,   7, 13, 33.8,   +24, 05, 46);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "L_{2}",     "Pup",  2748,   7, 14, 06.2,   -44, 40, 14);

/* !! START HERE:  */

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(51,  "BQ",        "Gem",  2717,   7, 14, 26.0,   +16, 07, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,  "EW",        "CMa",  2745,   7, 15, 00.5,   -26, 23, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(28,   "omega",    "CMa",  2749,   7, 15, 33.7,   -26, 48, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Vol",  2803,   7, 16, 49.0,   -67, 59, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "pi",       "Pup",  2773,   7, 17, 47.8,   -37, 07, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(54,   "lambda",   "Gem",  2763,   7, 19, 09.3,   +16, 30, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30,   "tau",      "CMa",  2782,   7, 19, 28.5,   -24, 59, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(55,   "delta",    "Gem",  2777,   7, 21, 13.6,   +21, 56, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(31,   "eta",      "CMa",  2827,   7, 24, 49.6,   -29, 20, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Aur",  2805,   7, 25, 25.1,   +40, 38, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(60,   "iota",     "Gem",  2821,   7, 26, 52.4,   +27, 45, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,   "beta",     "CMi",  2845,   7, 28, 09.2,   +8, 15, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "gamma",    "CMi",  2854,   7, 29, 10.2,   +8, 53, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "sigma",    "Pup",  2878,   7, 29, 49.1,   -43, 20, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(62,   "rho",      "Gem",  2852,   7, 30, 18.0,   +31, 44, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "CMi",  2864,   7, 30, 49.5,   +11, 58, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2906,   7, 34, 50.7,   -22, 20, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(66,   "alpha^1",  "Gem",  2891,   7, 35, 46.4,   +31, 50, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(66,   "alpha^2",  "Gem",  2890,   7, 35, 46.7,   +31, 50, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2934,   7, 36, 07.2,   -52, 34, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(69,   "upsilon",  "Gem",  2905,   7, 37, 03.6,   +26, 51, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2937,   7, 38, 03.2,   -35, 00, 40);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Mon",  2927,   7, 38, 11.9,   -4, 09, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "alpha",    "CMi",  2943,   7, 40, 16.3,   +5, 10, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Vol",  3024,   7, 41, 34.9,   -72, 39, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "R",         "Pup",  2974,   7, 41, 35.7,   -31, 42, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(26,   "alpha",    "Mon",  2970,   7, 42, 07.9,   -9, 35, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(75,   "sigma",    "Gem",  2973,   7, 44, 27.9,   +28, 50, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Pup",  2996,   7, 44, 33.1,   -29, 00, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24, "",           "Lyn",  2946,   7, 44, 33.8,   +58, 39, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(77,   "kappa",    "Gem",  2985,   7, 45, 33.8,   +24, 21, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3017,   7, 45, 54.9,   -38, 00, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(78,   "beta",     "Gem",  2990,   7, 46, 26.7,   +27, 58, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Pup",  3015,   7, 46, 48.0,   -14, 36, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Gem",  3003,   7, 47, 11.6,   +18, 27, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "CMi",  3008,   7, 47, 17.2,   +10, 43, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   2999,   7, 47, 53.1,   +37, 28, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3037,   7, 48, 05.1,   -46, 39, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "OV",        "Cep",  2609,   7, 48, 29.2,   +86, 58, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(80,   "pi",       "Gem",  3013,   7, 48, 41.7,   +33, 22, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "o",         "Pup",  3034,   7, 48, 51.3,   -25, 59, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3055,   7, 49, 48.1,   -46, 25, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "xi",       "Pup",  3045,   7, 50, 04.4,   -24, 54, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "zeta",     "CMi",  3059,   7, 52, 39.5,   +1, 43, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3080,   7, 52, 51.2,   -40, 37, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "QZ",        "Pup",  3084,   7, 53, 18.0,   -38, 54, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3090,   7, 53, 50.8,   -48, 09, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(83,   "phi",      "Gem",  3067,   7, 54, 37.6,   +26, 42, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Lyn",  3066,   7, 56, 03.2,   +47, 30, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "chi",      "Car",  3117,   7, 57, 14.9,   -53, 01, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Pup",  3102,   7, 57, 39.3,   -22, 55, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3113,   7, 58, 24.4,   -30, 23, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "V",         "Pup",  3129,   7, 58, 46.4,   -49, 17, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3153,   7, 59, 56.4,   -60, 38, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Mon",  3122,   8, 00, 39.6,   -3, 43, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3131,   8, 00, 41.8,   -18, 27, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3075,   8, 02, 22.5,   +73, 51, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3145,   8, 03, 13.6,   +2, 16, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Pup",  3165,   8, 04, 14.1,   -40, 03, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "chi",      "Gem",  3149,   8, 04, 39.1,   +27, 44, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Vol",  3223,   8, 07, 59.0,   -68, 40, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,   "rho",      "Pup",  3185,   8, 08, 19.9,   -24, 21, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(29,   "zeta",     "Mon",  3188,   8, 09, 31.4,   -3, 02, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Lyn",  3173,   8, 09, 50.5,   +51, 27, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Pup",  3192,   8, 09, 51.2,   -19, 18, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma^2",  "Vel",  3207,   8, 10, 06.2,   -47, 23, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "NS",        "Pup",  3225,   8, 12, 01.2,   -39, 40, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Pup",  3229,   8, 14, 11.0,   -15, 50, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3182,   8, 14, 37.9,   +68, 25, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3243,   8, 14, 42.4,   -40, 24, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(17,   "beta",     "Cnc",  3249,   8, 17, 31.0,   +9, 07, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Cha",  3318,   8, 18, 01.2,   -76, 58, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3270,   8, 19, 14.9,   -36, 43, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Cha",  3340,   8, 20, 03.4,   -77, 32, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(18,   "chi",      "Cnc",  3262,   8, 21, 11.1,   +27, 09, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3282,   8, 22, 06.8,   -33, 06, 51);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Car",  3307,   8, 22, 53.5,   -59, 34, 10);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Lyn",  3275,   8, 24, 05.7,   +43, 07, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3315,   8, 25, 51.7,   -24, 06, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Vol",  3347,   8, 25, 56.0,   -66, 11, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3314,   8, 26, 35.1,   -3, 58, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,  "o",         "UMa",  3323,   8, 31, 47.2,   +60, 39, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(33,   "eta",      "Cnc",  3366,   8, 33, 46.5,   +20, 22, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3426,   8, 38, 17.7,   -43, 03, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "delta",    "Hya",  3410,   8, 38, 38.1,   +5, 38, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "sigma",    "Hya",  3418,   8, 39, 43.4,   +3, 16, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Cha",  3502,   8, 40, 39.2,   -79, 01, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "o",         "Vel",  3447,   8, 40, 49.4,   -52, 59, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Pyx",  3438,   8, 40, 49.6,   -35, 22, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Hya",  3431,   8, 40, 54.1,   -12, 32, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v343",       "Car",  3457,   8, 41, 01.5,   -59, 49, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3445,   8, 41, 14.4,   -46, 42, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Lyn",  3422,   8, 42, 17.4,   +45, 46, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "eta",      "Hya",  3454,   8, 44, 11.4,   +3, 19, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Pyx",  3468,   8, 44, 20.2,   -33, 15, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(43,   "gamma",    "Cnc",  3449,   8, 44, 21.2,   +21, 24, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3477,   8, 45, 03.6,   -42, 43, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Vel",  3485,   8, 45, 12.9,   -54, 46, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(47,   "delta",    "Cnc",  3461,   8, 45, 44.0,   +18, 05, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3487,   8, 46, 39.3,   -46, 06, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v344",       "Car",  3498,   8, 47, 11.2,   -56, 50, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Hya",  3484,   8, 47, 15.0,   -13, 36, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11,   "epsilon",  "Hya",  3482,   8, 47, 45.2,   +6, 21, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(48,   "iota",     "Cnc",  3475,   8, 47, 48.8,   +28, 41, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "rho",      "Hya",  3492,   8, 49, 24.7,   +5, 46, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(14,  "KX",        "Hya",  3500,   8, 50, 17.5,   -3, 30, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Pyx",  3518,   8, 51, 19.1,   -27, 46, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Oct",  3678,   8, 53, 38.8,   -85, 44, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3571,   8, 55, 27.9,   -60, 42, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "zeta",     "Hya",  3547,   8, 56, 22.2,   +5, 52, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v376",       "Car",  3582,   8, 57, 25.5,   -59, 18, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(65,   "alpha",    "Cnc",  3572,   8, 59, 29.8,   +11, 47, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "iota",     "UMa",  3569,   9, 00, 28.0,   +47, 58, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(64,   "sigma^3",  "Cnc",  3575,   9, 00, 40.6,   +32, 20, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3591,   9, 00, 46.9,   -41, 19, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3579,   9, 01, 50.0,   +41, 42, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Vol",  3615,   9, 02, 44.1,   -66, 28, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "rho",      "UMa",  3576,   9, 04, 11.3,   +67, 33, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3614,   9, 04, 47.6,   -47, 10, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(12,   "kappa",    "UMa",  3594,   9, 04, 52.8,   +47, 04, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3643,   9, 05, 11.0,   -72, 40, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3612,   9, 07, 42.0,   +38, 22, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "lambda",   "Vel",  3634,   9, 08, 40.7,   -43, 30, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(76,   "kappa",    "Cnc",  3623,   9, 08, 44.8,   +10, 35, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "UMa",  3619,   9, 10, 10.0,   +51, 31, 43);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(77,   "xi",       "Cnc",  3627,   9, 10, 25.2,   +21, 58, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v357",       "Car",  3659,   9, 11, 27.3,   -59, 02, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3663,   9, 11, 41.9,   -62, 23, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Car",  3685,   9, 13, 23.7,   -69, 47, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Lyn",  3652,   9, 15, 00.4,   +43, 08, 25);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "theta",    "Hya",  3665,   9, 15, 19.5,   +2, 14, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3696,   9, 16, 43.4,   -57, 37, 10);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Car",  3699,   9, 17, 35.1,   -59, 21, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Lyn",  3690,   9, 19, 59.4,   +36, 43, 24);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(40,   "alpha",    "Lyn",  3705,   9, 22, 10.6,   +34, 18, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Pyx",  3718,   9, 22, 18.8,   -26, 02, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa",    "Vel",  3734,   9, 22, 41.2,   -55, 05, 25);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "kappa",    "Leo",  3731,   9, 25, 43.7,   +26, 06, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30,   "alpha",    "Hya",  3748,   9, 28, 29.8,   -8, 44, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Ant",  3765,   9, 30, 00.6,   -36, 01, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "psi",      "Vel",  3786,   9, 31, 25.9,   -40, 32, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3821,   9, 31, 43.9,   -73, 09, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3803,   9, 31, 47.1,   -57, 06, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "R",         "Car",  3816,   9, 32, 42.5,   -62, 52, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "lambda",   "Leo",  3773,   9, 32, 46.4,   +22, 53, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "xi",       "Leo",  3782,   9, 32, 56.5,   +11, 13, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "UMa",  3757,   9, 32, 58.1,   +62, 58, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3808,   9, 34, 03.6,   -21, 11, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(25,   "theta",    "UMa",  3775,   9, 34, 05.1,   +51, 35, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3825,   9, 34, 58.9,   -59, 18, 46);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,  "SU",        "LMi",  3800,   9, 35, 21.1,   +36, 18, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "UMa",  3799,   9, 36, 04.9,   +51, 58, 05);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,  "DK",        "UMa",  3771,   9, 36, 05.1,   +69, 44, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3836,   9, 37, 29.4,   -49, 26, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3834,   9, 39, 25.1,   +4, 33, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3751,   9, 39, 35.5,   +81, 14, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(35,   "iota",     "Hya",  3845,   9, 40, 48.0,   -1, 13, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(38,   "kappa",    "Hya",  3849,   9, 41, 11.6,   -14, 25, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(14,  "o",         "Leo",  3852,   9, 42, 08.2,   +9, 48, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "psi",      "Leo",  3866,   9, 44, 44.2,   +13, 56, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Ant",  3871,   9, 45, 01.6,   -27, 51, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "lambda",   "Car",  3884,   9, 45, 45.3,   -62, 35, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(17,   "epsilon",  "Leo",  3873,   9, 46, 53.9,   +23, 41, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "upsilon",  "Car",  3890,   9, 47, 33.8,   -65, 09, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "R",         "Leo",  3882,   9, 48, 33.1,   +11, 20, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3881,   9, 49, 46.5,   +45, 56, 02);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(29,   "upsilon",  "UMa",  3888,   9, 52, 17.4,   +58, 57, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(39,   "upsilon^1", "Hya",  3903,   9, 52, 22.1,   -14, 56, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,   "mu",       "Leo",  3905,   9, 53, 48.7,   +25, 55, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   3923,   9, 55, 44.6,   -19, 05, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "phi",      "Vel",  3940,   9, 57, 30.8,   -54, 39, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "LMi",  3928,   9, 58, 48.6,   +40, 58, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Ant",  3947,   9, 59, 40.0,   -35, 58, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(29,   "pi",       "Leo",  3950,  10, 01, 11.4,   +7, 57, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "LMi",  3951,  10, 02, 04.4,   +31, 49, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(40,   "upsilon^2", "Hya",  3970,  10, 06, 01.6,   -13, 09, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30,   "eta",      "Leo",  3975,  10, 08, 20.3,   +16, 40, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "LMi",  3974,  10, 08, 30.9,   +35, 09, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Leo",  3980,  10, 08, 53.1,   +9, 54, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,   "alpha",    "Sex",  3981,  10, 08, 53.1,   -0, 27, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(32,   "alpha",    "Leo",  3982,  10, 09, 21.3,   +11, 52, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(41,   "lambda",   "Hya",  3994,  10, 11, 29.4,   -12, 26, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "omega",    "Car",  4037,  10, 14, 10.5,   -70, 07, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4023,  10, 15, 30.9,   -42, 12, 51);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v337",       "Car",  4050,  10, 17, 42.2,   -61, 25, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(36,   "zeta",     "Leo",  4031,  10, 17, 43.0,   +23, 19, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(33,   "lambda",   "UMa",  4033,  10, 18, 12.3,   +42, 49, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "epsilon",  "Sex",  4042,  10, 18, 33.0,   -8, 09, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "AG",        "Ant",  4049,  10, 18, 58.6,   -29, 05, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(41,   "gamma^1",  "Leo",  4057,  10, 20, 59.4,   +19, 44, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4080,  10, 23, 07.4,   -41, 44, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,   "mu",       "UMa",  4069,  10, 23, 25.5,   +41, 24, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4086,  10, 24, 18.1,   -38, 06, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4102,  10, 24, 45.5,   -74, 07, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4072,  10, 25, 26.6,   +65, 28, 20);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(42,   "mu",       "Hya",  4094,  10, 26, 59.2,   -16, 55, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Ant",  4104,  10, 28, 00.0,   -31, 09, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4114,  10, 28, 33.7,   -58, 50, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(31,   "beta",     "LMi",  4100,  10, 28, 56.8,   +36, 36, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(29,   "delta",    "Sex",  4116,  10, 30, 25.1,   -2, 50, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "UMa",  4112,  10, 31, 47.9,   +55, 53, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "PP",        "Car",  4140,  10, 32, 41.2,   -61, 46, 51);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Leo",  4127,  10, 33, 10.9,   +14, 02, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4084,  10, 33, 11.1,   +82, 27, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4143,  10, 33, 43.9,   -47, 05, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(47,   "rho",      "Leo",  4133,  10, 33, 47.0,   +9, 12, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Hya",  4145,  10, 34, 53.8,   -23, 50, 27);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Cha",  4174,  10, 35, 40.4,   -78, 42, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4159,  10, 36, 18.2,   -57, 39, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "UMa",  4141,  10, 36, 20.4,   +56, 59, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4126,  10, 36, 36.9,   +75, 37, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4167,  10, 38, 05.0,   -48, 19, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "LMi",  4166,  10, 39, 45.4,   +31, 52, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4180,  10, 40, 02.8,   -55, 42, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Car",  4199,  10, 43, 37.3,   -64, 29, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4181,  10, 44, 22.0,   +68, 58, 44);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "LMi",  4192,  10, 44, 25.1,   +23, 05, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4191,  10, 44, 37.7,   +46, 06, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta^2",  "Cha",  4234,  10, 45, 56.2,   -80, 38, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "LMi",  4203,  10, 46, 53.4,   +30, 35, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Leo",  4208,  10, 47, 24.2,   +18, 47, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu",       "Vel",  4216,  10, 47, 34.2,   -49, 31, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Leo",  4227,  10, 50, 13.7,   +10, 26, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "nu",       "Hya",  4232,  10, 50, 32.3,   -16, 17, 27);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4257,  10, 54, 15.1,   -58, 57, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "LMi",  4247,  10, 54, 20.5,   +34, 06, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Leo",  4259,  10, 56, 36.7,   +24, 39, 02);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Ant",  4273,  10, 57, 35.0,   -37, 14, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "UMa",  4277,  11, 00, 29.8,   +40, 19, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "alpha",    "Crt",  4287,  11, 00, 40.6,   -18, 23, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4293,  11, 01, 00.4,   -42, 19, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Leo",  4291,  11, 01, 30.9,   +3, 31, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(48,   "beta",     "UMa",  4295,  11, 02, 56.8,   +56, 16, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Leo",  4300,  11, 03, 18.9,   +20, 04, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(50,   "alpha",    "UMa",  4301,  11, 04, 51.2,   +61, 39, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(63,   "chi",      "Leo",  4310,  11, 05, 58.2,   +7, 14, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "chi^1",    "Hya",  4314,  11, 06, 13.5,   -27, 23, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v382",       "Car",  4337,  11, 09, 23.2,   -59, 04, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(52,   "psi",      "UMa",  4335,  11, 10, 41.8,   +44, 23, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11,   "beta",     "Crt",  4343,  11, 12, 34.2,   -22, 55, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4350,  11, 13, 23.9,   -49, 12, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(68,   "delta",    "Leo",  4357,  11, 15, 05.4,   +20, 25, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(70,   "theta",    "Leo",  4359,  11, 15, 12.6,   +15, 19, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(74,   "phi",      "Leo",  4368,  11, 17, 36.2,   -3, 45, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "SV",        "Crt",  4369,  11, 17, 54.5,   -7, 14, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(54,   "nu",       "UMa",  4377,  11, 19, 28.4,   +32, 59, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "UMa",  4380,  11, 20, 08.1,   +38, 05, 02);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(12,   "delta",    "Crt",  4382,  11, 20, 16.0,   -14, 52, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "pi",       "Cen",  4390,  11, 21, 51.4,   -54, 35, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(77,   "sigma",    "Leo",  4386,  11, 22, 05.4,   +5, 55, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(78,   "iota",     "Leo",  4399,  11, 24, 53.2,   +10, 25, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,   "gamma",    "Crt",  4405,  11, 25, 48.5,   -17, 47, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(84,   "tau",      "Leo",  4418,  11, 28, 53.3,   +2, 45, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "lambda",   "Dra",  4434,  11, 32, 28.9,   +69, 13, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "xi",       "Hya",  4450,  11, 33, 54.9,   -31, 57, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "lambda",   "Cen",  4467,  11, 36, 38.6,   -63, 07, 20);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4466,  11, 36, 49.7,   -47, 44, 40);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(21,   "theta",    "Crt",  4468,  11, 37, 37.3,   -9, 54, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(91,   "upsilon",  "Leo",  4471,  11, 37, 53.8,   -0, 55, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "o",         "Hya",  4494,  11, 41, 08.2,   -34, 50, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(61, "",          "UMa",  4496,  11, 42, 01.2,   +34, 05, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Dra",  4504,  11, 43, 29.4,   +66, 38, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v810",       "Cen",  4511,  11, 44, 24.7,   -62, 35, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "zeta",     "Crt",  4514,  11, 45, 42.2,   -18, 27, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "lambda",   "Mus",  4520,  11, 46, 29.5,   -66, 49, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,   "nu",       "Vir",  4517,  11, 46, 48.6,   +6, 25, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(63,   "chi",      "UMa",  4518,  11, 47, 01.2,   +47, 40, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4522,  11, 47, 25.1,   -61, 16, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(93,  "DQ",        "Leo",  4527,  11, 48, 56.3,   +20, 06, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "II",        "Hya",  4532,  11, 49, 41.3,   -26, 51, 10);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(94,   "beta",     "Leo",  4534,  11, 50, 00.1,   +14, 28, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4537,  11, 50, 35.7,   -63, 53, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "beta",     "Vir",  4540,  11, 51, 39.5,   +1, 39, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4546,  11, 52, 04.5,   -45, 16, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Hya",  4552,  11, 53, 50.8,   -34, 00, 40);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(64,   "gamma",    "UMa",  4554,  11, 54, 47.8,   +53, 35, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Leo",  4564,  11, 56, 37.5,   +15, 32, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30,   "eta",      "Crt",  4567,  11, 56, 57.7,   -17, 15, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "pi",       "Vir",  4589,  12, 01, 49.3,   +6, 30, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta^1",  "Cru",  4599,  12, 03, 58.7,   -63, 24, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4600,  12, 04, 37.4,   -42, 32, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,  "o",         "Vir",  4608,  12, 06, 09.1,   +8, 37, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Cru",  4616,  12, 07, 51.6,   -64, 43, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4618,  12, 09, 03.2,   -50, 45, 51);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Cen",  4621,  12, 09, 19.5,   -50, 49, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "alpha",    "Crv",  4623,  12, 09, 22.3,   -24, 49, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "epsilon",  "Crv",  4630,  12, 11, 04.7,   -22, 43, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "rho",      "Cen",  4638,  12, 12, 37.6,   -52, 28, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4646,  12, 13, 02.7,   +77, 30, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Cru",  4656,  12, 16, 08.3,   -58, 51, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(69,   "delta",    "UMa",  4660,  12, 16, 20.0,   +56, 55, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "gamma",    "Crv",  4662,  12, 16, 45.6,   -17, 38, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Mus",  4671,  12, 18, 35.2,   -68, 03, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Cru",  4679,  12, 19, 27.2,   -64, 06, 21);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Cha",  4674,  12, 19, 28.3,   -79, 24, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "CVn",  4690,  12, 20, 43.1,   +48, 52, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,   "eta",      "Vir",  4689,  12, 20, 51.2,   -0, 46, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Vir",  4695,  12, 21, 17.4,   +3, 12, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Cru",  4700,  12, 22, 22.2,   -60, 30, 11);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Com",  4707,  12, 23, 26.0,   +25, 44, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "CVn",  4728,  12, 26, 45.4,   +38, 54, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha^1",  "Cru",  4730,  12, 27, 38.5,   -63, 12, 05);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,   "gamma",    "Com",  4737,  12, 27, 51.5,   +28, 09, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "sigma",    "Cen",  4743,  12, 29, 02.9,   -50, 19, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4748,  12, 29, 21.8,   -39, 08, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "UMa",  4760,  12, 30, 48.8,   +58, 18, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "delta",    "Crv",  4757,  12, 30, 49.4,   -16, 37, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Cru",  4763,  12, 32, 12.2,   -57, 13, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "eta",      "Crv",  4775,  12, 33, 01.6,   -16, 17, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Mus",  4773,  12, 33, 35.7,   -72, 14, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "kappa",    "Dra",  4787,  12, 34, 15.8,   +69, 41, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4783,  12, 34, 33.4,   +33, 08, 44);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "beta",     "CVn",  4785,  12, 34, 37.0,   +41, 15, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "beta",     "Crv",  4786,  12, 35, 21.7,   -23, 29, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Com",  4789,  12, 35, 46.3,   +22, 31, 40);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Com",  4792,  12, 36, 03.4,   +18, 16, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Mus",  4798,  12, 38, 18.4,   -69, 14, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "tau",      "Cen",  4802,  12, 38, 43.4,   -48, 38, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(26,   "chi",      "Vir",  4813,  12, 40, 12.2,   -8, 05, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Cen",  4819,  12, 42, 32.8,   -49, 03, 40);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(29,   "gamma^1",  "Vir",  4825,  12, 42, 35.9,   -1, 33, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(29,   "gamma^2",  "Vir",  4826,  12, 42, 35.9,   -1, 33, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30,   "rho",      "Vir",  4828,  12, 42, 49.2,   +10, 08, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4839,  12, 45, 00.0,   -28, 25, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "Y",         "CVn",  4846,  12, 45, 59.8,   +45, 20, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(32,  "FM",        "Vir",  4847,  12, 46, 33.1,   +7, 34, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Mus",  4844,  12, 47, 26.1,   -68, 12, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Cru",  4853,  12, 48, 48.9,   -59, 47, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4874,  12, 51, 41.7,   -34, 05, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Com",  4883,  12, 52, 35.9,   +27, 26, 25);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4888,  12, 54, 10.2,   -49, 02, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   4889,  12, 54, 28.1,   -40, 16, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(77,   "epsilon",  "UMa",  4905,  12, 54, 50.3,   +55, 51, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(40,   "psi",      "Vir",  4902,  12, 55, 19.0,   -9, 38, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu^1",     "Cru",  4898,  12, 55, 41.6,   -57, 16, 41);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Dra",  4916,  12, 56, 12.4,   +65, 20, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(43,   "delta",    "Vir",  4910,  12, 56, 32.2,   +3, 17, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(12,   "alpha^2",  "CVn",  4915,  12, 56, 53.4,   +38, 13, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Oct",  4870,  12, 57, 07.6,   -85, 13, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "UMa",  4931,  13, 01, 31.1,   +56, 16, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(47,   "epsilon",  "Vir",  4932,  13, 03, 05.9,   +10, 51, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Mus",  4923,  13, 03, 34.3,   -71, 38, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "CVn",  4943,  13, 06, 36.2,   +35, 42, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "xi^2",     "Cen",  4942,  13, 08, 00.0,   -50, 00, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(51,   "theta",    "Vir",  4963,  13, 10, 54.6,   -5, 38, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(43,   "beta",     "Com",  4983,  13, 12, 44.1,   +27, 47, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Mus",  4993,  13, 16, 31.5,   -67, 59, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5006,  13, 17, 55.1,   -31, 36, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,  "AO",        "CVn",  5017,  13, 18, 22.2,   +40, 28, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(60,   "sigma",    "Vir",  5015,  13, 18, 32.4,   +5, 22, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Vir",  5019,  13, 19, 22.6,   -18, 24, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(46,   "gamma",    "Hya",  5020,  13, 19, 55.9,   -23, 16, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Cen",  5028,  13, 21, 38.6,   -36, 48, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5035,  13, 23, 50.6,   -61, 05, 05);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(79,   "zeta",     "UMa",  5054,  13, 24, 40.1,   +54, 49, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "UMa",  5062,  13, 25, 57.8,   +54, 53, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(67,   "alpha",    "Vir",  5056,  13, 26, 10.2,   -11, 15, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Vir",  5064,  13, 27, 42.0,   -12, 48, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5085,  13, 29, 07.7,   +59, 51, 02);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Vir",  5072,  13, 29, 20.1,   +13, 40, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5089,  13, 32, 07.4,   -39, 30, 08);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(78,  "CW",        "Vir",  5105,  13, 35, 04.2,   +3, 33, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "BH",        "CVn",  5110,  13, 35, 37.3,   +37, 05, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(79,   "zeta",     "Vir",  5107,  13, 35, 38.2,   -0, 41, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5139,  13, 37, 37.8,   +71, 08, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Cen",  5132,  13, 41, 04.3,   -53, 33, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v744",       "Cen",  5134,  13, 41, 09.0,   -50, 02, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Vir",  5150,  13, 42, 35.2,   -8, 47, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Cen",  5168,  13, 46, 44.7,   -33, 08, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "tau",      "Boo",  5185,  13, 48, 08.5,   +17, 21, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(85,   "eta",      "UMa",  5191,  13, 48, 16.1,   +49, 13, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v766",       "Cen",  5171,  13, 48, 29.4,   -62, 40, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "upsilon",  "Boo",  5200,  13, 50, 22.2,   +15, 42, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,  "v806",      "Cen",  5192,  13, 50, 31.4,   -34, 32, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "nu",       "Cen",  5190,  13, 50, 37.3,   -41, 46, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu",       "Cen",  5193,  13, 50, 44.3,   -42, 33, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Vir",  5196,  13, 50, 52.8,   -18, 13, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,  "CU",        "Dra",  5226,  13, 51, 58.4,   +64, 37, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "eta",      "Boo",  5235,  13, 55, 33.9,   +18, 18, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Cen",  5231,  13, 56, 42.2,   -47, 22, 43);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5241,  13, 59, 00.4,   -63, 46, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "phi",      "Cen",  5248,  13, 59, 24.2,   -42, 11, 25);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Hya",  5250,  13, 59, 33.7,   -25, 03, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "upsilon^1", "Cen",  5249,  13, 59, 49.8,   -44, 53, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(93,   "tau",      "Vir",  5264,  14, 02, 35.4,   +1, 27, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "upsilon^2", "Cen",  5260,  14, 02, 53.3,   -45, 41, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5270,  14, 03, 26.3,   +9, 35, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11,   "alpha",    "Dra",  5291,  14, 04, 53.5,   +64, 17, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Cen",  5267,  14, 05, 08.7,   -60, 27, 41);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "chi",      "Cen",  5285,  14, 07, 11.0,   -41, 16, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Aps",  5261,  14, 07, 11.6,   -76, 53, 05);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(49,   "pi",       "Hya",  5287,  14, 07, 25.8,   -26, 46, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "theta",    "Cen",  5288,  14, 07, 46.7,   -36, 27, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "BY",        "Boo",  5299,  14, 08, 40.1,   +43, 46, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "UMi",  5321,  14, 08, 48.2,   +77, 27, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Boo",  5304,  14, 11, 14.5,   +25, 00, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(98,   "kappa",    "Vir",  5315,  14, 13, 53.1,   -10, 21, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "alpha",    "Boo",  5340,  14, 16, 30.3,   +19, 05, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(21,   "iota",     "Boo",  5350,  14, 16, 49.2,   +51, 16, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(99,   "iota",     "Vir",  5338,  14, 16, 59.2,   -6, 05, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(19,   "lambda",   "Boo",  5351,  14, 17, 05.2,   +46, 00, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5361,  14, 18, 46.7,   +35, 25, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(100,   "lambda",   "Vir",  5359,  14, 20, 06.8,   -13, 27, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Boo",  5365,  14, 20, 10.0,   +12, 55, 11);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Lup",  5354,  14, 20, 35.8,   -46, 08, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5358,  14, 21, 37.9,   -56, 28, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "psi",      "Cen",  5367,  14, 21, 41.3,   -37, 58, 10);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v761",       "Cen",  5378,  14, 24, 11.1,   -39, 35, 43);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5392,  14, 25, 06.7,   +5, 44, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "theta",    "Boo",  5404,  14, 25, 49.6,   +51, 45, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5390,  14, 25, 52.2,   -24, 53, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Boo",  5405,  14, 27, 19.0,   +19, 08, 40);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "tau^1",    "Lup",  5395,  14, 27, 20.0,   -45, 18, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "tau^2",    "Lup",  5396,  14, 27, 22.7,   -45, 27, 43);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "UMi",  5430,  14, 27, 30.5,   +75, 36, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(105,   "phi",      "Vir",  5409,  14, 29, 09.4,   -2, 18, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Hya",  5407,  14, 29, 15.7,   -29, 34, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Oct",  5339,  14, 30, 06.4,   -83, 45, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(25,   "rho",      "Boo",  5429,  14, 32, 37.6,   +30, 17, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "gamma",    "Boo",  5435,  14, 32, 49.3,   +38, 13, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "sigma",    "Lup",  5425,  14, 33, 52.5,   -50, 32, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(28,   "sigma",    "Boo",  5447,  14, 35, 29.1,   +29, 39, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Cen",  5440,  14, 36, 41.4,   -42, 14, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "rho",      "Lup",  5453,  14, 39, 08.5,   -49, 30, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Boo",  5468,  14, 39, 31.5,   +44, 19, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha^2",  "Cen",  5460,  14, 40, 52.0,   -60, 54, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha^1",  "Cen",  5459,  14, 40, 52.3,   -60, 54, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30,   "zeta",     "Boo",  5478,  14, 42, 02.0,   +13, 38, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5471,  14, 43, 06.9,   -37, 52, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Lup",  5469,  14, 43, 10.1,   -47, 27, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Cir",  5463,  14, 44, 01.4,   -65, 03, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(107,   "mu",       "Vir",  5487,  14, 44, 02.3,   -5, 44, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,  "W",         "Boo",  5490,  14, 44, 14.2,   +26, 27, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5485,  14, 44, 47.7,   -35, 15, 08);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(36,   "epsilon",  "Boo",  5506,  14, 45, 47.7,   +26, 59, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Vir",  5511,  14, 47, 11.1,   +1, 48, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5495,  14, 48, 19.6,   -52, 27, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Hya",  5516,  14, 48, 49.9,   -26, 09, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Aps",  5470,  14, 50, 14.7,   -79, 07, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "beta",     "UMi",  5563,  14, 50, 40.2,   +74, 04, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Hya",  5526,  14, 51, 22.8,   -28, 02, 11);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "alpha^1",  "Lib",  5530,  14, 51, 42.7,   -16, 04, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "alpha^2",  "Lib",  5531,  14, 51, 54.3,   -16, 07, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5552,  14, 51, 54.7,   +59, 13, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "o",         "Lup",  5528,  14, 52, 51.2,   -43, 39, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5558,  14, 56, 53.2,   -33, 55, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,   "xi^2",     "Lib",  5564,  14, 57, 46.5,   -11, 29, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "RR",        "UMi",  5589,  14, 57, 53.0,   +65, 51, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Lib",  5570,  14, 58, 09.1,   -4, 25, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Lup",  5571,  14, 59, 45.1,   -43, 12, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa",    "Cen",  5576,  15, 00, 22.3,   -42, 10, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(19,   "delta",    "Lib",  5586,  15, 01, 57.8,   -8, 35, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(42,   "beta",     "Boo",  5602,  15, 02, 38.6,   +40, 19, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Vir",  5601,  15, 03, 50.2,   +2, 01, 11);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,   "sigma",    "Lib",  5603,  15, 05, 09.4,   -25, 21, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(43,   "psi",      "Boo",  5616,  15, 05, 14.3,   +26, 52, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5635,  15, 06, 48.5,   +54, 29, 08);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Boo",  5634,  15, 08, 06.8,   +24, 47, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "lambda",   "Lup",  5626,  15, 10, 05.9,   -45, 20, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa^1",  "Lup",  5646,  15, 13, 13.8,   -48, 48, 24);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,   "iota",     "Lib",  5652,  15, 13, 16.8,   -19, 51, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Lup",  5649,  15, 13, 37.5,   -52, 10, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5691,  15, 14, 51.5,   +67, 16, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Lup",  5660,  15, 15, 45.6,   -31, 35, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Ser",  5675,  15, 16, 06.6,   +4, 52, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(49,   "delta",    "Boo",  5681,  15, 16, 14.9,   +33, 14, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "beta",     "Lib",  5685,  15, 18, 00.3,   -9, 27, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Lup",  5686,  15, 18, 57.7,   -30, 12, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Cir",  5670,  15, 18, 58.6,   -58, 52, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu",       "Lup",  5683,  15, 19, 49.7,   -47, 56, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "TrA",  5671,  15, 20, 39.8,   -68, 44, 46);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "gamma",    "UMi",  5735,  15, 20, 42.8,   +71, 46, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Lup",  5695,  15, 22, 35.6,   -40, 42, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "phi^1",    "Lup",  5705,  15, 22, 59.1,   -36, 19, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Lup",  5708,  15, 23, 56.7,   -44, 45, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "phi^2",    "Lup",  5712,  15, 24, 20.6,   -36, 55, 25);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Cir",  5704,  15, 24, 51.9,   -59, 23, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(51,   "mu^1",     "Boo",  5733,  15, 25, 11.4,   +37, 18, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(12,   "iota",     "Dra",  5744,  15, 25, 20.6,   +58, 54, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "tau^1",    "Ser",  5739,  15, 26, 38.9,   +15, 21, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,   "beta",     "CrB",  5747,  15, 28, 35.5,   +29, 02, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(52,   "nu^1",     "Boo",  5763,  15, 31, 35.7,   +40, 46, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa^1",  "Aps",  5730,  15, 33, 34.1,   -73, 27, 05);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "theta",    "CrB",  5778,  15, 33, 40.6,   +31, 17, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Lib",  5777,  15, 35, 11.5,   -10, 07, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "alpha",    "CrB",  5793,  15, 35, 28.3,   +26, 39, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "delta",    "Ser",  5789,  15, 35, 41.2,   +10, 28, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Lup",  5776,  15, 36, 22.8,   -41, 13, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(38,   "gamma",    "Lib",  5787,  15, 36, 33.8,   -14, 51, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5784,  15, 37, 28.6,   -44, 27, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(39,   "upsilon",  "Lib",  5794,  15, 38, 09.1,   -28, 11, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "TrA",  5771,  15, 38, 26.1,   -66, 22, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(54,   "phi",      "Boo",  5823,  15, 38, 29.5,   +40, 17, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "omega",    "Lup",  5797,  15, 39, 18.4,   -42, 37, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(40,   "tau",      "Lib",  5812,  15, 39, 47.8,   -29, 50, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5798,  15, 40, 12.5,   -52, 25, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(43,   "kappa",    "Lib",  5838,  15, 43, 00.9,   -19, 44, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "zeta",     "UMi",  5903,  15, 43, 26.1,   +77, 44, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "gamma",    "CrB",  5849,  15, 43, 31.2,   +26, 14, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,   "alpha",    "Ser",  5854,  15, 45, 10.8,   +6, 22, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5886,  15, 46, 57.2,   +62, 32, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(28,   "beta",     "Ser",  5867,  15, 47, 02.5,   +15, 21, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "lambda",   "Ser",  5868,  15, 47, 20.6,   +7, 17, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(35,   "kappa",    "Ser",  5879,  15, 49, 34.4,   +18, 05, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "delta",    "CrB",  5889,  15, 50, 22.2,   +26, 00, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(32,   "mu",       "Ser",  5881,  15, 50, 35.2,   -3, 29, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(37,   "epsilon",  "Ser",  5892,  15, 51, 44.4,   +4, 25, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11,   "kappa",    "CrB",  5901,  15, 51, 55.8,   +35, 36, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "chi",      "Lup",  5883,  15, 52, 08.4,   -33, 40, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "chi",      "Her",  5914,  15, 53, 19.0,   +42, 24, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(45,   "lambda",   "Lib",  5902,  15, 54, 24.7,   -20, 13, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(46,   "theta",    "Lib",  5908,  15, 54, 52.9,   -16, 46, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "TrA",  5897,  15, 56, 47.3,   -63, 29, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(41,   "gamma",    "Ser",  5933,  15, 57, 18.5,   +15, 36, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "rho",      "Sco",  5928,  15, 58, 01.8,   -29, 16, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "CL",        "Dra",  5960,  15, 58, 13.9,   +54, 41, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "epsilon",  "CrB",  5947,  15, 58, 21.3,   +26, 49, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(48,  "FX",        "Lib",  5941,  15, 59, 13.7,   -14, 19, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "pi",       "Sco",  5944,  15, 59, 58.5,   -26, 09, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "T",         "CrB",  5958,  16, 00, 16.7,   +25, 52, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   5943,  16, 00, 46.2,   -41, 47, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Lup",  5948,  16, 01, 21.2,   -38, 26, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Lib",  5954,  16, 01, 22.0,   -16, 35, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "delta",    "Sco",  5953,  16, 01, 25.8,   -22, 40, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "theta",    "Dra",  5986,  16, 02, 14.3,   +58, 30, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "beta^1",   "Sco",  5984,  16, 06, 30.9,   -19, 51, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "beta^2",   "Sco",  5985,  16, 06, 31.2,   -19, 51, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Nor",  5980,  16, 07, 48.3,   -45, 13, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Lup",  5987,  16, 07, 48.7,   -36, 51, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "omega^1",  "Sco",  5993,  16, 07, 53.5,   -20, 43, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "omega^2",  "Sco",  5997,  16, 08, 29.6,   -20, 55, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "kappa",    "Her",  6008,  16, 08, 54.7,   +16, 59, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11,   "phi",      "Her",  6023,  16, 09, 21.2,   +44, 53, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "tau",      "CrB",  6018,  16, 09, 38.9,   +36, 26, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "UMi",  6079,  16, 10, 19.3,   +75, 49, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(14,   "nu",       "Sco",  6027,  16, 13, 04.4,   -19, 30, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa",    "Nor",  6024,  16, 14, 56.8,   -54, 40, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "delta",    "Oph",  6056,  16, 15, 19.0,   -3, 44, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(21,   "eta",      "UMi",  6116,  16, 16, 59.1,   +75, 42, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "TrA",  6030,  16, 17, 08.2,   -63, 43, 51);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "epsilon",  "Oph",  6075,  16, 19, 18.1,   -4, 44, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "tau",      "Her",  6092,  16, 20, 17.9,   +46, 16, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6077,  16, 20, 43.2,   -30, 57, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma^2",  "Nor",  6072,  16, 21, 13.9,   -50, 11, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,   "sigma",    "Sco",  6084,  16, 22, 19.0,   -25, 38, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,   "gamma",    "Her",  6095,  16, 22, 44.2,   +19, 06, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(50,   "sigma",    "Ser",  6093,  16, 23, 00.6,   +0, 59, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta^1",  "Aps",  6020,  16, 23, 10.3,   -78, 44, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(14,   "eta",      "Dra",  6132,  16, 24, 14.7,   +61, 28, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "psi",      "Oph",  6104,  16, 25, 11.3,   -20, 04, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,   "omega",    "Her",  6117,  16, 26, 16.2,   +13, 59, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Dra",  6161,  16, 27, 57.3,   +68, 43, 41);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "chi",      "Oph",  6118,  16, 28, 05.9,   -18, 29, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Nor",  6115,  16, 28, 32.8,   -47, 35, 43);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "TrA",  6098,  16, 30, 28.8,   -70, 07, 24);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(21,   "alpha",    "Sco",  6134,  16, 30, 32.7,   -26, 28, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "beta",     "Her",  6148,  16, 31, 01.0,   +21, 27, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "lambda",   "Oph",  6149,  16, 31, 50.9,   +1, 56, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "phi",      "Oph",  6147,  16, 32, 12.0,   -16, 39, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6143,  16, 32, 35.7,   -34, 44, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "omega",    "Oph",  6153,  16, 33, 14.1,   -21, 30, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(35,   "sigma",    "Her",  6168,  16, 34, 42.0,   +42, 23, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Aps",  6102,  16, 36, 20.7,   -78, 56, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "tau",      "Sco",  6165,  16, 37, 02.2,   -28, 15, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6166,  16, 37, 35.7,   -35, 17, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "zeta",     "Oph",  6175,  16, 38, 10.8,   -10, 36, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Her",  6200,  16, 39, 15.1,   +48, 53, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(40,   "zeta",     "Her",  6212,  16, 41, 59.1,   +31, 34, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6196,  16, 42, 38.7,   -17, 46, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(44,   "eta",      "Her",  6220,  16, 43, 31.9,   +38, 53, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "epsilon",  "UMi",  6322,  16, 44, 08.3,   +82, 00, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6237,  16, 45, 39.0,   +56, 44, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Aps",  6163,  16, 45, 45.7,   -77, 33, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "TrA",  6217,  16, 50, 38.4,   -69, 03, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Oph",  6243,  16, 50, 51.5,   -10, 48, 51);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(26,   "epsilon",  "Sco",  6241,  16, 51, 21.9,   -34, 19, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Ara",  6229,  16, 51, 23.5,   -59, 04, 20);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Her",  6270,  16, 52, 31.3,   +24, 37, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu^1",     "Sco",  6247,  16, 53, 07.6,   -38, 04, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu^2",     "Sco",  6252,  16, 53, 35.5,   -38, 02, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Her",  6279,  16, 53, 40.2,   +31, 40, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(25,   "iota",     "Oph",  6281,  16, 54, 53.0,   +10, 08, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta^2",   "Sco",  6271,  16, 55, 53.3,   -42, 23, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "kappa",    "Oph",  6299,  16, 58, 32.7,   +9, 20, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Ara",  6285,  17, 00, 09.4,   -56, 01, 02);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(58,   "epsilon",  "Her",  6324,  17, 00, 59.9,   +30, 54, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon^1", "Ara",  6295,  17, 01, 03.8,   -53, 11, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Oph",  6318,  17, 02, 02.2,   -4, 14, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Her",  6332,  17, 02, 17.4,   +33, 32, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Her",  6355,  17, 06, 14.2,   +12, 43, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "zeta",     "Dra",  6396,  17, 08, 50.6,   +65, 41, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(35,   "eta",      "Oph",  6378,  17, 11, 26.4,   -15, 44, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Sco",  6380,  17, 13, 28.9,   -43, 15, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(64,   "alpha^1",  "Her",  6406,  17, 15, 29.5,   +14, 22, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(67,   "pi",       "Her",  6418,  17, 15, 41.5,   +36, 47, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(65,   "delta",    "Her",  6410,  17, 15, 47.5,   +24, 49, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v656",       "Her",  6452,  17, 21, 07.8,   +18, 02, 21);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Her",  6458,  17, 21, 21.2,   +32, 26, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(53,   "nu",      "Ser",  6446,  17, 21, 52.2,   -12, 51, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(40,   "xi",      "Oph",  6445,  17, 22, 07.0,   -21, 07, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(42,   "theta",   "Oph",  6453,  17, 23, 08.8,   -25, 00, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Aps",  6411,  17, 24, 10.3,   -70, 08, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "delta",   "UMi",  6789,  17, 26, 20.2,   +86, 34, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Ara",  6461,  17, 26, 50.5,   -55, 32, 43);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Ara",  6462,  17, 26, 57.3,   -56, 23, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(49,   "sigma",    "Oph",  6498,  17, 27, 26.0,   +4, 07, 3);

/* !! START HERE:  */

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Oph",  6486,  17, 27, 30.1,   -24, 11, 27);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6493,  17, 27, 36.8,   -5, 06, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Oph",  6492,  17, 28, 32.2,   -29, 52, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "beta",     "Dra",  6536,  17, 30, 51.1,   +52, 17, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(76,   "lambda",   "Her",  6526,  17, 31, 29.2,   +26, 05, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Dra",  6566,  17, 31, 53.6,   +68, 07, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,   "upsilon",  "Sco",  6508,  17, 32, 01.4,   -37, 18, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,   "nu^1",     "Dra",  6554,  17, 32, 32.5,   +55, 10, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(25,   "nu^2",     "Dra",  6555,  17, 32, 38.0,   +55, 09, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Ara",  6500,  17, 32, 46.4,   -60, 41, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Ara",  6510,  17, 33, 16.4,   -49, 53, 20);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(35,   "lambda",   "Sco",  6527,  17, 34, 52.0,   -37, 06, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(55,   "alpha",    "Oph",  6556,  17, 35, 47.6,   +12, 32, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(28,   "omega",    "Dra",  6596,  17, 36, 50.7,   +68, 44, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6546,  17, 37, 49.4,   -38, 38, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(55,   "xi",       "Ser",  6561,  17, 38, 38.8,   -15, 24, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Sco",  6553,  17, 38, 39.0,   -43, 00, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(85,   "iota",     "Her",  6588,  17, 39, 59.3,   +45, 59, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(31,   "psi",      "Dra",  6636,  17, 41, 36.9,   +72, 08, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(56,  "o",         "Ser",  6581,  17, 42, 27.3,   -12, 53, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa",    "Sco",  6580,  17, 43, 46.1,   -39, 02, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Her",  6608,  17, 44, 07.1,   +24, 19, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(60,   "beta",     "Oph",  6603,  17, 44, 23.2,   +4, 33, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Oph",  6595,  17, 44, 32.4,   -21, 41, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu",       "Ara",  6585,  17, 45, 36.9,   -51, 50, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(86,   "mu",       "Her",  6623,  17, 47, 11.0,   +27, 42, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Pav",  6582,  17, 47, 33.1,   -64, 43, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Dra",  6701,  17, 48, 37.5,   +76, 57, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,  "X",         "Sgr",  6616,  17, 48, 43.5,   -27, 50, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(62,   "gamma",    "Oph",  6629,  17, 48, 49.3,   +2, 42, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota^1",   "Sco",  6615,  17, 48, 52.8,   -40, 07, 56);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6630,  17, 51, 07.1,   -37, 02, 51);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(32,   "xi",       "Dra",  6688,  17, 53, 51.0,   +56, 52, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(89, "v441",       "Her",  6685,  17, 56, 10.0,   +26, 02, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(91,   "theta",    "Her",  6695,  17, 56, 53.3,   +37, 14, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(33,   "gamma",    "Dra",  6705,  17, 57, 02.2,   +51, 29, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(92,   "xi",       "Her",  6703,  17, 58, 29.0,   +29, 14, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(94,   "nu",       "Her",  6707,  17, 59, 12.7,   +30, 11, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(64,   "nu",       "Oph",  6698,  18, 00, 02.7,   -9, 46, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Her",  6713,  18, 00, 52.9,   +16, 45, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Oph",  6714,  18, 01, 34.3,   +2, 55, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Oph",  6723,  18, 02, 41.5,   +1, 18, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "W",         "Sgr",  6742,  18, 06, 12.1,   -29, 34, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Oph",  6752,  18, 06, 23.2,   +2, 29, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "gamma",    "Sgr",  6746,  18, 06, 59.8,   -30, 25, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6791,  18, 08, 02.2,   +43, 27, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Ara",  6743,  18, 08, 04.3,   -50, 05, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Oph",  6771,  18, 08, 13.6,   +9, 34, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(103,  "o",         "Her",  6779,  18, 08, 15.9,   +28, 45, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Her",  6787,  18, 09, 33.0,   +20, 49, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "pi",       "Pav",  6745,  18, 10, 21.6,   -63, 39, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Tel",  6783,  18, 12, 36.1,   -45, 56, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Dra",  6850,  18, 14, 00.2,   +64, 24, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "mu",       "Sgr",  6812,  18, 14, 52.2,   -21, 03, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6819,  18, 18, 41.0,   -56, 00, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Sgr",  6832,  18, 18, 52.7,   -36, 45, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(43,   "phi",      "Dra",  6920,  18, 20, 29.4,   +71, 20, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "kappa",    "Lyr",  6872,  18, 20, 30.6,   +36, 04, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(44,   "chi",      "Dra",  6927,  18, 20, 43.3,   +72, 44, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Oph",  6866,  18, 21, 47.5,   +3, 23, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(19,   "delta",    "Sgr",  6859,  18, 22, 10.7,   -29, 49, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(58,   "eta",      "Ser",  6869,  18, 22, 16.1,   -2, 53, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Her",  6895,  18, 24, 29.2,   +21, 46, 46);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "xi",       "Pav",  6855,  18, 24, 55.8,   -61, 28, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,   "epsilon",  "Sgr",  6879,  18, 25, 24.0,   -34, 22, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Tel",  6897,  18, 28, 20.6,   -45, 57, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "lambda",   "Sgr",  6913,  18, 29, 06.7,   -25, 24, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Sct",  6930,  18, 30, 15.1,   -14, 33, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Tel",  6905,  18, 30, 15.3,   -49, 03, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Ser",  6935,  18, 30, 38.8,   -1, 58, 19);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Cra",  6951,  18, 34, 49.4,   -42, 17, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Sct",  6973,  18, 36, 12.8,   -8, 13, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   6985,  18, 37, 20.8,   +9, 08, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,   "alpha",    "Lyr",  7001,  18, 37, 33.9,   +38, 48, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Sct",  7020,  18, 43, 17.2,   -9, 02, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Sct",  7032,  18, 44, 31.7,   -8, 15, 20);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Pav",  6982,  18, 45, 11.2,   -71, 24, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "zeta^1",   "Lyr",  7056,  18, 45, 24.6,   +37, 37, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Dra",  7124,  18, 45, 45.8,   +75, 27, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Her",  7061,  18, 46, 27.5,   +20, 33, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "phi",      "Sgr",  7039,  18, 46, 48.7,   -26, 58, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   7064,  18, 46, 49.2,   +26, 40, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Her",  7069,  18, 47, 50.3,   +18, 12, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Sct",  7063,  18, 48, 09.4,   -4, 43, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "R",         "Sct",  7066,  18, 48, 28.2,   -5, 41, 02);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta^1",    "CrA",  7062,  18, 50, 10.5,   -43, 39, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "beta",     "Lyr",  7106,  18, 50, 45.8,   +33, 23, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(47,  "o",         "Dra",  7125,  18, 51, 28.4,   +59, 24, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "lambda",   "Pav",  7074,  18, 53, 55.5,   -62, 09, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(52,   "upsilon",  "Dra",  7180,  18, 54, 09.9,   +71, 19, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(12,   "delta^2",  "Lyr",  7139,  18, 55, 09.1,   +36, 55, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,  "R",         "Lyr",  7157,  18, 55, 53.9,   +43, 58, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,   "sigma",    "Sgr",  7121,  18, 56, 24.7,   -26, 16, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(63,   "theta^1",  "Ser",  7141,  18, 57, 08.3,   +4, 13, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(37,   "xi^2",     "Sgr",  7150,  18, 58, 50.0,   -21, 04, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "kappa",    "Pav",  7107,  18, 58, 50.9,   -67, 12, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(14,   "gamma",    "Lyr",  7178,  18, 59, 38.2,   +32, 42, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "lambda",   "Tel",  7134,  18, 59, 56.3,   -52, 54, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "epsilon",  "Aql",  7176,  19, 00, 27.7,   +15, 05, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Aql",  7193,  19, 02, 40.1,   -5, 42, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(38,   "zeta",     "Sgr",  7194,  19, 03, 47.2,   -29, 51, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "chi",      "Oct",  6721,  19, 05, 11.0,   -87, 34, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(39,  "o",         "Sgr",  7217,  19, 05, 47.4,   -21, 42, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(17,   "zeta",     "Aql",  7235,  19, 06, 15.6,   +13, 53, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "lambda",   "Aql",  7236,  19, 07, 13.8,   -4, 51, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(18,   "iota",     "Lyr",  7262,  19, 07, 57.8,   +36, 07, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(40,   "tau",      "Sgr",  7234,  19, 08, 05.6,   -27, 38, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "CrA",  7254,  19, 10, 43.7,   -37, 52, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(41,   "pi",       "Sgr",  7264,  19, 10, 51.8,   -20, 59, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "CrA",  7259,  19, 11, 17.9,   -39, 18, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(57,   "delta",    "Dra",  7310,  19, 12, 33.3,   +67, 41, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Aql",  7279,  19, 13, 40.9,   -7, 54, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,   "eta",      "Lyr",  7298,  19, 14, 23.3,   +39, 10, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(60,   "tau",      "Dra",  7352,  19, 15, 11.1,   +73, 23, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(21,   "theta",    "Lyr",  7314,  19, 17, 00.6,   +38, 10, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "kappa",    "Cyg",  7328,  19, 17, 31.8,   +53, 24, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(25,   "omega^1",  "Aql",  7315,  19, 18, 41.1,   +11, 37, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Sgr",  7304,  19, 18, 42.9,   -18, 55, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(44,   "rho^1",    "Sgr",  7340,  19, 22, 44.7,   -17, 48, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(46,   "upsilon",  "Sgr",  7342,  19, 22, 47.1,   -15, 55, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta^1",   "Sgr",  7337,  19, 23, 57.8,   -44, 25, 21);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta^2",   "Sgr",  7343,  19, 24, 33.1,   -44, 45, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Sgr",  7348,  19, 25, 09.9,   -40, 34, 46);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Aql",  7373,  19, 25, 51.1,   +11, 59, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(30,   "delta",    "Aql",  7377,  19, 26, 25.8,   +3, 09, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "alpha",    "Vul",  7405,  19, 29, 28.5,   +24, 42, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "iota^2",   "Cyg",  7420,  19, 30, 10.3,   +51, 46, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "beta",     "Cyg",  7417,  19, 31, 28.1,   +27, 59, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Aql",  7414,  19, 31, 37.9,   -2, 44, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(61,   "sigma",    "Dra",  7462,  19, 32, 19.2,   +69, 41, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Cyg",  7426,  19, 32, 27.6,   +34, 29, 36);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(38,   "mu",       "Aql",  7429,  19, 34, 59.6,   +7, 25, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Tel",  7424,  19, 36, 35.0,   -48, 03, 27);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "theta",    "Cyg",  7469,  19, 36, 56.3,   +50, 15, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(41,   "iota",     "Aql",  7447,  19, 37, 40.7,   -1, 14, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Sgr",  7440,  19, 37, 49.9,   -24, 50, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(39,   "kappa",    "Aql",  7446,  19, 37, 53.1,   -6, 59, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "alpha",    "Sge",  7479,  19, 40, 55.4,   +18, 03, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   7495,  19, 41, 24.4,   +45, 34, 10);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Sgr",  7476,  19, 41, 46.9,   -16, 14, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "beta",     "Sge",  7488,  19, 41, 52.8,   +17, 31, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Cyg",  7503,  19, 42, 18.5,   +50, 34, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Cyg",  7504,  19, 42, 21.5,   +50, 33, 40);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Sgr",  7489,  19, 43, 34.5,   -16, 04, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Vul",  7506,  19, 44, 29.1,   +25, 49, 02);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Cyg",  7517,  19, 44, 56.7,   +37, 24, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(18,   "delta",    "Cyg",  7528,  19, 45, 33.2,   +45, 10, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(50,   "gamma",    "Aql",  7525,  19, 47, 08.3,   +10, 39, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Sgr",  7515,  19, 47, 26.4,   -19, 42, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(63,   "epsilon",  "Dra",  7582,  19, 48, 06.1,   +70, 18, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "delta",    "Sge",  7536,  19, 48, 12.7,   +18, 34, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "nu",       "Tel",  7510,  19, 49, 31.3,   -56, 18, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "chi",      "Cyg",  7564,  19, 51, 16.6,   +32, 57, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(53,   "alpha",    "Aql",  7557,  19, 51, 41.1,   +8, 55, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Aql",  7553,  19, 51, 47.8,   -10, 42, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   7589,  19, 52, 32.5,   +47, 04, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v3961",      "Sgr",  7552,  19, 53, 05.7,   -39, 49, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Sge",  7574,  19, 53, 11.3,   +18, 43, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(55,   "eta",      "Aql",  7570,  19, 53, 24.9,   +1, 03, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v1291",      "Aql",  7575,  19, 54, 16.8,   -3, 03, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(60,   "beta",     "Aql",  7602,  19, 56, 13.3,   +6, 27, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Sgr",  7581,  19, 56, 32.0,   -41, 49, 05);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(21,   "eta",      "Cyg",  7615,  19, 57, 00.0,   +35, 08, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Sgr",  7614,  19, 58, 59.9,   -15, 26, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(12,   "gamma",    "Sge",  7635,  19, 59, 34.8,   +19, 32, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta^1",  "Sgr",  7623,  20, 00, 56.2,   -35, 13, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,  "NT",        "Vul",  7653,  20, 01, 51.8,   +27, 48, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Pav",  7590,  20, 02, 42.0,   -72, 51, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(62, "v3872",      "Sgr",  7650,  20, 03, 47.5,   -27, 39, 25);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,   "kappa",    "Cep",  7750,  20, 08, 14.0,   +77, 45, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "xi",       "Tel",  7673,  20, 08, 47.7,   -52, 49, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(28, "v1624",      "Cyg",  7708,  20, 10, 06.9,   +36, 53, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Pav",  7665,  20, 10, 31.4,   -66, 07, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(65,   "theta",    "Aql",  7710,  20, 12, 15.5,   -0, 45, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Cyg",  7740,  20, 13, 49.6,   +56, 37, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(31,  "o^1",       "Cyg",  7735,  20, 14, 12.9,   +46, 47, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(67,   "rho",      "Aql",  7724,  20, 15, 08.0,   +15, 15, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(32,  "o^2",       "Cyg",  7751,  20, 16, 02.6,   +47, 46, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Vul",  7753,  20, 17, 34.6,   +24, 43, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,  "P",         "Cyg",  7763,  20, 18, 28.1,   +38, 05, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "alpha^1",  "Cap",  7747,  20, 18, 40.3,   -12, 26, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "alpha^2",  "Cap",  7754,  20, 19, 04.7,   -12, 29, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "beta",     "Cap",  7776,  20, 22, 02.9,   -14, 43, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(37,   "gamma",    "Cyg",  7796,  20, 22, 53.6,   +40, 19, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   7794,  20, 24, 05.7,   +5, 24, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Cyg",  7806,  20, 24, 36.0,   +32, 15, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Pav",  7790,  20, 27, 06.0,   -56, 40, 27);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "theta",    "Cep",  7850,  20, 29, 53.3,   +63, 03, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Cyg",  7834,  20, 30, 09.1,   +30, 25, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Aql",  7831,  20, 30, 37.0,   -2, 49, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(73,  "AF",        "Dra",  7879,  20, 31, 14.6,   +75, 01, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "epsilon",  "Del",  7852,  20, 34, 05.8,   +11, 22, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "beta",     "Del",  7882,  20, 38, 25.0,   +14, 39, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Ind",  7869,  20, 38, 51.6,   -47, 13, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Aql",  7884,  20, 39, 17.5,   -1, 02, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Vul",  7891,  20, 39, 20.9,   +21, 16, 01);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "kappa",    "Del",  7896,  20, 40, 01.7,   +10, 09, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "alpha",    "Del",  7906,  20, 40, 29.8,   +15, 58, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(15,   "upsilon",  "Cap",  7900,  20, 41, 06.0,   -18, 04, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Cyg",  7921,  20, 41, 47.5,   +32, 22, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(50,   "alpha",    "Cyg",  7924,  20, 42, 03.8,   +45, 20, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(11,   "delta",    "Del",  7928,  20, 44, 19.4,   +15, 08, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "eta",      "Ind",  7920,  20, 45, 23.2,   -51, 51, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,   "eta",      "Cep",  7957,  20, 45, 39.8,   +61, 54, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   7955,  20, 45, 48.6,   +57, 38, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Cyg",  7942,  20, 46, 25.6,   +30, 47, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Pav",  7913,  20, 46, 36.2,   -66, 08, 06);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(53,   "epsilon",  "Cyg",  7949,  20, 46, 57.6,   +34, 02, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "psi",      "Cap",  7936,  20, 47, 11.3,   -25, 12, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(12,   "gamma^2",  "Del",  7948,  20, 47, 31.0,   +16, 11, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(54,   "lambda",   "Cyg",  7963,  20, 48, 07.8,   +36, 33, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2,   "epsilon",  "Aqr",  7950,  20, 48, 40.5,   -9, 25, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,  "EN",        "Aqr",  7951,  20, 48, 42.7,   -4, 57, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(55, "v1661",      "Cyg",  7977,  20, 49, 34.1,   +46, 11, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Mic",  7943,  20, 49, 44.0,   -43, 55, 11);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(18,   "omega",    "Cap",  7980,  20, 52, 55.3,   -26, 50, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "mu",       "Aqr",  7990,  20, 53, 39.0,   -8, 54, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Vul",  8008,  20, 55, 21.0,   +28, 07, 44);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Ind",  7986,  20, 56, 14.5,   -58, 22, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8023,  20, 57, 14.0,   +44, 59, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(58,   "nu",       "Cyg",  8028,  20, 57, 51.9,   +41, 14, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Vul",  8032,  20, 59, 06.0,   +22, 23, 54);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(59, "v832",       "Cyg",  8047,  21, 00, 27.4,   +47, 35, 38);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,  "AO",        "Cap",  8033,  21, 00, 39.1,   -18, 57, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Mic",  8039,  21, 02, 25.3,   -32, 11, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Mic",  8048,  21, 04, 08.5,   -38, 33, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(62,   "xi",       "Cyg",  8079,  21, 05, 36.3,   +44, 00, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Oct",  8021,  21, 06, 53.7,   -76, 57, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "theta",    "Cap",  8075,  21, 06, 59.1,   -17, 09, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(61, "v1803",      "Cyg",  8085,  21, 07, 43.8,   +38, 50, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Cyg",  8086,  21, 07, 45.1,   +38, 50, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Cap",  8080,  21, 08, 12.4,   -24, 55, 51);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(13,   "nu",       "Aqr",  8093,  21, 10, 36.0,   -11, 17, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "gamma",    "Equ",  8097,  21, 11, 14.5,   +10, 12, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(64,   "zeta",     "Cyg",  8115,  21, 13, 43.5,   +30, 18, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8110,  21, 14, 22.9,   -27, 32, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "o",         "Pav",  8092,  21, 15, 02.7,   -70, 02, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "delta",    "Equ",  8123,  21, 15, 22.9,   +10, 04, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(65,   "tau",      "Cyg",  8130,  21, 15, 31.9,   +38, 07, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "alpha",    "Equ",  8131,  21, 16, 44.9,   +5, 19, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(67,   "sigma",    "Cyg",  8143,  21, 18, 08.6,   +39, 28, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(66,   "upsilon",  "Cyg",  8146,  21, 18, 40.8,   +34, 58, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5,   "alpha",    "Cep",  8162,  21, 19, 01.2,   +62, 39, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Mic",  8135,  21, 19, 03.3,   -32, 05, 39);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Ind",  8140,  21, 21, 10.4,   -53, 22, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta^1",  "Mic",  8151,  21, 21, 56.3,   -40, 43, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Peg",  8173,  21, 22, 56.6,   +19, 53, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(32,   "iota",     "Cap",  8167,  21, 23, 16.4,   -16, 45, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "sigma",    "Oct",  7228,  21, 24, 02.0,   -88, 52, 43);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Aqr",  8187,  21, 25, 12.0,   -12, 47, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Cyg",  8209,  21, 26, 32.5,   +36, 44, 53);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,   "zeta",     "Cap",  8204,  21, 27, 43.2,   -22, 19, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Pav",  8181,  21, 27, 57.0,   -65, 16, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "beta",     "Cep",  8238,  21, 28, 53.5,   +70, 38, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Cap",  8213,  21, 29, 46.5,   -21, 43, 33);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Cyg",  8228,  21, 30, 08.0,   +46, 37, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(2, "",             "Peg",  8225,  21, 30, 47.2,   +23, 43, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "beta",     "Aqr",  8232,  21, 32, 31.9,   -5, 29, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(73,   "rho",      "Cyg",  8252,  21, 34, 40.7,   +45, 40, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Cyg",  8266,  21, 37, 41.6,   +40, 29, 50);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "v337",       "Cep",  8279,  21, 38, 25.0,   +62, 09, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Peg",  8267,  21, 38, 37.4,   +19, 24, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "xi",       "Aqr",  8264,  21, 38, 44.1,   -7, 46, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Cyg",  8284,  21, 40, 54.8,   +43, 21, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(40,   "gamma",    "Cap",  8278,  21, 41, 06.8,   -16, 34, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Cep",  8317,  21, 42, 11.2,   +71, 23, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "nu",       "Oct",  8254,  21, 43, 28.1,   -77, 18, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu",       "Cep",  8316,  21, 44, 04.5,   +58, 51, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "epsilon",  "Peg",  8308,  21, 45, 05.7,   +9, 57, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Peg",  8313,  21, 45, 23.3,   +17, 26, 08);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "kappa",    "Peg",  8315,  21, 45, 29.1,   +25, 43, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "nu",       "Cep",  8334,  21, 45, 59.0,   +61, 12, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9,   "iota",     "PsA",  8305,  21, 46, 02.6,   -32, 56, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(81,   "pi^2",     "Cyg",  8335,  21, 47, 28.7,   +49, 23, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(49,   "delta",    "Cap",  8322,  21, 48, 03.6,   -16, 02, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Peg",  8343,  21, 50, 39.9,   +30, 15, 40);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "o",         "Ind",  8333,  21, 52, 19.3,   -69, 32, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Peg",  8356,  21, 53, 54.4,   +26, 00, 46);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(51,   "mu",       "Cap",  8351,  21, 54, 18.2,   -13, 27, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Gru",  8353,  21, 55, 02.6,   -37, 16, 37);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Cep",  8371,  21, 55, 30.6,   +56, 41, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Ind",  8368,  21, 59, 09.9,   -54, 54, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(17,   "xi",       "Cep",  8417,  22, 04, 19.7,   +64, 43, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Ind",  8387,  22, 04, 45.7,   -56, 42, 32);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Cep",  8426,  22, 05, 34.3,   +62, 52, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Cep",  8428,  22, 05, 43.1,   +62, 22, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(34,   "alpha",    "Aqr",  8414,  22, 06, 44.0,   -0, 13, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "lambda",   "Gru",  8411,  22, 07, 13.4,   -39, 27, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(33,   "iota",     "Aqr",  8418,  22, 07, 26.0,   -13, 46, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,   "iota",     "Peg",  8430,  22, 07, 52.4,   +25, 26, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Gru",  8425,  22, 09, 23.4,   -46, 52, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(14,   "mu",       "PsA",  8431,  22, 09, 27.5,   -32, 53, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Cep",  8468,  22, 10, 09.5,   +72, 25, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(29,   "pi",       "Peg",  8454,  22, 10, 48.7,   +33, 16, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(26,   "theta",    "Peg",  8450,  22, 11, 08.0,   +6, 17, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8546,  22, 11, 21.9,   +86, 12, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(21,   "zeta",     "Cep",  8465,  22, 11, 29.9,   +58, 17, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "lambda",   "Cep",  8469,  22, 12, 08.4,   +59, 30, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8485,  22, 14, 40.5,   +39, 48, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "lambda",   "PsA",  8478,  22, 15, 21.4,   -27, 40, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "epsilon",  "Cep",  8494,  22, 15, 43.3,   +57, 08, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Lac",  8498,  22, 16, 46.7,   +37, 50, 29);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(43,   "theta",    "Aqr",  8499,  22, 17, 48.5,   -7, 41, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "alpha",    "Tuc",  8502,  22, 19, 45.2,   -60, 10, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Oct",  8481,  22, 22, 00.1,   -80, 20, 47);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(31,  "IN",        "Peg",  8520,  22, 22, 25.7,   +12, 17, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Aqr",  8516,  22, 22, 36.5,   -21, 30, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(48,   "gamma",    "Aqr",  8518,  22, 22, 36.7,   -1, 17, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3,   "beta",     "Lac",  8538,  22, 24, 17.5,   +52, 19, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(52,   "pi",       "Aqr",  8539,  22, 26, 13.3,   +1, 28, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Tuc",  8540,  22, 28, 37.7,   -64, 52, 17);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "nu",       "Gru",  8552,  22, 29, 43.9,   -39, 02, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(55,   "zeta^2",   "Aqr",  8559,  22, 29, 47.0,   +0, 04, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(27,   "delta",    "Cep",  8571,  22, 29, 51.7,   +58, 30, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(29,   "rho^2",    "Cep",  8591,  22, 30, 01.8,   +78, 55, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Lac",  8572,  22, 30, 18.3,   +47, 48, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta^1",  "Gru",  8556,  22, 30, 22.1,   -43, 24, 02);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta^2",  "Gru",  8560,  22, 30, 51.3,   -43, 39, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Lac",  8579,  22, 31, 17.4,   +43, 13, 07);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(57,   "sigma",    "Aqr",  8573,  22, 31, 37.5,   -10, 34, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "alpha",    "Lac",  8585,  22, 32, 03.5,   +50, 22, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(17,   "beta",     "PsA",  8576,  22, 32, 33.2,   -32, 15, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(59,   "upsilon",  "Aqr",  8592,  22, 35, 42.2,   -20, 36, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Cep",  8615,  22, 36, 13.5,   +73, 44, 22);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(62,   "eta",      "Aqr",  8597,  22, 36, 18.4,   -0, 01, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(63,   "kappa",    "Aqr",  8610,  22, 38, 42.8,   -4, 07, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Cep",  8627,  22, 39, 18.7,   +63, 40, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Lac",  8622,  22, 40, 05.7,   +39, 08, 49);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8626,  22, 40, 24.7,   +37, 41, 23);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1, "",             "Lac",  8632,  22, 41, 19.7,   +44, 22, 24);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(18,   "epsilon",  "PsA",  8628,  22, 41, 40.5,   -26, 56, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(42,   "zeta",     "Peg",  8634,  22, 42, 23.1,   +10, 55, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Gru",  8636,  22, 43, 45.8,   -46, 47, 14);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(44,   "eta",      "Peg",  8650,  22, 43, 52.3,   +30, 19, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(3, "",             "Lac",  8656,  22, 44, 55.2,   +41, 55, 00);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(47,   "lambda",   "Peg",  8667,  22, 47, 25.5,   +23, 39, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(46,   "xi",       "Peg",  8665,  22, 47, 37.1,   +12, 16, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Oct",  8630,  22, 47, 50.7,   -81, 17, 02);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Aqr",  8670,  22, 48, 32.6,   -19, 30, 59);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "epsilon",  "Gru",  8675,  22, 49, 39.8,   -51, 13, 09);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(32,   "iota",     "Cep",  8694,  22, 50, 20.6,   +66, 17, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(71,   "tau",      "Aqr",  8679,  22, 50, 34.2,   -13, 29, 4);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(48,   "mu",       "Peg",  8684,  22, 50, 53.9,   +24, 41, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8685,  22, 52, 05.0,   -39, 03, 30);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(22,   "gamma",    "PsA",  8695,  22, 53, 33.0,   -32, 46, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(73,   "lambda",   "Aqr",  8698,  22, 53, 34.7,   -7, 28, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8748,  22, 54, 11.9,   +84, 26, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(76,   "delta",    "Aqr",  8709,  22, 55, 37.8,   -15, 43, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(23,   "delta",    "PsA",  8720,  22, 56, 58.1,   -32, 26, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8726,  22, 57, 14.9,   +49, 49, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(24,   "alpha",    "PsA",  8728,  22, 58, 40.1,   -29, 31, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8732,  22, 59, 36.5,   -35, 25, 28);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "v509",       "Cas",  8752,  23, 00, 52.2,   +57, 02, 42);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "zeta",     "Gru",  8747,  23, 01, 57.8,   -52, 39, 16);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(1,  "o",         "And",  8762,  23, 02, 46.6,   +42, 25, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "pi",       "PsA",  8767,  23, 04, 31.0,   -34, 38, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(53,   "beta",     "Peg",  8775,  23, 04, 40.4,   +28, 11, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4,   "beta",     "Psc",  8773,  23, 04, 49.1,   +3, 55, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(54,   "alpha",    "Peg",  8781,  23, 05, 41.0,   +15, 18, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Aqr",  8789,  23, 07, 40.3,   -23, 38, 34);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "theta",    "Gru",  8787,  23, 07, 54.9,   -43, 25, 13);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(5, "",             "Peg",  8795,  23, 07, 56.2,   +9, 30, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(33,   "pi",       "Cep",  8819,  23, 08, 29.4,   +75, 29, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Aqr",  8812,  23, 10, 25.8,   -21, 04, 18);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Gru",  8820,  23, 11, 23.9,   -45, 08, 46);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Peg",  8826,  23, 12, 40.3,   +8, 49, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(90,   "phi",      "Aqr",  8834,  23, 15, 16.8,   -5, 56, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(91,   "psi^1",    "Aqr",  8841,  23, 16, 51.6,   -8, 59, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6,   "gamma",    "Psc",  8852,  23, 18, 07.5,   +3, 23, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Tuc",  8848,  23, 18, 29.8,   -58, 08, 03);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(93,   "psi^2",    "Aqr",  8858,  23, 18, 51.8,   -9, 04, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "gamma",    "Scl",  8863,  23, 19, 49.1,   -32, 25, 52);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(95,   "psi^3",    "Aqr",  8865,  23, 19, 55.4,   -9, 30, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(62,   "tau",      "Peg",  8880,  23, 21, 33.3,   +23, 50, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8, "",             "Aqr",  8892,  23, 23, 56.4,   -19, 59, 58);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(4, "",             "Cas",  8904,  23, 25, 40.1,   +62, 23, 04);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(68,   "upsilon",  "Peg",  8905,  23, 26, 18.3,   +23, 30, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(9, "",             "Aqr",  8906,  23, 27, 01.0,   -20, 32, 26);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(8,   "kappa",    "Psc",  8911,  23, 27, 52.9,   +1, 21, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(10,   "theta",    "Psc",  8916,  23, 28, 54.4,   +6, 28, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Peg",  8923,  23, 30, 05.5,   +12, 51, 46);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "tau",      "Oct",  8862,  23, 30, 15.0,   -87, 22, 48);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8924,  23, 30, 29.4,   -4, 25, 55);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "beta",     "Scl",  8937,  23, 33, 57.5,   -37, 42, 57);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8952,  23, 35, 47.9,   +71, 44, 40);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "iota",     "Phe",  8949,  23, 36, 03.9,   -42, 30, 45);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(16,   "lambda",   "And",  8961,  23, 38, 28.5,   +46, 33, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   8959,  23, 38, 50.4,   -45, 23, 24);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(17,   "iota",     "And",  8965,  23, 39, 03.0,   +43, 22, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(35,   "gamma",    "Cep",  8974,  23, 40, 07.5,   +77, 44, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(17,   "iota",     "Psc",  8969,  23, 40, 54.2,   +5, 43, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(19,   "kappa",    "And",  8976,  23, 41, 19.5,   +44, 26, 1);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "mu",       "Scl",  8975,  23, 41, 36.2,   -31, 58, 15);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(18,   "lambda",   "Psc",  8984,  23, 42, 59.5,   +1, 52, 5);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(105,   "omega^2",  "Aqr",  8988,  23, 43, 40.8,   -14, 26, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(6, "",             "Aqr",  8998,  23, 45, 09.5,   -18, 10, 27);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(20,   "psi",      "And",  9003,  23, 46, 57.4,   +46, 31, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0,  "",       "",   9013,  23, 48, 48.6,   +67, 54, 35);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "",             "Psc",  9012,  23, 48, 53.6,   -2, 39, 31);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "delta",    "Scl",  9016,  23, 49, 53.2,   -28, 01, 41);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(81,   "phi",      "Peg",  9036,  23, 53, 25.9,   +19, 13, 2);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(82,  "HT",        "Peg",  9039,  23, 53, 33.8,   +11, 03, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7,   "rho",      "Cas",  9045,  23, 55, 19.0,   +57, 36, 0);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(84,   "psi",      "Peg",  9064,  23, 58, 42.3,   +25, 14, 3);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(7, "",             "Psc",  9067,  23, 59, 37.2,   -3, 27, 12);

/* **** (4) */

replace into Stars (
   flamsteed_designation_number,
   bayer_designation_greek_letter,
   constellation_abbreviation,
   bs_hr_number,
   right_ascension_hours,
   right_ascension_minutes,
   right_ascension_seconds,
   declination_degrees,
   declination_minutes,
   declination_seconds)
values
(0, "pi",       "Phe",  9069,  23, 59, 52.9,   -52, 38, 33);

-- select * from Stars where common_name <> "" order by bs_hr_number\G

-- select bs_hr_number from Stars order by bs_hr_number;

-- select "Here I am.";

-- select distinct constellation_full_name, constellation_abbreviation, constellation_number from Stars order by constellation_number\G

-- select distinct constellation_full_name, constellation_abbreviation, constellation_number from Stars
where constellation_full_name = "Delphinus";

-- select constellation_full_name from Stars where constellation_full_name\G

-- select distinct constellation_full_name, constellation_abbreviation, constellation_number from Stars
where constellation_number = 0;

-- select distinct constellation_full_name, constellation_abbreviation, constellation_number from Stars
order by constellation_full_name\G

-- select * from Stars where constellation_number = 0\G

/* *** (3) */

/* ** (2) Update Stars, set `constellation_full_name'.  */

/* *** (3) */

update Stars set constellation_full_name = "Andromeda" where constellation_abbreviation = "And";
update Stars set constellation_number = 19 where constellation_abbreviation = "And";

update Stars set constellation_full_name = "Antlia" where constellation_abbreviation = "Ant";
update Stars set constellation_number = 62 where constellation_abbreviation = "Ant";

update Stars set constellation_full_name = "Apus" where constellation_abbreviation = "Aps";
update Stars set constellation_number = 67 where constellation_abbreviation = "Aps";

update Stars set constellation_full_name = "Aquarius" where constellation_abbreviation = "Aqr";
update Stars set constellation_number = 10 where constellation_abbreviation = "Aqr";

update Stars set constellation_full_name = "Aquila" where constellation_abbreviation = "Aql";
update Stars set constellation_number = 22 where constellation_abbreviation = "Aql";

update Stars set constellation_full_name = "Ara" where constellation_abbreviation = "Ara";
update Stars set constellation_number = 63 where constellation_abbreviation = "Ara";

update Stars set constellation_full_name = "Aries" where constellation_abbreviation = "Ari";
update Stars set constellation_number = 39 where constellation_abbreviation = "Ari";

update Stars set constellation_full_name = "Auriga" where constellation_abbreviation = "Aur";
update Stars set constellation_number = 21 where constellation_abbreviation = "Aur";

update Stars set constellation_full_name = "Boötes" where constellation_abbreviation = "Boo";
update Stars set constellation_number = 13 where constellation_abbreviation = "Boo";

update Stars set constellation_full_name = "Caelum" where constellation_abbreviation = "Cae";
update Stars set constellation_number = 81 where constellation_abbreviation = "Cae";

update Stars set constellation_full_name = "Camelopardalis" where constellation_abbreviation = "Cam";
update Stars set constellation_number = 18 where constellation_abbreviation = "Cam";

update Stars set constellation_full_name = "Cancer" where constellation_abbreviation = "Cnc";
update Stars set constellation_number = 31 where constellation_abbreviation = "Cnc";

update Stars set constellation_full_name = "Canes_Venatici" where constellation_abbreviation = "CVn";
update Stars set constellation_number = 38 where constellation_abbreviation = "CVn";

update Stars set constellation_full_name = "Canis_Major" where constellation_abbreviation = "CMa";
update Stars set constellation_number = 43 where constellation_abbreviation = "CMa";

update Stars set constellation_full_name = "Canis_Minor" where constellation_abbreviation = "CMi";
update Stars set constellation_number = 71 where constellation_abbreviation = "CMi";

update Stars set constellation_full_name = "Capricornus" where constellation_abbreviation = "Cap";
update Stars set constellation_number = 40 where constellation_abbreviation = "Cap";

update Stars set constellation_full_name = "Carina" where constellation_abbreviation = "Car";
update Stars set constellation_number = 34 where constellation_abbreviation = "Car";

update Stars set constellation_full_name = "Cassiopeia" where constellation_abbreviation = "Cas";
update Stars set constellation_number = 25 where constellation_abbreviation = "Cas";

update Stars set constellation_full_name = "Centaurus" where constellation_abbreviation = "Cen";
update Stars set constellation_number = 09 where constellation_abbreviation = "Cen";

update Stars set constellation_full_name = "Cepheus" where constellation_abbreviation = "Cep";
update Stars set constellation_number = 27 where constellation_abbreviation = "Cep";

update Stars set constellation_full_name = "Cetus" where constellation_abbreviation = "Cet";
update Stars set constellation_number = 04 where constellation_abbreviation = "Cet";

update Stars set constellation_full_name = "Chamaeleon" where constellation_abbreviation = "Cha";
update Stars set constellation_number = 79 where constellation_abbreviation = "Cha";

update Stars set constellation_full_name = "Circinus" where constellation_abbreviation = "Cir";
update Stars set constellation_number = 85 where constellation_abbreviation = "Cir";

update Stars set constellation_full_name = "Columba" where constellation_abbreviation = "Col";
update Stars set constellation_number = 54 where constellation_abbreviation = "Col";

update Stars set constellation_full_name = "Coma_Berenices" where constellation_abbreviation = "Com";
update Stars set constellation_number = 42 where constellation_abbreviation = "Com";

update Stars set constellation_full_name = "Corona_Australis" where constellation_abbreviation = "CrA";
update Stars set constellation_number = 80 where constellation_abbreviation = "CrA";

update Stars set constellation_full_name = "Corona_Borealis" where constellation_abbreviation = "CrB";
update Stars set constellation_number = 73 where constellation_abbreviation = "CrB";

update Stars set constellation_full_name = "Corvus" where constellation_abbreviation = "Crv";
update Stars set constellation_number = 70 where constellation_abbreviation = "Crv";

update Stars set constellation_full_name = "Crater" where constellation_abbreviation = "Crt";
update Stars set constellation_number = 53 where constellation_abbreviation = "Crt";

update Stars set constellation_full_name = "Crux" where constellation_abbreviation = "Cru";
update Stars set constellation_number = 88 where constellation_abbreviation = "Cru";

update Stars set constellation_full_name = "Cygnus" where constellation_abbreviation = "Cyg";
update Stars set constellation_number = 16 where constellation_abbreviation = "Cyg";

update Stars set constellation_full_name = "Delphinus" where constellation_abbreviation = "Del";
update Stars set constellation_number = 69 where constellation_abbreviation = "Del";

update Stars set constellation_full_name = "Dorado" where constellation_abbreviation = "Dor";
update Stars set constellation_number = 72 where constellation_abbreviation = "Dor";

update Stars set constellation_full_name = "Draco" where constellation_abbreviation = "Dra";
update Stars set constellation_number = 08 where constellation_abbreviation = "Dra";

update Stars set constellation_full_name = "Equuleus" where constellation_abbreviation = "Equ";
update Stars set constellation_number = 87 where constellation_abbreviation = "Equ";

update Stars set constellation_full_name = "Eridanus" where constellation_abbreviation = "Eri";
update Stars set constellation_number = 06 where constellation_abbreviation = "Eri";

update Stars set constellation_full_name = "Fornax" where constellation_abbreviation = "For";
update Stars set constellation_number = 41 where constellation_abbreviation = "For";

update Stars set constellation_full_name = "Gemini" where constellation_abbreviation = "Gem";
update Stars set constellation_number = 30 where constellation_abbreviation = "Gem";

update Stars set constellation_full_name = "Grus" where constellation_abbreviation = "Gru";
update Stars set constellation_number = 45 where constellation_abbreviation = "Gru";

update Stars set constellation_full_name = "Hercules" where constellation_abbreviation = "Her";
update Stars set constellation_number = 05 where constellation_abbreviation = "Her";

update Stars set constellation_full_name = "Horologium" where constellation_abbreviation = "Hor";
update Stars set constellation_number = 58 where constellation_abbreviation = "Hor";

update Stars set constellation_full_name = "Hydra" where constellation_abbreviation = "Hya";
update Stars set constellation_number = 01 where constellation_abbreviation = "Hya";

update Stars set constellation_full_name = "Hydrus" where constellation_abbreviation = "Hyi";
update Stars set constellation_number = 61 where constellation_abbreviation = "Hyi";

update Stars set constellation_full_name = "Indus" where constellation_abbreviation = "Ind";
update Stars set constellation_number = 49 where constellation_abbreviation = "Ind";

update Stars set constellation_full_name = "Lacerta" where constellation_abbreviation = "Lac";
update Stars set constellation_number = 68 where constellation_abbreviation = "Lac";

update Stars set constellation_full_name = "Leo" where constellation_abbreviation = "Leo";
update Stars set constellation_number = 12 where constellation_abbreviation = "Leo";

update Stars set constellation_full_name = "Leo_Minor" where constellation_abbreviation = "LMi";
update Stars set constellation_number = 64 where constellation_abbreviation = "LMi";

update Stars set constellation_full_name = "Lepus" where constellation_abbreviation = "Lep";
update Stars set constellation_number = 51 where constellation_abbreviation = "Lep";

update Stars set constellation_full_name = "Libra" where constellation_abbreviation = "Lib";
update Stars set constellation_number = 29 where constellation_abbreviation = "Lib";

update Stars set constellation_full_name = "Lupus" where constellation_abbreviation = "Lup";
update Stars set constellation_number = 46 where constellation_abbreviation = "Lup";

update Stars set constellation_full_name = "Lynx" where constellation_abbreviation = "Lyn";
update Stars set constellation_number = 28 where constellation_abbreviation = "Lyn";

update Stars set constellation_full_name = "Lyra" where constellation_abbreviation = "Lyr";
update Stars set constellation_number = 52 where constellation_abbreviation = "Lyr";

update Stars set constellation_full_name = "Mensa" where constellation_abbreviation = "Men";
update Stars set constellation_number = 75 where constellation_abbreviation = "Men";

update Stars set constellation_full_name = "Microscopium" where constellation_abbreviation = "Mic";
update Stars set constellation_number = 66 where constellation_abbreviation = "Mic";

update Stars set constellation_full_name = "Monoceros" where constellation_abbreviation = "Mon";
update Stars set constellation_number = 35 where constellation_abbreviation = "Mon";

update Stars set constellation_full_name = "Musca" where constellation_abbreviation = "Mus";
update Stars set constellation_number = 77 where constellation_abbreviation = "Mus";

update Stars set constellation_full_name = "Norma" where constellation_abbreviation = "Nor";
update Stars set constellation_number = 74 where constellation_abbreviation = "Nor";

update Stars set constellation_full_name = "Octans" where constellation_abbreviation = "Oct";
update Stars set constellation_number = 50 where constellation_abbreviation = "Oct";

update Stars set constellation_full_name = "Ophiuchus" where constellation_abbreviation = "Oph";
update Stars set constellation_number = 11 where constellation_abbreviation = "Oph";

update Stars set constellation_full_name = "Orion" where constellation_abbreviation = "Ori";
update Stars set constellation_number = 26 where constellation_abbreviation = "Ori";

update Stars set constellation_full_name = "Pavo" where constellation_abbreviation = "Pav";
update Stars set constellation_number = 44 where constellation_abbreviation = "Pav";

update Stars set constellation_full_name = "Pegasus" where constellation_abbreviation = "Peg";
update Stars set constellation_number = 07 where constellation_abbreviation = "Peg";

update Stars set constellation_full_name = "Perseus" where constellation_abbreviation = "Per";
update Stars set constellation_number = 24 where constellation_abbreviation = "Per";

update Stars set constellation_full_name = "Phoenix" where constellation_abbreviation = "Phe";
update Stars set constellation_number = 37 where constellation_abbreviation = "Phe";

update Stars set constellation_full_name = "Pictor" where constellation_abbreviation = "Pic";
update Stars set constellation_number = 59 where constellation_abbreviation = "Pic";

update Stars set constellation_full_name = "Pisces" where constellation_abbreviation = "Psc";
update Stars set constellation_number = 14 where constellation_abbreviation = "Psc";

update Stars set constellation_full_name = "Piscis_Austrinus" where constellation_abbreviation = "PsA";
update Stars set constellation_number = 60 where constellation_abbreviation = "PsA";

update Stars set constellation_full_name = "Puppis" where constellation_abbreviation = "Pup";
update Stars set constellation_number = 20 where constellation_abbreviation = "Pup";

update Stars set constellation_full_name = "Pyxis" where constellation_abbreviation = "Pyx";
update Stars set constellation_number = 65 where constellation_abbreviation = "Pyx";

update Stars set constellation_full_name = "Reticulum" where constellation_abbreviation = "Ret";
update Stars set constellation_number = 82 where constellation_abbreviation = "Ret";

update Stars set constellation_full_name = "Sagitta" where constellation_abbreviation = "Sge";
update Stars set constellation_number = 86 where constellation_abbreviation = "Sge";

update Stars set constellation_full_name = "Sagittarius" where constellation_abbreviation = "Sgr";
update Stars set constellation_number = 15 where constellation_abbreviation = "Sgr";

update Stars set constellation_full_name = "Scorpius" where constellation_abbreviation = "Sco";
update Stars set constellation_number = 33 where constellation_abbreviation = "Sco";

update Stars set constellation_full_name = "Sculptor" where constellation_abbreviation = "Scl";
update Stars set constellation_number = 36 where constellation_abbreviation = "Scl";

update Stars set constellation_full_name = "Scutum" where constellation_abbreviation = "Sct";
update Stars set constellation_number = 84 where constellation_abbreviation = "Sct";

update Stars set constellation_full_name = "Serpens" where constellation_abbreviation = "Ser";
update Stars set constellation_number = 23 where constellation_abbreviation = "Ser";

update Stars set constellation_full_name = "Sextans" where constellation_abbreviation = "Sex";
update Stars set constellation_number = 47 where constellation_abbreviation = "Sex";

update Stars set constellation_full_name = "Taurus" where constellation_abbreviation = "Tau";
update Stars set constellation_number = 17 where constellation_abbreviation = "Tau";

update Stars set constellation_full_name = "Telescopium" where constellation_abbreviation = "Tel";
update Stars set constellation_number = 57 where constellation_abbreviation = "Tel";

update Stars set constellation_full_name = "Triangulum" where constellation_abbreviation = "Tri";
update Stars set constellation_number = 78 where constellation_abbreviation = "Tri";

update Stars set constellation_full_name = "Triangulum_Australe" where constellation_abbreviation = "TrA";
update Stars set constellation_number = 83 where constellation_abbreviation = "TrA";

update Stars set constellation_full_name = "Tucana" where constellation_abbreviation = "Tuc";
update Stars set constellation_number = 48 where constellation_abbreviation = "Tuc";

update Stars set constellation_full_name = "Ursa_Major" where constellation_abbreviation = "UMa";
update Stars set constellation_number = 03 where constellation_abbreviation = "UMa";

update Stars set constellation_full_name = "Ursa_Minor" where constellation_abbreviation = "UMi";
update Stars set constellation_number = 56 where constellation_abbreviation = "UMi";

update Stars set constellation_full_name = "Vela" where constellation_abbreviation = "Vel";
update Stars set constellation_number = 32 where constellation_abbreviation = "Vel";

update Stars set constellation_full_name = "Virgo" where constellation_abbreviation = "Vir";
update Stars set constellation_number = 02 where constellation_abbreviation = "Vir";

update Stars set constellation_full_name = "Volans" where constellation_abbreviation = "Vol";
update Stars set constellation_number = 76 where constellation_abbreviation = "Vol";

update Stars set constellation_full_name = "Vulpecula" where constellation_abbreviation = "Vul";
update Stars set constellation_number = 55 where constellation_abbreviation = "Vul";

update Stars set constellation_full_name = "Ursa Major" where constellation_abbreviation = "UMa";

update Stars set constellation_full_name = "Canes Venatici" where constellation_abbreviation = "CVn";

update Stars set constellation_full_name = "Coma Berenices" where constellation_abbreviation = "Com";

update Stars set constellation_full_name = "Canis Major" where constellation_abbreviation = "CMa";

update Stars set constellation_full_name = "Ursa Minor" where constellation_abbreviation = "UMi";

update Stars set constellation_full_name = "Piscis Austrinus" where constellation_abbreviation = "PsA";

update Stars set constellation_full_name = "Leo Minor" where constellation_abbreviation = "LMi";

update Stars set constellation_full_name = "Canis Minor" where constellation_abbreviation = "CMi";

update Stars set constellation_full_name = "Corona Borealis" where constellation_abbreviation = "CrB";

update Stars set constellation_full_name = "Corona Australis" where constellation_abbreviation = "CrA";

update Stars set constellation_full_name = "Triangulum Australe" where constellation_abbreviation = "TrA";

/* *** (3)  */

stars_with_celestial_coordinates.txt

http://www.atlasoftheuniverse.com/stars.html

-- select * from Stars where right_ascension_hours = 6 and right_ascension_minutes = 45\G

-- select * from Stars where bayer_designation_greek_letter = "Alpha"\G
-- select * from Stars where bayer_designation_greek_letter = "ALPHA"\G

/* **** (4) */

-- select * from Stars where bayer_designation_greek_letter = "alpha" and constellation_full_name = "canis majoris";

-- select constellation_full_name from Stars order by constellation_full_name\G

-- select distinct constellation_full_name from Stars order by constellation_full_name;

-- select * from Stars\G

-- select * from Stars where common_name = "Sirius"\G

/* **** (4) */

update Stars set common_name = "Sirius", approx_rank_apparent_magnitude = 1
where bayer_designation_greek_letter = "Alpha" and constellation_full_name = "Canis Major";

/* **** (4) */

update Stars set common_name = "Canopus", approx_rank_apparent_magnitude = 2
where bayer_designation_greek_letter = "Alpha" and constellation_full_name = "Carina";

select distinct constellation_full_name from Stars order by constellation_full_name;

-- Numbers are `approx_rank_apparent_magnitude'

3, Alpha Centauri,               Rigil Kentaurus
4, Alpha Boötis,                 Arcturus
5, Alpha Lyra,                  Vega
6, Alpha Auriga,                Capella
7, Beta Orionis,                 Rigel
8, Alpha Canis Minor,          Procyon
9, Alpha Eridani,                Achernar
10, Alpha Orionis,               Betelgeuse
11, Beta Centauri,                Hadar
12, Alpha Aquila,                Altair
13, Alpha Crucis,                 Acrux
14, Alpha Tauri,                  Aldebaran
15, Alpha Scorpii,                Antares
16, Alpha Virginis,               Spica
17, Beta Geminorum,               Pollux
18, Alpha Piscis Austrini,        Fomalhaut
19, Alpha Cygni,                  Deneb
20, Beta Crucis,                  Mimosa
21, Alpha Leonis,                 Regulus
22, Epsilon Canis Major,        Adhara
23, Alpha Geminorum,              Castor
24, Lambda Scorpii,               Shaula
25, Gamma Crucis,                 Gacrux
26, Gamma Orionis,                Bellatrix
27, Beta Tauri,                   Elnath
28, Beta Carina,                 Miaplacidus
29, Epsilon Orionis,              Alnilam
30, Alpha Gruis,                  Alnair
31, Zeta Orionis,                 Alnitak
32, Epsilon Ursa Major,        Alioth
33, Alpha Persei,                 Mirfak
34, Alpha Ursa Major,          Dubhe
35, Gamma Velorum,                Regor
36, Delta Canis Major,          Wezen
37, Epsilon Sagittarii,           Kaus Australis
38, Eta Ursa Major,            Alkaid
39, Theta Scorpii,                Sargas
40, Epsilon Carina,              Avior
41, Beta Auriga,                 Menkalinan
42, Alpha Trianguli Australis,    Atria
43, Gamma Geminorum,              Alhena
44, Alpha Pavonis,                Peacock
45, Delta Velorum,                Koo She
46, Beta Canis Major,           Mirzam
47, Alpha Hydra,                 Alphard
48, Alpha Ursa Minor,          Polaris
49, Gamma Leonis,                 Algieba
50, Alpha Arietis,                Hamal
51, Beta Ceti,                    Diphda
52, Sigma Sagittarii,             Nunki
53, Theta Centauri,               Menkent
54, Alpha Andromeda,             Alpheratz
55, Beta Andromeda,              Mirach
56, Kappa Orionis,                Saiph
57, Beta Ursa Minor,           Kochab
58, Beta Gruis,                   Al Dhanab
59, Alpha Ophiuchi,               Rasalhague
60, Beta Persei,                  Algol
61, Gamma Andromeda,             Almach
62, Beta Leonis,                  Denebola
63, Gamma Cassiopeia,            Cih
64, Gamma Centauri,               Muhlifain
65, Zeta Puppis,                  Naos
66, Iota Carina,                 Aspidiske
67, Alpha Corona Borealis,       Alphecca
68, Lambda Velorum,               Suhail
69, Zeta Ursa Major,           Mizar
70, Gamma Cygni,                  Sadr
71, Alpha Cassiopeia,            Schedar
72, Gamma Draconis,               Eltanin
73, Delta Orionis,                Mintaka
74, Beta Cassiopeia,             Caph
76, Delta Scorpii,                Dschubba
77, Epsilon Scorpii,              Wei
78, Alpha Lupi,                   Men
80, Beta Ursa Major,           Merak
81, Epsilon Boötis,               Izar
82, Epsilon Pegasi,               Enif
83, Kappa Scorpii,                Girtab
84, Alpha Phoenicis,              Ankaa
85, Gamma Ursa Major,          Phecda
86, Eta Ophiuchi,                 Sabik
87, Beta Pegasi,                  Scheat
88, Eta Canis Major,            Aludra
89, Alpha Cephei,                 Alderamin
90, Kappa Velorum,                Markeb
91, Epsilon Cygni,                Gienah
92, Alpha Pegasi,                 Markab
93, Alpha Ceti,                   Menkar
94, Zeta Ophiuchi,                Han
95, Zeta Centauri,                Al Nair
96, Delta Leonis,                 Zosma
97, Beta Scorpii,                 Graffias
98, Alpha Leporis,                Arneb
100, Gamma Corvi,                  Gienah Ghurab
101, Zeta Sagittarii,              Ascella
102, Beta Libra,                  Zubeneschamali
103, Alpha Serpentis,              Unukalhai
104, Beta Arietis,                 Sheratan
105, Alpha Libra,                 Zubenelgenubi
106, Alpha Columba,               Phact
108, Beta Corvi,                   Kraz
109, Delta Cassiopeia,            Ruchbah
110, Eta Boötis,                   Muphrid
111, Beta Lupi,                    Ke Kouan
112, Iota Auriga,                 Hassaleh
115, Upsilon Scorpii,              Lesath
117, Delta Sagittarii,             Kaus Meridionalis 
118, Gamma Aquila,                Tarazed
119, Delta Ophiuchi,               Yed Prior
120, Eta Draconis,                 Aldhibain
122, Gamma Virginis,               Porrima
123, Iota Orionis,                 Hatysa
125, Beta Ophiuchi,                Cebalrai
126, Beta Eridani,                 Kursa
127, Beta Herculis,                Kornephoros
129, Beta Draconis,                Rastaban
130, Alpha Canum Venaticorum,      Cor Caroli
132, Beta Leporis,                 Nihal
133, Zeta Herculis,                Rutilicus
136, Lambda Sagittarii,            Kaus Borealis
137, Gamma Pegasi,                 Algenib
138, Rho Puppis,                   Turais
142, Alpha Ara,                   Choo
143, Eta Tauri,                    Alcyone
144, Epsilon Virginis,             Vindemiatrix
145, Delta Capricorni,             Deneb Algedi
146, Alpha Hydri,                  Head of Hydrus
148, Mu Geminorum,                 Tejat
151, Theta Eridani,                Acamar
152, Pi Sagittarii,                Albaldah
153, Beta Canis Minor,           Gomeisa
156, Sigma Scorpii,                Alniyat
157, Beta Cygni,                   Albireo
158, Beta Aquarii,                 Sadalsuud
161, Eta Pegasi,                   Matar
163, Delta Corvi,                  Algorel
164, Alpha Aquarii,                Sadalmelik
165, Gamma Eridani,                Zaurak
166, Zeta Tauri,                   Alheka
167, Epsilon Leonis,               Ras Elased Australis 
168, Gamma^2 Sagittarii,            Alnasl
171, Zeta Aquila,                 Deneb el Okab
174, Gamma Ursa Minor,          Pherkad Major
178, Zeta Canis Major,           Phurad
180, Epsilon Corvi,                Minkar
181, Epsilon Auriga,              Almaaz
183, Gamma Boötis,                 Seginus
184, Beta Capricorni,              Dabih
185, Epsilon Geminorum,            Mebsuta
186, Mu Ursa Major,             Tania Australis
187, Delta Draconis,               Tais
192, Alpha Indi,                   Persian
193, Beta Columba,                Wazn
194, Iota Ursa Major,           Talita
196, Delta Herculis,               Sarin
197, Kappa Centauri,               Ke Kwan
202, Theta Ursa Major,          Al Haud
203, Zeta Draconis,                Aldhibah
205, Eta Auriga,                  Hoedus II
207, Pi^3 Orionis,                  Tabit
212, Gamma Cephei,                 Errai
214, Epsilon Ophiuchi,             Yed Posterior
215, Eta Serpentis,                Alava
216, Beta Cephei,                  Alphirk
221, Sigma Libra,                 Brachium
222, Gamma Lyra,                  Sulaphat
226, Delta Aquarii,                Skat
229, Iota Draconis,                Edasich
233, Eta Geminorum,                Propus
234, Alpha Herculis,               Rasalgethi
237, Rho Persei,                   Gorgonea Tertia
238, Delta Ursa Major,          Megrez
243, Theta Leonis,                 Chort
244, Xi Puppis,                    Asmidiske
245, Epsilon Cassiopeia,          Segin
246, Eta Orionis,                  Algjebbah
247, Xi Geminorum,                 Alzirr
248, Omicron Ursa Major,        Muscida
251, Zeta Virginis,                Heze
253, Lambda Orionis,               Meissa
255, Delta Virginis,               Auva
263, Zeta Pegasi,                  Homam
264, Alpha Trianguli,              Mothallah
269, Zeta Leonis,                  Adhafera
270, Lambda Aquila,               Althalimain
271, Lambda Ursa Major,         Tania Borealis
272, Beta Lyra,                   Sheliak
273, Eta Cassiopeia,              Achird
274, Eta Ceti,                     Dheneb
277, Gamma Ceti,                   Kaffaljidhma
282, Nu Ursa Major,             Alula Borealis
283, Beta Bootis,                  Nekkar
287, Delta Geminorum,              Wasat
290, Mu Pegasi,                    Sadalbari
291, Delta Eridani,                Rana
292, Omicron Leonis,               Subra
293, Phi Velorum,                  Tseen Ke
295, Theta Pegasi,                 Baham
296, Epsilon Tauri,                Ain
297, Beta Cancri,                  Tarf



/* ** (2)  */


/* ** (2) Select */

select * from Constellations order by rank_constellation;

select * from Stars order by rank_constellation;

show columns from Stars;

select * from Stars where bayer_designation_greek_letter = "upsilon" and constellation_name_genitive = "Andromedae"\G

delete from Stars where bayer_designation_greek_letter = "upsilon" and constellation_name_genitive = "Andromedae" limit 1;

select * from Stars where bayer_designation_greek_letter = "theta" and constellation_name_genitive = "Octantis"\G

delete from Stars where bayer_designation_greek_letter = "theta" and constellation_name_genitive = "Octantis" limit 1;

select * from Stars where bayer_designation_greek_letter = "delta" and constellation_name_genitive = "Phoenicis"\G

delete from Stars where bayer_designation_greek_letter = "delta" and constellation_name_genitive = "Phoenicis" limit 1;

select * from Stars where bayer_designation_greek_letter = "eta" and constellation_name_genitive = "Piscium"\G

delete from Stars where bayer_designation_greek_letter = "eta" and constellation_name_genitive = "Piscium" limit 1;

select * from Stars where bayer_designation_greek_letter = "omega" and constellation_name_genitive = "Piscium"\G

delete from Stars where bayer_designation_greek_letter = "omega" and constellation_name_genitive = "Piscium" limit 1;

select * from Stars where bayer_designation_greek_letter = "alpha" and constellation_name_genitive = "Sculptoris"\G

delete from Stars where bayer_designation_greek_letter = "alpha" and constellation_name_genitive = "Sculptoris" limit 1;

select * from Stars where bayer_designation_greek_letter = "epsilon" and constellation_name_genitive = "Tucanae"\G

delete from Stars where bayer_designation_greek_letter = "epsilon" and constellation_name_genitive = "Tucanae" limit 1;


update Stars set bayer_designation_greek_letter = "alpha" where bayer_designation_greek_letter = "Alpha";

select * from Stars where bayer_designation_greek_letter = "Alpha"\G

select "Here I am";

select * from Stars where bayer_designation_greek_letter = "Beta"\G

select distinct bayer_designation_greek_letter from Stars order by bayer_designation_greek_letter;

select * from Stars where common_name = "Zubenelgenubi"\G

select count(*) from Stars;

select bs_hr_number from Stars order by bs_hr_number;

select distinct bs_hr_number from Stars order by bs_hr_number;

delete from Stars where bs_hr_number = 1367 limit 1;
delete from Stars where bs_hr_number = 2653 limit 1;
delete from Stars where bs_hr_number = 3659 limit 1;
delete from Stars where bs_hr_number = 3803 limit 1;
delete from Stars where bs_hr_number = 4050 limit 1;
delete from Stars where bs_hr_number = 4140 limit 1;
delete from Stars where bs_hr_number = 5530 limit 1;
delete from Stars where bs_hr_number = 6630 limit 1;

select * from Stars where common_name != "" order by common_name limit 2\G

select * from Stars where common_name != "" order by common_name limit 2\G

select * from Stars where right_ascension_decimal_hours >= 12 and right_ascension_decimal_hours <= 13
order by right_ascension_decimal_hours\G

-- common_name != "" order by common_name limit 2\G

update Stars set declination_decimal_degrees = 0.0, right_ascension_decimal_hours = 0.0;

update Stars set declination_decimal_degrees = 0.0;

select distinct right_ascension_decimal_degrees from Stars;

select bs_hr_number from Stars where bs_hr_number >= 9000 order by bs_hr_number;


select common_name, bs_hr_number, approx_rank_apparent_magnitude from Stars where
common_name != "" and approx_rank_apparent_magnitude > 0 order by approx_rank_apparent_magnitude
limit 10 offset 1;

select approx_rank_apparent_magnitude, common_name from Stars where common_name != ""
order by approx_rank_apparent_magnitude limit 21 offset 9;

select common_name, right_ascension_decimal_degrees, declination_decimal_degrees from Stars where common_name != ""
and declination_decimal_degrees < 0 and right_ascension_decimal_degrees > 202.5 and right_ascension_decimal_degrees < 247.5;

show columns from Stars;

select approx_rank_apparent_magnitude, common_name, right_ascension_decimal_degrees, declination_decimal_degrees from Stars
where approx_rank_apparent_magnitude > 0
order by approx_rank_apparent_magnitude limit 10 offset 10;

select approx_rank_apparent_magnitude, common_name, apparent_magnitude from Stars
where approx_rank_apparent_magnitude > 0 order by approx_rank_apparent_magnitude limit 20;

select approx_rank_apparent_magnitude, common_name bayer_designation_greek_letter, constellation_abbreviation,
apparent_magnitude, absolute_magnitude, bs_hr_number
from Stars where approx_rank_apparent_magnitude > 0 and approx_rank_apparent_magnitude <= 200 and
apparent_magnitude = 0 order by approx_rank_apparent_magnitude\G

select approx_rank_apparent_magnitude, common_name bayer_designation_greek_letter, constellation_abbreviation,
apparent_magnitude, absolute_magnitude, bs_hr_number
from Stars where approx_rank_apparent_magnitude > 0 and approx_rank_apparent_magnitude <= 200 and
absolute_magnitude = 0 order by approx_rank_apparent_magnitude\G


select * from Stars where constellation_name_genitive = "Velorum"\G

update Stars set bayer_designation_greek_letter_tex = "N" where common_name = "N Velorum";

select common_name, greek_name, latin_name, arabic_name,
flamsteed_designation_number, bayer_designation_greek_letter,
bayer_designation_greek_letter_tex, bayer_designation_extension, bs_hr_number,
approx_rank_apparent_magnitude, apparent_magnitude, absolute_magnitude,
apparent_magnitude_varies, absolute_magnitude_varies,
constellation_abbreviation, constellation_full_name,
constellation_name_genitive, constellation_number, right_ascension_hours,
right_ascension_minutes, right_ascension_seconds, right_ascension_decimal_hours,
right_ascension_decimal_degrees, declination_degrees, declination_minutes,
declination_seconds, declination_decimal_degrees, is_binary, is_multiple,
is_binary_component, is_eclipsing_binary, notes from 3dldf.Stars
where common_name != "Sirius" and approx_rank_apparent_magnitude > 10 and
right_ascension_seconds < 59.5 order by arabic_name common_name
flamsteed_designation_number is_eclipsing_binary limit 10 offset 6;



/* Local Variables:                   */
/* eval:(outline-minor-mode t)        */
/* abbrev-file-name:"~/.abbrev_defs"  */
/* eval:(read-abbrev-file)            */
/* outline-regexp:"/\\* \\*+"         */
/* fill-column:80                     */
/* End:                               */

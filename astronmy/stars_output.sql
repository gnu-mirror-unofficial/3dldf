/* stars_output.sql */

/* * (1) Copyright and License. */

/* This file is part of GNU 3DLDF, a package for three-dimensional drawing.  */
/* Copyright (C) 2021 The Free Software Foundation, Inc. */

/* GNU 3DLDF is free software; you can redistribute it and/or modify  */
/* it under the terms of the GNU General Public License as published by  */
/* the Free Software Foundation; either version 3 of the License, or  */
/* (at your option) any later version.   */

/* GNU 3DLDF is distributed in the hope that it will be useful,  */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of  */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the  */
/* GNU General Public License for more details.   */

/* You should have received a copy of the GNU General Public License  */
/* along with GNU 3DLDF; if not, write to the Free Software  */
/* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA */

/* GNU 3DLDF is a GNU package.   */
/* It is part of the GNU Project of the   */
/* Free Software Foundation  */
/* and is published under the GNU General Public License.  */
/* See the website http://www.gnu.org  */
/* for more information.    */
/* GNU 3DLDF is available for downloading from  */
/* http://www.gnu.org/software/3dldf/LDF.html. */

/* Please send bug reports to Laurence.Finston@gmx.de */
/* The mailing list help-3dldf@gnu.org is available for people to  */
/* ask other users for help.   */
/* The mailing list info-3dldf@gnu.org is for sending  */
/* announcements to users. To subscribe to these mailing lists, send an  */
/* email with ``subscribe <email-address>'' as the subject.   */

/* The author can be contacted at:     */

/* Laurence D. Finston 		       */
/* c/o Free Software Foundation, Inc.  */
/* 51 Franklin St, Fifth Floor 	       */
/* Boston, MA  02110-1301  	       */
/* USA                                 */                             

/* Laurence.Finston@gmx.de  */


/* ** (2) */

https://en.wikipedia.org/wiki/Gamma_Trianguli_Australis

149 Gamma Trianguli Australis

Gamma Trianguli Australis
Diagram showing star positions and boundaries of the Triangulum Australe constellation and its surroundings
Cercle rouge 100%.svg
Location of γ Trianguli Australis (circled)
Observation data
Epoch J2000.0      Equinox J2000.0
Constellation 	Triangulum Australe
Right ascension 	15h 18m 54.58198s[1]
Declination 	-68° 40′ 46.3654″[1]
Apparent magnitude (V) 	+2.87[2]

replace into Stars (
bayer_designation_greek_letter,
constellation_name_genitive, 
right_ascension_hours,          
right_ascension_minutes,        
right_ascension_seconds,       
declination_degrees,            
declination_minutes,            
declination_seconds,
approx_rank_apparent_magnitude,
constellation_full_name,
constellation_abbreviation,
bs_hr_number
, flamsteed_designation_number /* Apparently none.  LDF 2021.06.18.  */
)
values
("gamma",
"Trianguli Australis",
15,
18,
54.58198,
-68,
40,
46.3654,
149,
"Triangulum Australe",
"TrA",
5671
);

select * from Stars where bayer_designation_greek_letter = "gamma" and constellation_name_genitive = "Trianguli Australis"\G

delete from Stars where bayer_designation_greek_letter = "gamma" and constellation_name_genitive = "Trianguli Australis"\G

show columns from Constellations;

select * from Constellations where name like("Tr%");

| common_name                    | varchar(32) | NO   |     |         |       |
| greek_name                     | varchar(32) | NO   |     |         |       |
| latin_name                     | varchar(32) | NO   |     |         |       |
| arabic_name                    | varchar(32) | NO   |     |         |       |
| flamsteed_designation_number   | int         | NO   |     | 0       |       |
| bayer_designation_greek_letter | varchar(16) | NO   |     |         |       |
| bs_hr_number                   | int         | NO   |     | 0       |       |
| approx_rank_apparent_magnitude | int         | NO   |     | 0       |       |
| constellation_abbreviation     | char(3)     | NO   |     |         |       |
| constellation_full_name        | varchar(32) | NO   |     |         |       |
| constellation_name_genitive    | varchar(64) | NO   |     |         |       |
| constellation_number           | int         | NO   |     | 0       |       |
| right_ascension_hours          | int         | NO   |     | 0       |       |
| right_ascension_minutes        | int         | NO   |     | 0       |       |
| right_ascension_seconds        | float       | NO   |     | 0       |       |
| right_ascension_decimal_hours  | float       | NO   |     | 0       |       |
| declination_degrees            | int         | NO   |     | 0       |       |
| declination_minutes            | int         | NO   |     | 0       |       |
| declination_seconds            | float       | NO   |     | 0       |       |
| declination_decimal_degrees    | float       | NO   |     | 0       |       |


/* ** (2) */

https://en.wikipedia.org/wiki/Canis_Major

https://en.wikipedia.org/wiki/List_of_stars_in_Canis_Major

https://en.wikipedia.org/wiki/Omicron2_Canis_Majoris

179 Omicron^2 Canis Majoris

ο² Canis Majoris
Canis Major constellation map.svg
Red circle.svg
Location of ο2 CMa (circled)
Observation data
Epoch J2000      Equinox J2000
Constellation 	Canis Major
Right ascension 	07h 03m 01.47211s[1]
Declination 	-23° 49′ 59.8523″[1]
Apparent magnitude (V) 	3.043[2]


/* *** (3) */

select "Here I am.";

replace into Stars (
bayer_designation_greek_letter,
constellation_name_genitive, 
right_ascension_hours,          
right_ascension_minutes,        
right_ascension_seconds,       
declination_degrees,            
declination_minutes,            
declination_seconds,
approx_rank_apparent_magnitude,
constellation_full_name,
constellation_abbreviation,
bs_hr_number,
flamsteed_designation_number
)
values
("omicron^2",
"Canis Majoris",
7,
3,
1.47211,
-23,
49,
59.8523,
179,
"Canis Major",
"CMa",
2653,
24
);

show columns from Constellations;

select * from Constellations where name_genitive = "Canis Majoris";

select * from Stars where bayer_designation_greek_letter = "omicron^2" and constellation_name_genitive = "Canis Majoris"\G

delete from Stars where bayer_designation_greek_letter = "" and constellation_name_genitive = ""\G


/* ** (2) */

https://en.wikipedia.org/wiki/Vela_(constellation)

https://en.wikipedia.org/wiki/HR_3803

HR 3803 Observation data
Epoch J2000      Equinox J2000
Constellation 	Vela
Right ascension 	09h 31m 13.31891s[1]
Declination 	-57° 02′ 03.7578″[1]
Apparent magnitude (V) 	3.16[2]
Characteristics
Spectral type 	K5 III[3]
U−B color index 	+1.88[4]
B−V color index 	+1.55[4]
Astrometry
Radial velocity (Rv)	-13.9[2] km/s
Proper motion (μ)	RA: -32.54[1] mas/yr
Dec.: +5.87[1] mas/yr
Parallax (π)	13.65 ± 0.10[1] mas
Distance	239 ± 2 ly
(73.3 ± 0.5 pc)
Details
Mass	2.0[5] M☉
Radius	29[6] R☉
Temperature	3,860[5] K
Other designations
N Velorum, N Vel, CP-56 2270, HD 82668, FK5 361, HIP 46701, HR 3803, SAO 237067. 

replace into Stars (
bayer_designation_greek_letter,
constellation_name_genitive, 
right_ascension_hours,          
right_ascension_minutes,        
right_ascension_seconds,       
declination_degrees,            
declination_minutes,            
declination_seconds,
approx_rank_apparent_magnitude,
constellation_full_name,
constellation_abbreviation,
bs_hr_number,
flamsteed_designation_number
)
values
("N",
"Velorum",
9,  -- Right ascension
31,
13.31891,
-57, -- Declination
2,
3.7578,
199, -- approx_rank_apparent_magnitude
"Vela",
"Vel",
3803, -- bs_hr_number
0
);

show columns from Constellations;

select * from Stars where constellation_name_genitive = "Velorum" and bayer_designation_greek_letter = "N"\G

select * from Stars where bayer_designation_greek_letter = "" and constellation_name_genitive = ""\G

delete from Stars where bayer_designation_greek_letter = "" and constellation_name_genitive = ""\G

/* ** (2) */

https://en.wikipedia.org/wiki/Scorpius

https://en.wikipedia.org/wiki/G_Scorpii

210 G Scorpii
Scorpius constellation map.svg
Red circle.svg
Location of G Scorpii (circled)
Observation data
Epoch J2000      Equinox J2000
Constellation 	Scorpius

Right ascension 	17h 49m 51.48081s[1]
Declination 	−37° 02′ 35.8975″[1]
Apparent magnitude (V) 	3.21[2]

replace into Stars (
bayer_designation_greek_letter,
constellation_name_genitive, 
right_ascension_hours,          
right_ascension_minutes,        
right_ascension_seconds,       
declination_degrees,            
declination_minutes,            
declination_seconds,
approx_rank_apparent_magnitude,
constellation_full_name,
constellation_abbreviation,
bs_hr_number,
flamsteed_designation_number
)
values
("G",  
"Scorpii",
17,  -- Right ascension
49,
51.48081,
-37, -- Declination
2,
35.8975, 
210, -- approx_rank_apparent_magnitude
"Scorpius",
"Sco",
6630, -- bs_hr_number
0
);

show columns from Constellations;

select * from Constellations where name_genitive = "Scorpii";

select * from Stars where constellation_name_genitive = "" and bayer_designation_greek_letter = ""\G

select * from Stars where bayer_designation_greek_letter = "" and constellation_name_genitive = ""\G

delete from Stars where bayer_designation_greek_letter = "" and constellation_name_genitive = ""\G

/* ** (2) */

/* !! START HERE:  LDF 2021.06.18.  */

https://en.wikipedia.org/wiki/List_of_stars_in_Carina

https://en.wikipedia.org/wiki/PP_Carinae

http://simbad.u-strasbg.fr/simbad/sim-id?Ident=HD+91465

231 p Carinae

p Carinae
Carina constellation map.svg
Red circle.svg
Location of p Carinae (circled)
Observation data
Epoch J2000.0      Equinox J2000.0
Constellation 	Carina
Right ascension 	10h 32m 01.46297s[1]
Declination 	-61° 41′ 07.1963″[1]
Apparent magnitude (V) 	3.22 - 3.55[2]


select * from Constellations where name_genitive = "Carinae";

replace into Stars (
bayer_designation_greek_letter,
constellation_name_genitive, 
right_ascension_hours,          
right_ascension_minutes,        
right_ascension_seconds,       
declination_degrees,            
declination_minutes,            
declination_seconds,
approx_rank_apparent_magnitude,
constellation_full_name,
constellation_abbreviation,
bs_hr_number,
flamsteed_designation_number
)
values
("p",
"Carinae",
10,  -- Right ascension
32,
1.46297,
-61, -- Declination
41,
7.1963,
231, -- approx_rank_apparent_magnitude
"Carina",
"Car",
4140, -- bs_hr_number
0);

/* ** (2) */

https://en.wikipedia.org/wiki/V337_Carinae

http://simbad.u-strasbg.fr/simbad/sim-id?Ident=V337+Car

HR 4050

V337 Carinae

254 q Carinae

Other designations
V337 Car, q Carinae, q Car,

V337 Carinae
Carina constellation map.svg
Red circle.svg
Location of V337 Carinae (circled)
Observation data
Epoch J2000.0      Equinox J2000.0 (ICRS)
Constellation 	Carina
Right ascension 	10h 17m 04.9753s[1]
Declination 	-61° 19′ 56.288″[1]
Apparent magnitude (V) 	3.36 to 3.44[2]
Characteristics

replace into Stars (
bayer_designation_greek_letter,
constellation_name_genitive,    
right_ascension_hours,          
right_ascension_minutes,        
right_ascension_seconds,       
declination_degrees,            
declination_minutes,            
declination_seconds,
approx_rank_apparent_magnitude,
constellation_full_name,
constellation_abbreviation,
bs_hr_number,
flamsteed_designation_number
)
values
("q",      -- bayer_designation_greek_letter 
"Carinae", --  constellation_name_genitive    
10,        -- Right ascension
17,
4.9753,
-61,       -- Declination
19,
56.288,
254,       -- approx_rank_apparent_magnitude
"Carina",  -- constellation_full_name,   
"Car"   ,  -- constellation_abbreviation,
4050,      -- bs_hr_number
0          -- flamsteed_designation_number
);

select * from Constellations where name_genitive = "Carinae";

select * from Stars where bayer_designation_greek_letter = "q" and constellation_name_genitive = "Carinae"\G

/* ** (2) */

https://en.wikipedia.org/wiki/V357_Carinae

http://simbad.u-strasbg.fr/simbad/sim-id?Ident=V357+Car

HR 3659

268 a Carinae

V357 Carinae
Carina constellation map.svg
Red circle.svg
Location of a Carinae (circled in red)
Observation data
Epoch J2000.0      Equinox J2000.0
Constellation 	Carina
Right ascension 	09h 10m 58.086s[1]
Declination 	-58° 58′ 0.82″[1]
Apparent magnitude (V) 	+3.41 - 3.44[2]
Characteristics
Spectral type 	B2IV-V[3]
Variable type 	Eclipsing[2]
Astrometry
Radial velocity (Rv)	23.3[4] km/s
Proper motion (μ)	RA: -16.64[1] mas/yr
Dec.: 15.00 mas/yr
Parallax (π)	7.30 ± 0.35[1] mas
Distance	450 ± 20 ly
(137 ± 7 pc)
Orbit[5]
Period (P)	6.74469 d
Eccentricity (e)	0.18
Semi-amplitude (K1)
(primary)	21.5 km/s
Details
Aa1
Mass	9.15[6] M☉
Radius	5.0[7] R☉
Surface gravity (log g)	4.0[7] cgs
Temperature	21,744[7] K
Age	18.7[8] Myr
Aa2
Mass	1.10[6] M☉
Other designations
V357 Car, a Carinae, HR 3659, HD 79351, HIP 45080

replace into Stars (
bayer_designation_greek_letter,
constellation_name_genitive,    
right_ascension_hours,          
right_ascension_minutes,        
right_ascension_seconds,       
declination_degrees,            
declination_minutes,            
declination_seconds,
approx_rank_apparent_magnitude,
constellation_full_name,
constellation_abbreviation,
bs_hr_number,
flamsteed_designation_number
)
values
("a",      -- bayer_designation_greek_letter 
"Carinae", -- constellation_name_genitive
9,         -- Right ascension
10,
58.086,
-58,       -- Declination
58,
0.82,
268,       -- approx_rank_apparent_magnitude
"Carina",  -- constellation_full_name,   
"Car",     -- constellation_abbreviation,
3659,      -- bs_hr_number
0          -- flamsteed_designation_number
);

select * from Constellations where name_genitive = "";

select * from Stars where bayer_designation_greek_letter = "a" and constellation_name_genitive = "Carinae"\G

/* ** (2) */

/* * (1) */

select * from Stars order by approx_rank_apparent_magnitude\G

select approx_rank_apparent_magnitude, common_name, bayer_designation_greek_letter, constellation_name_genitive, bs_hr_number
from Stars order by approx_rank_apparent_magnitude, bs_hr_number;

/* !! START HERE:  Check these:  LDF 2021.06.20.  */ 

select * from Stars where bayer_designation_greek_letter = ""\G

select * from Stars where approx_rank_apparent_magnitude = 0\G

select * from Stars where bs_hr_number = 0\G


mysql> select count(*) from Stars where bayer_designation_greek_letter = "";
+----------+
| count(*) |
+----------+
|      412 |
+----------+
1 row in set (0.01 sec)
/* ** (2) */

/* Local Variables:                   */
/* eval:(outline-minor-mode t)        */
/* abbrev-file-name:"~/.abbrev_defs"  */
/* eval:(read-abbrev-file)            */
/* outline-regexp:"/\\* \\*+"         */
/* fill-column:80                     */
/* End:                               */

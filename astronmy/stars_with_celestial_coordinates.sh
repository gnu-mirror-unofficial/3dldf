#! /bin/bash

#### /home/laurence/3DLDF-3.0/astronmy/stars_with_celestial_coordinates.sh
#### Created by Laurence D. Finston (LDF) Wed 16 Jun 2021 10:14:31 AM CEST

a=`echo "select bayer_designation_greek_letter from Stars where \
   bayer_designation_greek_letter = \"Epsilon\" and constellation_name_genitive = \"Centauri\";" | mysql --batch --silent 3dldf`

echo "a == $a"

if test -z "$a" 
then
   echo "a is empty.  a == $a"
else
   echo "a is non-empty.  a == $a"
fi

a=`echo "select bayer_designation_greek_letter from Stars where \
   bayer_designation_greek_letter = \"XEpsilon\" and constellation_name_genitive = \"Centauri\";" | mysql --batch --silent 3dldf`

echo "a == $a"

if test -z "$a" 
then
   echo "a is empty.  a == $a"
else
   echo "a is non-empty.  a == $a"
fi

select * from Stars where bayer_designation_greek_letter = "alpha" and constellation_name_genitive = "canis majoris"\G

update Stars set approx_rank_apparent_magnitude = 1, common_name = "Sirius" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Canis Majoris";

select * from Stars where common_name = "Sirius"\G

update Stars set approx_rank_apparent_magnitude = 1, common_name = "Sirius" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Canis Majoris";

update Stars set approx_rank_apparent_magnitude = 2, common_name = "Canopus" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Carinae";

update Stars set approx_rank_apparent_magnitude = 3, common_name = "Rigil Kentaurus" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Centauri";

update Stars set approx_rank_apparent_magnitude = 4, common_name = "Arcturus" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Boötis";

update Stars set approx_rank_apparent_magnitude = 5, common_name = "Vega" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Lyrae";

update Stars set approx_rank_apparent_magnitude = 6, common_name = "Capella" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Aurigae";

update Stars set approx_rank_apparent_magnitude = 7, common_name = "Rigel" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Orionis";

update Stars set approx_rank_apparent_magnitude = 8, common_name = "Procyon" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Canis Minoris";

update Stars set approx_rank_apparent_magnitude = 9, common_name = "Achernar" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Eridani";

update Stars set approx_rank_apparent_magnitude = 10, common_name = "Betelgeuse" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Orionis";

update Stars set approx_rank_apparent_magnitude = 11, common_name = "Hadar" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Centauri";

update Stars set approx_rank_apparent_magnitude = 12, common_name = "Altair" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Aquilae";

update Stars set approx_rank_apparent_magnitude = 13, common_name = "Acrux" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Crucis";

update Stars set approx_rank_apparent_magnitude = 14, common_name = "Aldebaran" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Tauri";

update Stars set approx_rank_apparent_magnitude = 15, common_name = "Antares" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Scorpii";

update Stars set approx_rank_apparent_magnitude = 16, common_name = "Spica" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Virginis";

update Stars set approx_rank_apparent_magnitude = 17, common_name = "Pollux" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Geminorum";

update Stars set approx_rank_apparent_magnitude = 18, common_name = "Fomalhaut" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Piscis Austrini";

update Stars set approx_rank_apparent_magnitude = 19, common_name = "Deneb" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Cygni";

update Stars set approx_rank_apparent_magnitude = 20, common_name = "Mimosa" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Crucis";

update Stars set approx_rank_apparent_magnitude = 21, common_name = "Regulus" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Leonis";

update Stars set approx_rank_apparent_magnitude = 22, common_name = "Adhara" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Canis Majoris";

update Stars set approx_rank_apparent_magnitude = 23, common_name = "Castor" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Geminorum";

update Stars set approx_rank_apparent_magnitude = 24, common_name = "Shaula" where bayer_designation_greek_letter = "Lambda"
and constellation_name_genitive = "Scorpii";

update Stars set approx_rank_apparent_magnitude = 25, common_name = "Gacrux" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Crucis";

update Stars set approx_rank_apparent_magnitude = 26, common_name = "Bellatrix" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Orionis";

update Stars set approx_rank_apparent_magnitude = 27, common_name = "Elnath" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Tauri";

update Stars set approx_rank_apparent_magnitude = 28, common_name = "Miaplacidus" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Carinae";

update Stars set approx_rank_apparent_magnitude = 29, common_name = "Alnilam" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Orionis";

update Stars set approx_rank_apparent_magnitude = 30, common_name = "Alnair" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Gruis";

update Stars set approx_rank_apparent_magnitude = 31, common_name = "Alnitak" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Orionis";

update Stars set approx_rank_apparent_magnitude = 32, common_name = "Alioth" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Ursae Majoris";

update Stars set approx_rank_apparent_magnitude = 33, common_name = "Mirfak" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Persei";

update Stars set approx_rank_apparent_magnitude = 34, common_name = "Dubhe" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Ursae Majoris";

update Stars set approx_rank_apparent_magnitude = 35, common_name = "Regor" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Velorum";

update Stars set approx_rank_apparent_magnitude = 36, common_name = "Wezen" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Canis Majoris";

update Stars set approx_rank_apparent_magnitude = 37, common_name = "Kaus Australis" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Sagittarii";

update Stars set approx_rank_apparent_magnitude = 38, common_name = "Alkaid" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Ursae Majoris";

update Stars set approx_rank_apparent_magnitude = 39, common_name = "Sargas" where bayer_designation_greek_letter = "Theta"
and constellation_name_genitive = "Scorpii";

update Stars set approx_rank_apparent_magnitude = 40, common_name = "Avior" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Carinae";

update Stars set approx_rank_apparent_magnitude = 41, common_name = "Menkalinan" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Aurigae";

update Stars set approx_rank_apparent_magnitude = 42, common_name = "16 49 -69.0  321.6 -15.3  K2Ib-II" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Trianguli Australis Atria";

update Stars set approx_rank_apparent_magnitude = 1, common_name = "7.85 0.63" where bayer_designation_greek_letter = "92"
and constellation_name_genitive = "3.61";

update Stars set approx_rank_apparent_magnitude = 43, common_name = "Alhena" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Geminorum";

update Stars set approx_rank_apparent_magnitude = 44, common_name = "Peacock" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Pavonis";

update Stars set approx_rank_apparent_magnitude = 45, common_name = "Koo She" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Velorum";

update Stars set approx_rank_apparent_magnitude = 46, common_name = "Mirzam" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Canis Majoris";

update Stars set approx_rank_apparent_magnitude = 47, common_name = "Alphard" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Hydrae";

update Stars set approx_rank_apparent_magnitude = 48, common_name = "Polaris" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Ursae Minoris";

update Stars set approx_rank_apparent_magnitude = 49, common_name = "Algieba" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Leonis";

update Stars set approx_rank_apparent_magnitude = 50, common_name = "Hamal" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Arietis";

update Stars set approx_rank_apparent_magnitude = 51, common_name = "Diphda" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Ceti";

update Stars set approx_rank_apparent_magnitude = 52, common_name = "Nunki" where bayer_designation_greek_letter = "Sigma"
and constellation_name_genitive = "Sagittarii";

update Stars set approx_rank_apparent_magnitude = 53, common_name = "Menkent" where bayer_designation_greek_letter = "Theta"
and constellation_name_genitive = "Centauri";

update Stars set approx_rank_apparent_magnitude = 54, common_name = "Alpheratz" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Andromedae";

update Stars set approx_rank_apparent_magnitude = 55, common_name = "Mirach" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Andromedae";

update Stars set approx_rank_apparent_magnitude = 56, common_name = "Saiph" where bayer_designation_greek_letter = "Kappa"
and constellation_name_genitive = "Orionis";

update Stars set approx_rank_apparent_magnitude = 57, common_name = "Kochab" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Ursae Minoris";

update Stars set approx_rank_apparent_magnitude = 58, common_name = "Al Dhanab" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Gruis";

update Stars set approx_rank_apparent_magnitude = 59, common_name = "Rasalhague" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Ophiuchi";

update Stars set approx_rank_apparent_magnitude = 60, common_name = "Algol" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Persei";

update Stars set approx_rank_apparent_magnitude = 61, common_name = "Almach" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Andromedae";

update Stars set approx_rank_apparent_magnitude = 62, common_name = "Denebola" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Leonis";

update Stars set approx_rank_apparent_magnitude = 63, common_name = "Cih" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Cassiopeiae";

update Stars set approx_rank_apparent_magnitude = 64, common_name = "Muhlifain" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Centauri";

update Stars set approx_rank_apparent_magnitude = 65, common_name = "Naos" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Puppis";

update Stars set approx_rank_apparent_magnitude = 66, common_name = "Aspidiske" where bayer_designation_greek_letter = "Iota"
and constellation_name_genitive = "Carinae";

update Stars set approx_rank_apparent_magnitude = 67, common_name = "Alphecca" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Coronae Borealis";

update Stars set approx_rank_apparent_magnitude = 68, common_name = "Suhail" where bayer_designation_greek_letter = "Lambda"
and constellation_name_genitive = "Velorum";

update Stars set approx_rank_apparent_magnitude = 69, common_name = "Mizar" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Ursae Majoris";

update Stars set approx_rank_apparent_magnitude = 70, common_name = "Sadr" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Cygni";

update Stars set approx_rank_apparent_magnitude = 71, common_name = "Schedar" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Cassiopeiae";

update Stars set approx_rank_apparent_magnitude = 72, common_name = "Eltanin" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Draconis";

update Stars set approx_rank_apparent_magnitude = 73, common_name = "Mintaka" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Orionis";

update Stars set approx_rank_apparent_magnitude = 74, common_name = "Caph" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Cassiopeiae";

select * from Stars where common_name = "Caph"\G

/* !! START HERE:  LDF 2021.06.15.  */ 

select "Here I am";

update Stars set approx_rank_apparent_magnitude = where bayer_designation_greek_letter = ""
and constellation_name_genitive = "";

select * from Stars where bayer_designation_greek_letter = "Epsilon" and constellation_name_genitive = "Centauri"\G


-- !! 75. Epsilon Centauri                            13 40 -53.5  310.2  +8.7  B1III         2.29  -3.02    8.68 0.77   380

update Stars set approx_rank_apparent_magnitude = 76, common_name = "Dschubba" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Scorpii";

update Stars set approx_rank_apparent_magnitude = 77, common_name = "Wei" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Scorpii";

update Stars set approx_rank_apparent_magnitude = 78, common_name = "Men" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Lupi";

-- !! 79. Eta Centauri                                14 36 -42.2  322.9 +16.6  B1.5V         2.33v -2.55v  10.57 0.83   310

update Stars set approx_rank_apparent_magnitude = 80, common_name = "Merak" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Ursae Majoris";

update Stars set approx_rank_apparent_magnitude = 81, common_name = "Izar" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Boötis";

update Stars set approx_rank_apparent_magnitude = 82, common_name = "Enif" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Pegasi";

update Stars set approx_rank_apparent_magnitude = 83, common_name = "Girtab" where bayer_designation_greek_letter = "Kappa"
and constellation_name_genitive = "Scorpii";

update Stars set approx_rank_apparent_magnitude = 84, common_name = "Ankaa" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Phoenicis";

update Stars set approx_rank_apparent_magnitude = 85, common_name = "Phecda" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Ursae Majoris";

update Stars set approx_rank_apparent_magnitude = 86, common_name = "Sabik" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Ophiuchi";

update Stars set approx_rank_apparent_magnitude = 87, common_name = "Scheat" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Pegasi";

update Stars set approx_rank_apparent_magnitude = 88, common_name = "Aludra" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Canis Majoris";

update Stars set approx_rank_apparent_magnitude = 89, common_name = "Alderamin" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Cephei";

update Stars set approx_rank_apparent_magnitude = 90, common_name = "Markeb" where bayer_designation_greek_letter = "Kappa"
and constellation_name_genitive = "Velorum";

update Stars set approx_rank_apparent_magnitude = 91, common_name = "Gienah" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Cygni";

update Stars set approx_rank_apparent_magnitude = 92, common_name = "Markab" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Pegasi";

update Stars set approx_rank_apparent_magnitude = 93, common_name = "Menkar" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Ceti";

update Stars set approx_rank_apparent_magnitude = 94, common_name = "Han" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Ophiuchi";

update Stars set approx_rank_apparent_magnitude = 95, common_name = "Al Nair al Kent." where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Centauri";

-- select * from Stars where approx_rank_apparent_magnitude = 95\G

update Stars set approx_rank_apparent_magnitude = 96, common_name = "Zosma" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Leonis";

update Stars set approx_rank_apparent_magnitude = 97, common_name = "Graffias" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Scorpii";

update Stars set approx_rank_apparent_magnitude = 98, common_name = "Arneb" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Leporis";

-- !! 99. Delta Centauri                              12 08 -50.7  295.9 +11.6  B2IV          2.58v -2.84v   8.25 0.79   400

update Stars set approx_rank_apparent_magnitude = 100, common_name = "Gienah Ghurab" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Corvi";

update Stars set approx_rank_apparent_magnitude = 101, common_name = "Ascella" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Sagittarii";

update Stars set approx_rank_apparent_magnitude = 102, common_name = "Zubeneschamali" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Librae";

update Stars set approx_rank_apparent_magnitude = 103, common_name = "Unukalhai" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Serpentis";

update Stars set approx_rank_apparent_magnitude = 104, common_name = "Sheratan" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Arietis";

-- !! Not found!
-- update Stars set approx_rank_apparent_magnitude = 105, common_name = "Zubenelgenubi" where bayer_designation_greek_letter = "Alpha"
-- and constellation_name_genitive = "Librae";

update Stars set approx_rank_apparent_magnitude = 106, common_name = "Phact" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Columbae";

-- !! 107. Theta Aurigae                               06 00 +37.2  174.4  +6.8  A0III+G2V     2.65  -0.98   18.83 0.81   170

update Stars set approx_rank_apparent_magnitude = 108, common_name = "Kraz" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Corvi";

update Stars set approx_rank_apparent_magnitude = 109, common_name = "Ruchbah" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Cassiopeiae";

update Stars set approx_rank_apparent_magnitude = 110, common_name = "Muphrid" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Boötis";

update Stars set approx_rank_apparent_magnitude = 111, common_name = "Ke Kouan" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Lupi";

update Stars set approx_rank_apparent_magnitude = 112, common_name = "Hassaleh" where bayer_designation_greek_letter = "Iota"
and constellation_name_genitive = "Aurigae";

-- !! 113. Mu Velorum                                  10 47 -49.4  283.1  +8.6  G5III+G2V     2.69  -0.06   28.18 0.49   116
-- !! 114. Alpha Muscae                                12 37 -69.1  301.6  -6.3  B2V           2.69  -2.17   10.67 0.48   310

update Stars set approx_rank_apparent_magnitude = 115, common_name = "Lesath" where bayer_designation_greek_letter = "Upsilon"
and constellation_name_genitive = "Scorpii";

-- !! 116. Pi Puppis                                   07 17 -37.1  249.0 -11.3  K4Ib          2.71  -4.92    2.98 0.55  1100

update Stars set approx_rank_apparent_magnitude = 117, common_name = "Kaus Meridionalis" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Sagittarii";

update Stars set approx_rank_apparent_magnitude = 118, common_name = "Tarazed" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Aquilae";

update Stars set approx_rank_apparent_magnitude = 119, common_name = "Yed Prior" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Ophiuchi";

update Stars set approx_rank_apparent_magnitude = 120, common_name = "Aldhibain" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Draconis";

-- !! 121. Theta Carinae                               10 43 -64.4  289.6  -4.9  B0V           2.74  -2.91    7.43 0.50   440

update Stars set approx_rank_apparent_magnitude = 122, common_name = "Porrima" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Virginis";

update Stars set approx_rank_apparent_magnitude = 123, common_name = "Hatysa" where bayer_designation_greek_letter = "Iota"
and constellation_name_genitive = "Orionis";

-- !! 124. Iota Centauri                               13 21 -36.7  309.5 +25.8  A2V           2.75   1.48   55.64 0.74    59

update Stars set approx_rank_apparent_magnitude = 125, common_name = "Cebalrai" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Ophiuchi";

update Stars set approx_rank_apparent_magnitude = 126, common_name = "Kursa" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Eridani";

update Stars set approx_rank_apparent_magnitude = 127, common_name = "Kornephoros" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Herculis";

-- !! 128. Delta Crucis                                12 15 -58.7  298.2  +3.8  B2IV          2.79  -2.45    8.96 0.60   360

update Stars set approx_rank_apparent_magnitude = 129, common_name = "Rastaban" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Draconis";

-- !! Not found
-- update Stars set approx_rank_apparent_magnitude = 130, common_name = "Cor Caroli" where bayer_designation_greek_letter = "Alpha"
-- and constellation_name_genitive = "Canum Venaticorum";

-- !! 131. Gamma Lupi                                  15 35 -41.2  333.2 +11.9  B2IV-V+B2IV-V 2.80  -3.40    5.75 1.24   570

update Stars set approx_rank_apparent_magnitude = 132, common_name = "Nihal" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Leporis";

update Stars set approx_rank_apparent_magnitude = 133, common_name = "Rutilicus" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Herculis";

-- !! 134. Beta Hydri                                  00 26 -77.3  304.7 -39.7  G2IV          2.82   3.45  133.78 0.51    24
-- !! 135. Tau Scorpii                                 16 36 -28.2  351.6 +12.8  B0V           2.82  -2.78    7.59 0.78   430

update Stars set approx_rank_apparent_magnitude = 136, common_name = "Kaus Borealis" where bayer_designation_greek_letter = "Lambda"
and constellation_name_genitive = "Sagittarii";

update Stars set approx_rank_apparent_magnitude = 137, common_name = "Algenib" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Pegasi";

/* !! START HERE:  LDF 2021.06.16.  */ 

/*

(fset 'temp-macro
   [C-f12 ?c ?\C-  C-right ?\C-w up up ?\C-s ?= ?\C-  right ?\C-y down down ?\C-a ?\C-  C-right C-left ?\C-w ?\C-  escape ?d up up ?\C-e left ?\C-y down down ?\C-a ?\C-  C-right C-left ?\C-w ?\C-  escape ?\C-s ?  ?  ?\C-  C-left C-right ?\C-  ?\C-a ?\C-w up ?\C-e left left ?\C-y down ?\C-a ?\C-  C-right C-left ?\C-w ?\C-  escape ?\C-s ?\[ ?0 ?- ?9 ?\] left ?\C-  C-left C-right ?\C-  ?\C-a ?\C-w up up ?\C-s ?\" ?\" left ?\C-y ?\C-a ?\C-  down down ?\C-i ?\C-k ?\C-a ?\C-k return ?\C-x ?\C-x ?\C-x ?\C-x])
(global-set-key [67109092] 'temp-macro)

C-ä

*/

update Stars set approx_rank_apparent_magnitude = 138, common_name = "Turais" where bayer_designation_greek_letter = "Rho"
and constellation_name_genitive = "Puppis";

-- !! 139. Beta Trianguli Australis                    15 55 -63.4  321.9  -7.5  F2IV          2.83   2.38   81.24 0.62    40
-- !! 140. Zeta Persei                                 03 54 +31.9  162.3 -16.7  B1II+B8IV+A2V 2.84  -4.55    3.32 0.75   980
-- !! 141. Beta Arae                                   17 25 -55.5  335.4 -11.0  K3Ib-II       2.84  -3.49    5.41 0.76   600
update Stars set approx_rank_apparent_magnitude = 142, common_name = "Choo" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Arae";

update Stars set approx_rank_apparent_magnitude = 143, common_name = "Alcyone" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Tauri";

update Stars set approx_rank_apparent_magnitude = 144, common_name = "Vindemiatrix" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Virginis";

update Stars set approx_rank_apparent_magnitude = 145, common_name = "Deneb Algedi" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Capricorni";

update Stars set approx_rank_apparent_magnitude = 146, common_name = "Head of Hydrus" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Hydri";

-- !! 147. Delta Cygni                                 19 45 +45.1   78.7 +10.2  B9.5III+F1V   2.86  -0.74   19.07 0.45   170
update Stars set approx_rank_apparent_magnitude = 148, common_name = "Tejat" where bayer_designation_greek_letter = "Mu"
and constellation_name_genitive = "Geminorum";

-- !! 149. Gamma Trianguli Australis                   15 19 -68.7  316.5  -8.4  A1III         2.87  -0.87   17.85 0.52   180
-- !! 150. Alpha Tucanae                               22 19 -60.3  330.1 -48.0  K3III         2.87  -1.05   16.42 0.59   200
update Stars set approx_rank_apparent_magnitude = 151, common_name = "Acamar" where bayer_designation_greek_letter = "Theta"
and constellation_name_genitive = "Eridani";

update Stars set approx_rank_apparent_magnitude = 152, common_name = "Albaldah" where bayer_designation_greek_letter = "Pi"
and constellation_name_genitive = "Sagittarii";

update Stars set approx_rank_apparent_magnitude = 153, common_name = "Gomeisa" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Canis Minoris";

-- !! 154. Pi Scorpii                                  15 59 -26.1  347.2 +20.2  B1V+B2V       2.89  -2.85    7.10 0.84   460
-- !! 155. Epsilon Persei                              03 58 +40.0  157.4 -10.1  B0.5V+A2V     2.90  -3.19    6.06 0.82   540
update Stars set approx_rank_apparent_magnitude = 156, common_name = "Alniyat" where bayer_designation_greek_letter = "Sigma"
and constellation_name_genitive = "Scorpii";

update Stars set approx_rank_apparent_magnitude = 157, common_name = "Albireo" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Cygni";

update Stars set approx_rank_apparent_magnitude = 158, common_name = "Sadalsuud" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Aquarii";

-- !! 159. Gamma Persei                                03 05 +53.5  142.1  -4.3  G8III+A2V     2.91  -1.57   12.72 0.71   260
-- !! 160. Upsilon Carinae                             09 47 -65.1  285.0  -8.8  A7Ib+B7III    2.92  -5.56    2.01 0.40  1600
update Stars set approx_rank_apparent_magnitude = 161, common_name = "Matar" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Pegasi";

-- !! 162. Tau Puppis                                  06 50 -50.6  260.2 -20.9  K1III         2.94  -0.80   17.85 0.49   185
update Stars set approx_rank_apparent_magnitude = 163, common_name = "Algorel" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Corvi";

update Stars set approx_rank_apparent_magnitude = 164, common_name = "Sadalmelik" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Aquarii";

update Stars set approx_rank_apparent_magnitude = 165, common_name = "Zaurak" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Eridani";

update Stars set approx_rank_apparent_magnitude = 166, common_name = "Alheka" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Tauri";

update Stars set approx_rank_apparent_magnitude = 167, common_name = "Ras Elased Austr" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Leonis";

update Stars set approx_rank_apparent_magnitude = 168, common_name = "Alnasl" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Sagittarii";

-- !! 169. Gamma Hydrae                                13 19 -23.2  311.1 +39.3  G8III         2.99  -0.05   24.69 0.70   132
-- !! 170. Iota¹ Scorpii                               17 48 -40.1  350.6  -6.1  F2Ia          2.99  -5.71    1.82 0.73  1800
update Stars set approx_rank_apparent_magnitude = 171, common_name = "Deneb el Okab" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Aquilae";

-- !! 172. Beta Trianguli                              02 10 +35.0  140.6 -25.2  A5III         3.00   0.09   26.24 0.77   124
-- !! 173. Psi Ursae Majoris                           11 10 +44.5  165.8 +63.2  K1III         3.00  -0.27   22.21 0.68   147
update Stars set approx_rank_apparent_magnitude = 174, common_name = "Pherkad Major" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Ursae Minoris";

-- !! 175. Mu¹ Scorpii                                 16 52 -38.0  346.1  +3.9  B1.5V+B6.5V   3.00  -4.01    3.97 1.20   820
-- !! 176. Gamma Gruis                                 21 54 -37.4    6.1 -51.5  B8III         3.00  -0.97   16.07 0.77   205
-- !! 177. Delta Persei                                03 43 +47.8  150.3  -5.8  B5III         3.01  -3.04    6.18 0.85   530
update Stars set approx_rank_apparent_magnitude = 178, common_name = "Phurad" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Canis Majoris";

-- !! 179. Omicron² Canis Majoris                      07 03 -23.8  235.6  -8.2  B3Ia          3.02  -6.46    1.27 0.56  2600
update Stars set approx_rank_apparent_magnitude = 180, common_name = "Minkar" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Corvi";

update Stars set approx_rank_apparent_magnitude = 181, common_name = "Almaaz" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Aurigae";

-- !! 182. Beta Muscae                                 12 46 -68.1  302.5  -5.2  B2V+B3V       3.04  -1.86   10.48 0.65   310
update Stars set approx_rank_apparent_magnitude = 183, common_name = "Seginus" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Boötis";

update Stars set approx_rank_apparent_magnitude = 184, common_name = "Dabih" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Capricorni";

update Stars set approx_rank_apparent_magnitude = 185, common_name = "Mebsuta" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Geminorum";

update Stars set approx_rank_apparent_magnitude = 186, common_name = "Tania Australis" where bayer_designation_greek_letter = "Mu"
and constellation_name_genitive = "Ursae Majoris";

update Stars set approx_rank_apparent_magnitude = 187, common_name = "Tais" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Draconis";

-- !! 188. Eta Sagittarii                              18 18 -36.8  356.4  -9.7  M3.5III       3.10  -0.20   21.87 0.92   149
-- !! 189. Zeta Hydrae                                 08 55 +05.9  222.3 +30.2  G9III         3.11  -0.21   21.64 0.99   150
-- !! 190. Nu Hydrae                                   10 50 -16.2  265.1 +37.6  K2III         3.11  -0.03   23.54 0.81   139
-- !! 191. Lambda Centauri                             11 36 -63.0  294.5  -1.4  B9III         3.11  -2.39    7.96 0.52   410
update Stars set approx_rank_apparent_magnitude = 192, common_name = "Persian" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Indi";

update Stars set approx_rank_apparent_magnitude = 193, common_name = "Wazn" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Columbae";

update Stars set approx_rank_apparent_magnitude = 194, common_name = "Talita" where bayer_designation_greek_letter = "Iota"
and constellation_name_genitive = "Ursae Majoris";

-- !! 195. Zeta Arae                                   16 59 -56.0  332.8  -8.2  K3II          3.12  -3.11    5.68 0.91   570
update Stars set approx_rank_apparent_magnitude = 196, common_name = "Sarin" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Herculis";

update Stars set approx_rank_apparent_magnitude = 197, common_name = "Ke Kwan" where bayer_designation_greek_letter = "Kappa"
and constellation_name_genitive = "Centauri";

-- !! 198. Alpha Lyncis                                09 21 +34.4  190.2 +44.7  K7III         3.14  -1.02   14.69 0.81   220
-- !! 199. N Velorum                                   09 31 -57.0  278.2  -4.1  K5III         3.16  -1.15   13.72 0.51   240
-- !! 200. Pi Herculis                                 17 15 +36.8   60.7 +34.3  K3II          3.16  -2.10    8.89 0.52   370
-- !! 201. Nu Puppis                                   06 38 -43.2  251.9 -20.5  B8III         3.17  -2.39    7.71 0.52   420
update Stars set approx_rank_apparent_magnitude = 202, common_name = "Al Haud" where bayer_designation_greek_letter = "Theta"
and constellation_name_genitive = "Ursae Majoris";

update Stars set approx_rank_apparent_magnitude = 203, common_name = "Aldhibah" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Draconis";

-- !! 204. Phi Sagittarii                              18 46 -27.0    8.0 -10.8  B8III         3.17  -1.08   14.14 0.88   230
update Stars set approx_rank_apparent_magnitude = 205, common_name = "Hoedus II" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Aurigae";

-- !! 206. Alpha Circini                               14 43 -65.0  314.3  -4.6  F0V+K5V       3.18   2.11   60.97 0.58    53
update Stars set approx_rank_apparent_magnitude = 207, common_name = "Tabit" where bayer_designation_greek_letter = "Pi"
and constellation_name_genitive = "Orionis";

-- !! 208. Epsilon Leporis                             05 05 -22.4  223.3 -32.7  K5III         3.19  -1.02   14.39 0.68   225
-- !! 209. Kappa Ophiuchi                              16 58 +09.4   28.4 +29.5  K2III         3.19   1.09   37.99 0.75    86
-- !! 210. G Scorpii                                   17 50 -37.0  353.5  -4.9  K2III         3.19   0.24   25.71 0.87   127
-- !! 211. Zeta Cygni                                  21 13 +30.2   76.8 -12.5  G8III         3.21  -0.12   21.62 0.63   151
update Stars set approx_rank_apparent_magnitude = 212, common_name = "Errai" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Cephei";

-- !! 213. Delta Lupi                                  15 21 -40.6  331.3 +13.8  B1.5IV        3.22  -2.75    6.39 0.86   510
update Stars set approx_rank_apparent_magnitude = 214, common_name = "Yed Posterior" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Ophiuchi";

update Stars set approx_rank_apparent_magnitude = 215, common_name = "Alava" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Serpentis";

update Stars set approx_rank_apparent_magnitude = 216, common_name = "Alphirk" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Cephei";

-- !! 217. Alpha Pictoris                              06 48 -61.9  271.9 -24.1  A7III         3.24   0.83   32.96 2.14    99
-- !! 218. Theta Aquilae                               20 11 -00.8   41.6 -18.1  B9.5III       3.24  -1.48   11.36 0.92   285
-- !! 219. Sigma Puppis                                07 29 -43.3  255.7 -11.9  K5III+G5V     3.25  -0.51   17.74 0.47   185
-- !! 220. Pi Hydrae                                   14 06 -26.7  323.0 +33.3  K2III         3.25   0.79   32.17 0.77   101
update Stars set approx_rank_apparent_magnitude = 221, common_name = "Brachium" where bayer_designation_greek_letter = "Sigma"
and constellation_name_genitive = "Librae";

222. Gamma Lyrae               Sulaphat          18 59 +32.7   63.3 +12.8  B9II          3.25  -3.20    5.14 0.51   630
-- !! 223. Gamma Hydri                                 03 47 -74.2  289.1 -37.8  M2III         3.26  -0.83   15.23 0.53   215
-- !! 224. Delta Andromedae                            00 39 +30.9  119.9 -31.9  K3III         3.27   0.81   32.19 0.68   101
-- !! 225. Theta Ophiuchi                              17 22 -25.0    0.5  +6.6  B2IV          3.27  -2.92    5.79 0.69   560
update Stars set approx_rank_apparent_magnitude = 226, common_name = "Skat" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Aquarii";

-- !! 227. Mu Leporis                                  05 13 -16.2  217.3 -28.9  B9IV          3.29v -0.47v  17.69 0.71   185
-- !! 228. Omega Carinae                               10 14 -70.0  290.2 -11.2  B8III         3.29  -1.99    8.81 0.48   370
update Stars set approx_rank_apparent_magnitude = 229, common_name = "Edasich" where bayer_designation_greek_letter = "Iota"
and constellation_name_genitive = "Draconis";

-- !! 230. Alpha Doradus                               04 34 -55.0  263.8 -41.4  A0IV+B9IV     3.30  -0.36   18.56 0.46   175
-- !! 231. p Carinae                                   10 32 -61.7  287.2  -3.2  B4V           3.30  -2.62    6.56 0.49   500

-- !! 232. Mu Centauri                                 13 50 -42.5  314.2 +19.1  B2IV-V        3.30v -2.74v   6.19 0.71   530
update Stars set approx_rank_apparent_magnitude = 233, common_name = "Propus" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Geminorum";

update Stars set approx_rank_apparent_magnitude = 234, common_name = "Rasalgethi" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Herculis";

-- !! 235. Gamma Arae                                  17 25 -56.4  334.6 -11.5  B1III         3.31  -4.40    2.87 0.75  1100
-- !! 236. Beta Phoenicis                              01 06 -46.7  295.5 -70.2  G8III         3.32  -0.55   16.9  9.9    190
update Stars set approx_rank_apparent_magnitude = 237, common_name = "Gorgonea Tertia" where bayer_designation_greek_letter = "Rho"
and constellation_name_genitive = "Persei";

update Stars set approx_rank_apparent_magnitude = 238, common_name = "Megrez" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Ursae Majoris";

-- !! 239. Eta Scorpii                                 17 12 -43.2  344.4  -2.3  F3III-IV      3.32   1.61   45.56 0.79    72
-- !! 240. Nu Ophiuchi                                 17 59 -09.8   18.2  +7.0  K0III         3.32  -0.03   21.35 0.79   155
-- !! 241. Tau Sagittarii                              19 07 -27.7    9.3 -15.4  K1III         3.32   0.48   27.09 1.48   120
-- !! 242. Alpha Reticuli                              04 14 -62.5  274.3 -41.7  G8III         3.33  -0.17   19.98 0.45   165
update Stars set approx_rank_apparent_magnitude = 243, common_name = "Chort" where bayer_designation_greek_letter = "Theta"
and constellation_name_genitive = "Leonis";

update Stars set approx_rank_apparent_magnitude = 244, common_name = "Asmidiske" where bayer_designation_greek_letter = "Xi"
and constellation_name_genitive = "Puppis";

update Stars set approx_rank_apparent_magnitude = 245, common_name = "Segin" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Cassiopeiae";

update Stars set approx_rank_apparent_magnitude = 246, common_name = "Algjebbah" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Orionis";

update Stars set approx_rank_apparent_magnitude = 247, common_name = "Alzirr" where bayer_designation_greek_letter = "Xi"
and constellation_name_genitive = "Geminorum";

update Stars set approx_rank_apparent_magnitude = 248, common_name = "Muscida" where bayer_designation_greek_letter = "Omicron"
and constellation_name_genitive = "Ursae Majoris";

-- !! 249. Delta Aquilae                               19 25 +03.1   39.6  -6.1  F2IV          3.36   2.43   65.05 0.81    50
-- !! 250. Epsilon Lupi                                15 23 -44.7  329.2 +10.3  B2IV-V        3.37  -2.58    6.47 0.61   500
update Stars set approx_rank_apparent_magnitude = 251, common_name = "Heze" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Virginis";

-- !! 252. Epsilon Hydrae                              08 47 +06.4  220.7 +28.5  G5III+A8V+F7V 3.38   0.29   24.13 1.29   135
update Stars set approx_rank_apparent_magnitude = 253, common_name = "Meissa" where bayer_designation_greek_letter = "Lambda"
and constellation_name_genitive = "Orionis";

-- !! 254. q Carinae                                   10 17 -61.3  285.5  -3.8  K3II          3.39  -3.38    4.43 0.49   740
update Stars set approx_rank_apparent_magnitude = 255, common_name = "Auva" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Virginis";

-- !! 256. Zeta Cephei                                 22 11 +58.2  103.1  +1.7  K1II          3.39  -3.35    4.49 0.50   730
-- !! 257. Theta² Tauri                                04 29 +15.9  180.4 -22.0  A7III         3.40   0.10   21.89 0.83   150
-- !! 258. Gamma Phoenicis                             01 28 -43.3  280.5 -72.2  K5III         3.41  -0.87   13.94 0.64   235
-- !! 259. Lambda Tauri                                04 01 +12.5  178.4 -29.4  B3V+A4IV      3.41e -1.87    8.81 0.99   370
-- !! 260. Nu Centauri                                 13 50 -41.7  314.4 +19.9  B2IV          3.41  -2.41    6.87 0.77   475
-- !! 261. Zeta Lupi                                   15 12 -52.1  323.8  +5.0  G8III         3.41   0.65   28.06 0.71   116
-- !! 262. Eta Cephei                                  20 45 +61.8  097.9 +11.6  K0IV          3.41   2.63   69.73 0.49    47
update Stars set approx_rank_apparent_magnitude = 263, common_name = "Homam" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Pegasi";

update Stars set approx_rank_apparent_magnitude = 264, common_name = "Mothallah" where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Trianguli";

-- !! 265. Eta Lupi                                    16 00 -38.4  338.8 +11.0  B2.5IV+A5V    3.42  -2.48    6.61 0.78   495
-- !! 266. Mu Herculis                                 17 46 +27.7  052.4 +25.6  G5IV          3.42   3.80  119.05 0.62    27
-- !! 267. Beta Pavonis                                20 45 -66.2  329.0 -36.0  A7III         3.42   0.29   23.71 0.63   140
-- !! 268. a Carinae                                   09 11 -58.9  277.7  -7.4  B2IV          3.43  -2.11    7.79 0.47   420
update Stars set approx_rank_apparent_magnitude = 269, common_name = "Adhafera" where bayer_designation_greek_letter = "Zeta"
and constellation_name_genitive = "Leonis";

update Stars set approx_rank_apparent_magnitude = 270, common_name = "Althalimain" where bayer_designation_greek_letter = "Lambda"
and constellation_name_genitive = "Aquilae";

update Stars set approx_rank_apparent_magnitude = 271, common_name = "Tania Borealis" where bayer_designation_greek_letter = "Lambda"
and constellation_name_genitive = "Ursae Majoris";

update Stars set approx_rank_apparent_magnitude = 272, common_name = "Sheliak" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Lyrae";

update Stars set approx_rank_apparent_magnitude = 273, common_name = "Achird" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Cassiopeiae";

update Stars set approx_rank_apparent_magnitude = 274, common_name = "Dheneb" where bayer_designation_greek_letter = "Eta"
and constellation_name_genitive = "Ceti";

-- !! 275. Chi Carinae                                 07 57 -53.0  266.7 -12.3  B3IV          3.46  -1.91    8.43 0.52   390
-- !! 276. Delta Bootis                                15 16 +33.3  053.1 +58.4  G8III         3.46   0.69   27.94 0.61   117
update Stars set approx_rank_apparent_magnitude = 277, common_name = "Kaffaljidhma" where bayer_designation_greek_letter = "Gamma"
and constellation_name_genitive = "Ceti";

-- !! 278. Eta Leonis                                  10 07 +16.8  219.5 +50.8  A0Ib          3.48  -5.60    1.53 0.77  2100
-- !! 279. Eta Herculis                                16 43 +38.9  062.3 +40.9  G8III         3.48   0.80   29.11 0.52   112
-- !! 280. Tau Ceti                                    01 44 -15.9  173.1 -73.4  G8V           3.49   5.68  274.17 0.80    12
-- !! 281. Sigma Canis Majoris                         07 02 -27.9  239.2 -10.3  K7Ib          3.49  -4.37    2.68 0.59  1200
update Stars set approx_rank_apparent_magnitude = 282, common_name = "Alula Borealis" where bayer_designation_greek_letter = "Nu"
and constellation_name_genitive = "Ursae Majoris";

update Stars set approx_rank_apparent_magnitude = 283, common_name = "Nekkar" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Bootis";

-- !! 284. Alpha Telescopii                            18 27 -46.0  348.7 -15.2  B3IV          3.49  -0.93   13.08 0.71   250
-- !! 285. Epsilon Gruis                               22 49 -51.3  338.3 -56.5  A3V           3.49   0.49   25.16 0.68   130
-- !! 286. Kappa Canis Majoris                         06 50 -32.5  242.4 -14.5  B1.5IV        3.50  -3.42    4.13 0.50   790
update Stars set approx_rank_apparent_magnitude = 287, common_name = "Wasat" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Geminorum";

-- !! 288. Iota Cephei                                 22 50 +66.2  111.1  +6.2  K0III         3.50   0.76   28.27 0.52   115
-- !! 289. Gamma Sagittae                              19 59 +19.5   58.0  -5.2  K5III         3.51  -1.11   11.90 0.71   270
update Stars set approx_rank_apparent_magnitude = 290, common_name = "Sadalbari" where bayer_designation_greek_letter = "Mu"
and constellation_name_genitive = "Pegasi";

update Stars set approx_rank_apparent_magnitude = 291, common_name = "Rana" where bayer_designation_greek_letter = "Delta"
and constellation_name_genitive = "Eridani";

update Stars set approx_rank_apparent_magnitude = 292, common_name = "Subra" where bayer_designation_greek_letter = "Omicron"
and constellation_name_genitive = "Leonis";

update Stars set approx_rank_apparent_magnitude = 293, common_name = "Tseen Ke" where bayer_designation_greek_letter = "Phi"
and constellation_name_genitive = "Velorum";

-- !! 294. Xi² Sagittarii                              18 58 -21.1   14.6 -10.8  K0II          3.52  -1.77    8.76 0.99   370
update Stars set approx_rank_apparent_magnitude = 295, common_name = "Baham" where bayer_designation_greek_letter = "Theta"
and constellation_name_genitive = "Pegasi";

update Stars set approx_rank_apparent_magnitude = 296, common_name = "Ain" where bayer_designation_greek_letter = "Epsilon"
and constellation_name_genitive = "Tauri";

update Stars set approx_rank_apparent_magnitude = 297, common_name = "Tarf" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Cancri";

-- !! 298. Xi Hydrae                                   11 33 -31.9  284.1 +28.1  G8III         3.54   0.55   25.23 0.83   130
-- !! 299. Mu Serpentis                                15 50 -03.4    4.6 +37.3  A0V           3.54   0.14   20.94 0.82   155
-- !! 300. Xi Serpentis                                17 38 -15.4   10.6  +8.7  F0III         3.54   0.99   30.93 1.03   105

select * from Stars where common_name != "" order by approx_rank_apparent_magnitude\G





exit 0

## Local Variables:
## mode:plain-TeX
## End:

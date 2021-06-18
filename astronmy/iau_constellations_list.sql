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


https://en.wikipedia.org/wiki/IAU_designated_constellations#List

Constellation   Abbreviations   Genitive        Origin  Meaning         Brightest star

select * from Constellations order by name; limit 10;

update Constellations set name_genitive = "Andromedae" where name = "Andromeda";

update Constellations set name_genitive = "Antliae" where name = "Antlia";

update Constellations set name_genitive = "Apodis" where name = "Apus";

update Constellations set name_genitive = "Aquarii" where name = "Aquarius";

update Constellations set name_genitive = "Aquilae" where name = "Aquila";

update Constellations set name_genitive = "Arae" where name = "Ara";

update Constellations set name_genitive = "Arietis" where name = "Aries";

update Constellations set name_genitive = "Aurigae" where name = "Auriga";

update Constellations set name_genitive = "Boötis" where name = "Boötes";

update Constellations set name_genitive = "Caeli" where name = "Caelum";

update Constellations set name_genitive = "Camelopardalis" where name = "Camelopardalis";

update Constellations set name_genitive = "Cancri" where name = "Cancer";

update Constellations set name_genitive = "Canum Venaticorum" where name = "Canes Venatici";

select * from Constellations order by name; limit 10 offset 9;

update Constellations set name = "Canis Major" where abbreviation = "CMa";

update Constellations set name_genitive = "Canis Majoris" where name = "Canis Major";

update Constellations set name = "Canis Major" where abbreviation = "CMa";

update Constellations set name_genitive = "Canis Majoris" where name = "Canis Major";

update Constellations set name = "Canis Minor" where abbreviation = "CMi";

update Constellations set name_genitive = "Canis Minoris" where name = "Canis Minor";

update Constellations set name = "Canes Venatici" where abbreviation = "CVn";

update Constellations set name_genitive = "Canum Venaticorum" where name = "Canes Venatici";

update Constellations set name_genitive = "Canis Minoris" where name = "Canis Minor";

update Constellations set name_genitive = "Capricorni" where name = "Capricornus";

select * from Constellations where name_genitive = "Canis Minoris";

update Constellations set name_genitive = "Carinae" where name = "Carina";

update Constellations set name_genitive = "Cassiopeiae" where name = "Cassiopeia";

update Constellations set name_genitive = "Centauri" where name = "Centaurus";

update Constellations set name_genitive = "Cephei" where name = "Cepheus";

update Constellations set name_genitive = "Ceti" where name = "Cetus";    

update Constellations set name_genitive = "Chamaeleontis" where name = "Chamaeleon";

update Constellations set name_genitive = "Circini" where name = "Circinus";

update Constellations set name_genitive = "Columbae" where name = "Columba";

delete from Constellations where name = "Coma";

delete from Constellations where name = "Corona";

update Constellations set name_genitive = "Comae Berenices" where name = "Coma Berenices";     

insert ignore into Constellations (rank_constellation, abbreviation, name) values (80, "CrA", "Corona Australis");

insert ignore into Constellations (rank_constellation, abbreviation, name) values (73, "CrB", "Corona Borealis");

update Stars set constellation_full_name = "Corona_Australis" where constellation_abbreviation = "CrA";
update Stars set constellation_number = 80 where constellation_abbreviation = "CrA";

update Stars set constellation_full_name = "Corona_Borealis" where constellation_abbreviation = "CrB";
update Stars set constellation_number = 73 where constellation_abbreviation = "CrB";

select * from Constellations order by name;


update Constellations set name_genitive = "Coronae Australis" where name = "Corona Australis";

update Constellations set name_genitive = "Coronae Borealis" where name = "Corona Borealis";

update Constellations set name_genitive = "Corvi" where name = "Corvus";

update Constellations set name_genitive = "Crateris" where name = "Crater";

update Constellations set name_genitive = "Crucis" where name = "Crux";

update Constellations set name_genitive = "Cygni" where name = "Cygnus";

update Constellations set name_genitive = "Delphini" where name = "Delphinus";

update Constellations set abbreviation = "Del" where name = "Delphinus";

update Constellations set name_genitive = "Doradus" where name = "Dorado";

update Constellations set name_genitive = "Draconis" where name = "Draco";

update Constellations set name_genitive = "Equulei" where name = "Equuleus";

update Constellations set name_genitive = "Eridani" where name = "Eridanus";

update Constellations set name_genitive = "Fornacis" where name = "Fornax";

update Constellations set name_genitive = "Geminorum" where name = "Gemini";

update Constellations set name_genitive = "Gruis" where name = "Grus";

update Constellations set name_genitive = "Herculis" where name = "Hercules";

update Constellations set name_genitive = "Horologii" where name = "Horologium";

update Constellations set name_genitive = "Hydrae" where name = "Hydra";

update Constellations set name_genitive = "Hydri" where name = "Hydrus";

update Constellations set name_genitive = "Indi" where name = "Indus";        

update Constellations set name_genitive = "Lacertae" where name = "Lacerta";

update Constellations set name_genitive = "Leonis" where name = "Leo";

update Constellations set name_genitive = "Leonis Minoris" where name = "Leo Minor";

-- select * from Constellations where name = "Leo Minor";

-- select * from Constellations where abbreviation = "LMi";

-- delete from Constellations where abbreviation = "LMi";

replace into Constellations (name, abbreviation, name_genitive) values ("Leo", "Leo", "Leonis");

replace into Constellations (name, abbreviation, name_genitive) values ("Leo Minor", "LMi", "Leonis Minoris");

update Constellations set name_genitive = "Leporis" where name = "Lepus";

update Constellations set name_genitive = "Librae" where name = "Libra";

update Constellations set name_genitive = "Lupi" where name = "Lupus";        

update Constellations set name_genitive = "Lyncis" where name = "Lynx";

update Constellations set name_genitive = "Lyrae" where name = "Lyra";

update Constellations set name_genitive = "Mensae" where name = "Mensa";

update Constellations set name_genitive = "Microscopii" where name = "Microscopium";

update Constellations set name_genitive = "Monocerotis" where name = "Monoceros";

update Constellations set name_genitive = "Muscae" where name = "Musca";

update Constellations set name_genitive = "Normae" where name = "Norma";

update Constellations set name_genitive = "Octantis" where name = "Octans";

update Constellations set name_genitive = "Ophiuchi" where name = "Ophiuchus";

update Constellations set name_genitive = "Orionis" where name = "Orion";

update Constellations set name_genitive = "Pavonis" where name = "Pavo";

update Constellations set name_genitive = "Pegasi" where name = "Pegasus";

update Constellations set name_genitive = "Persei" where name = "Perseus";

update Constellations set name_genitive = "Phoenicis" where name = "Phoenix";

update Constellations set name_genitive = "Pictoris" where name = "Pictor";

update Constellations set name_genitive = "Piscium" where name = "Pisces";

-- select * from Constellations where abbreviation = "PsA";

-- select * from Constellations where name = "Piscus";

-- select * from Constellations where name = "Pisces";

-- delete from Constellations where abbreviation = "PsA";

replace into Constellations (name, abbreviation, name_genitive) values ("Piscis Austrinus", "PsA", "Piscis Austrini");

update Constellations set name_genitive = "Puppis" where name = "Puppis";

update Constellations set name_genitive = "Pyxidis" where name = "Pyxis";

update Constellations set name_genitive = "Reticuli" where name = "Reticulum";

update Constellations set name_genitive = "Sagittae" where name = "Sagitta";

update Constellations set name_genitive = "Sagittarii" where name = "Sagittarius";

update Constellations set name_genitive = "Scorpii" where name = "Scorpius";

update Constellations set name_genitive = "Sculptoris" where name = "Sculptor";

update Constellations set name_genitive = "Scuti" where name = "Scutum";

update Constellations set name_genitive = "Serpentis" where name = "Serpens";

update Constellations set name_genitive = "Sextantis" where name = "Sextans";

update Constellations set name_genitive = "Tauri" where name = "Taurus";

update Constellations set name_genitive = "Telescopii" where name = "Telescopium";

update Constellations set name_genitive = "Trianguli" where name = "Triangulum";

update Stars set constellation_full_name = "Triangulum Australe" where constellation_abbreviation = "TrA";

update Stars set constellation_name_genitive = "Trianguli Australis" where constellation_abbreviation = "TrA";

update Constellations set name_genitive = "Tucanae" where name = "Tucana";

update Constellations set rank_constellation = 3 where abbreviation = "UMa";

replace into Constellations (name, abbreviation, name_genitive) values ("Ursa Major", "UMa", "Ursae Majoris");

update Constellations set rank_constellation = 56 where abbreviation = "UMi";

select * from Constellations where rank_constellation = 0;

select * from Constellations order by name;
select * from Constellations order by rank;

-- 0 | Leo              | Leonis          | Leo          |
-- 0 | Leo Minor        | Leonis Minoris  | LMi          |
-- 0 | Piscis Austrinus | Piscis Austrini | PsA          |

update Constellations set rank_constellation = 12 where abbreviation = "Leo";
update Constellations set rank_constellation = 64 where abbreviation = "LMi";
update Constellations set rank_constellation = 60 where abbreviation = "PsA";


replace into Constellations (name, abbreviation, name_genitive) values ("Ursa Minor", "UMi", "Ursae Minoris");

update Constellations set name_genitive = "Velorum" where name = "Vela";

update Constellations set name_genitive = "Virginis" where name = "Virgo";

update Constellations set name_genitive = "Volantis" where name = "Volans";

update Constellations set name_genitive = "Vulpeculae" where name = "Vulpecula";

select * from Constellations order by name;
select * from Constellations order by rank_constellation;

************************************************************************

From PDF version.


Constellation Abbreviations Genitive Origin Meaning Brightest star
IAU  NASA  Andromeda
 And Andr Andromedae

chained maiden
or princess) Alpheratz
Antlia  Ant Antl Antliae
1763, Lacaille air pump α Antliae
1603,
Uranometria,
created by
Keyser and de
Houtman Bird-of-
paradise/Exotic
Bird/Extraordinary
Bird α Apodis
Apus  Aps Apus Apodis
 Aquarius
 Aqr Aqar Aquarii

Aquila  Aql Aqil Aquilae

Ara  Ara Arae Arae
 ancient
(Ptolemy) altar β Arae
Aries  Ari Arie Arietis
 ancient
(Ptolemy) ram Hamal
Auriga  Aur Auri Aurigae
 ancient
(Ptolemy) charioteer Capella
Boötes  Boo Boot Boötis

Caelum  Cae Cael Caeli
 1763, Lacaille chisel or
engraving tool α Caeli
Camelopardalis  Cam Caml Camelopardalis
 1613,
Plancius [note 1] giraffe β Camelopardalis
Cancer  Cnc Canc Cancri

1690,
Firmamentum Sobiescianum,
Hevelius hunting dogs Cor Caroli
Canes Venatici
 CVn CVen Canum Venaticorum
/ˈkeɪnəm
vɪnætɪˈkɒrəm/ Canis Major
 CMa CMaj Canis Majoris

Canis Minor
 CMi CMin Canis Minoris

Capricornus  Cap Capr Capricorni
 ancient
(Ptolemy) sea goat Deneb Algedi
Carina  Car Cari Carinae
1763, Lacaille,
split from Argo
Navis keel Canopus
Cassiopeia  Cas Cass Cassiopeiae
 ancient
(Ptolemy) Cassiopeia
(mythological
character) Schedar [8]
Centaurus  Cen Cent Centauri

Cepheus  Cep Ceph Cephei
 ancient
(Ptolemy) Cepheus
(mythological
character) Alderamin
Cetus  Cet Ceti Ceti
 ancient
(Ptolemy) sea monster
(later interpreted
as a whale) Diphda [8]Chamaeleon

Circinus 
Cha Cham
Cir Circ
Chamaeleontis 
1603,
Uranometria,
created by
Keyser and de
Houtman chameleon α Chamaeleontis
Circini 1763, Lacaille compasses α Circini
1592,
Plancius, split
from Canis
Major dove Phact
Columba  Col Colm Columbae
Coma Berenices
/ˈkoʊmə
bɛrəˈnaɪsiːz/  Com Coma Comae Berenices
/ˈkoʊmiː
bɛrəˈnaɪsiːz/  1536, Caspar
Vopel, [9] split
from Leo Berenice's hair β Comae
Berenices Corona Australis
/koʊˈroʊnə ɔːˈstrælɪs,
-ˈstreɪ-/  CrA CorA Coronae Australis

Corona Borealis
/koʊˈroʊnə ˌbɔːriˈælɪs,
-ˈeɪlɪs/  CrB CorB Coronae Borealis

Corvus  Crv Corv Corvi

Crater  Crt Crat Crateris

Crux  Cru Cruc Crucis
1603,
Uranometria,
split from
Centaurus southern cross Acrux
Cygnus  Cyg Cygn Cygni

Cross Deneb
Delphinus  Del Dlph Delphini

1603,
Uranometria,
created by
Keyser and de
Houtman dolphinfish α Doradus
Dorado  Dor Dora Doradus
Draco  Dra Drac Draconis
 ancient
(Ptolemy) dragon Eltanin [8]
Equuleus  Equ Equl Equulei
 ancient
(Ptolemy) pony Kitalpha
Eridanus  Eri Erid Eridani
 ancient
(Ptolemy) river Eridanus
(mythology) Achernar
Fornax For Forn Fornacis
1763, Lacaille chemical furnace Dalim [8]
Gemini  Gem Gemi Geminorum

1603,
Uranometria,
created by
Keyser and de
Houtman crane Alnair
Grus  Gru Grus Gruis
 Hercules
 Her Herc Herculis

(mythological
character) Kornephoros
Hor Horo Horologii
1763, Lacaille pendulum clock α Horologii
Horologium 
Hydra 
Hydrus 
Indus 
Hya Hyi Ind Hydrae ancient (Ptolemy) Hydra
(mythological
creature) Alphard
Hydi Hydri
1603,
Uranometria,
created by
Keyser and de
Houtman lesser water
snake β Hydri
Indi Indi
1603,
Uranometria,
created by
Keyser and de
Houtman Indian (of
unspecified type) α Indi
1690,
Firmamentum Sobiescianum,
Hevelius lizard α Lacertae
Hyda Lacerta  Lac Lacr Lacertae
Leo  Leo Leon Leonis

1690,
Firmamentum Sobiescianum,
Hevelius lesser lion Praecipua
Leo Minor
 LMi LMin Leonis Minoris
Lepus  Lep Leps Leporis
 ancient
(Ptolemy) hare Arneb
Libra  Lib Libr Librae

Lupus  Lup Lupi Lupi

1690,
Firmamentum Sobiescianum,
Hevelius lynx α Lyncis
Lynx  Lyn Lync Lyncis
Lyra  Lyr Lyra Lyrae

Mensa  Men Mens Mensae
1763, Lacaille Table Mountain
(South Africa) α Mensae
Microscopium Mic Micr Microscopii
1763, Lacaille microscope γ Microscopii
Monoceros  Mon Mono Monocerotis
1613, Plancius unicorn β Monocerotis
1603,
Uranometria,
created by
Keyser and de
Houtman fly α Muscae
Musca  Mus Musc Muscae
 Norma
 Nor Norm Normae
 1763, Lacaille carpenter's level γ 2 Normae
Octans  Oct Octn Octantis
 1763, Lacaille octant
(instrument) ν Octantis
Ophiuchus  Oph Ophi Ophiuchi

Orion  Ori Orio Orionis
/oʊˈraɪənɪs,
ˌɒriˈoʊnɪs/  ancient
(Ptolemy) Orion
(mythological
character) RigelPavo

Pav Pavo
Pavonis  1603,
Uranometria,
created by
Keyser and de
Houtman Pegasus  Peg Perseus
 Per peacock Peacock
Pegs Pegasi

(mythological
winged horse) Enif
Pers Persei
 ancient
(Ptolemy) Perseus
(mythological
character) Mirfak
phoenix Ankaa
Phoenix  Phe Phoe Phoenicis
1603,
Uranometria,
created by
Keyser and de
Houtman Pictor
 Pic Pict Pictoris
 1763, Lacaille easel α Pictoris
Pisces  Psc Pisc Piscium
 ancient
(Ptolemy) fishes Alpherg
Piscis Austrinus
PsA PscA Piscis Austrini

Puppis  Pup Pupp Puppis
 1763, Lacaille,
split from Argo
Navis poop deck Naos
Pyxis  Pyx Pyxi Pyxidis
1763, Lacaille mariner's
compass α Pyxidis
Reticulum  Ret Reti Reticuli
1763, Lacaille eyepiece
graticule α Reticuli
Sagitta  Sge Sgte Sagittae

Sagittarius  Sgr Sgtr Sagittarii

Scorpius  Sco Scor Scorpii

Sculptor  Scl Scul Sculptoris
1763, Lacaille sculptor α Sculptoris
1690,
Firmamentum Sobiescianum,
Hevelius shield (of
Sobieski) α Scuti
Scutum  Sct Scut Scuti
Serpens 
Ser Serp Serpentis

1690,
Firmamentum Sobiescianum,
Hevelius sextant α Sextantis
Sextans  Sex Sext Sextantis
 Taurus
 Tau Taur Tauri

Telescopium Tel Tele Telescopii
1763, Lacaille telescope α Telescopii
Triangulum Tri Tria Trianguli

TrA TrAu Trianguli Australis
/traɪˈæŋɡjʊlaɪ
ɔːˈstrælɪs/ 1603,
Uranometria,
created by southern triangle Atria
Triangulum Australe
/traɪˈæŋɡjʊləm
ɔːˈstræliː, -ˈstreɪ-/Keyser and de
Houtman Tucn Tucanae
1603,
Uranometria,
created by
Keyser and de
Houtman toucan α Tucanae
UMa UMaj Ursae Majoris

Ursa Minor
 UMi UMin Ursae Minoris

Vela  Vel Velr Velorum
1763, Lacaille,
split from Argo
Navis sails γ 2 Velorum
Virgo  Vir Virg Virginis

Voln Volantis
 1603,
Uranometria,
created by
Keyser and de
Houtman flying fish β Volantis
Vulp Vulpeculae
1690,
Firmamentum Sobiescianum,
Hevelius fox Anser

/* Local Variables: */
/* mode:SQL         */
/* End:             */

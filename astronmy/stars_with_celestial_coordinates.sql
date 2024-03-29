/* /home/laurence/3DLDF-3.0/astronmy/stars_with_celestial_coordinates.txt */

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

/* Laurence D. Finston                 */
/* c/o Free Software Foundation, Inc.  */
/* 51 Franklin St, Fifth Floor         */
/* Boston, MA  02110-1301              */
/* USA                                 */                             

/* Laurence.Finston@gmx.de  */


http://www.atlasoftheuniverse.com/stars.html

This is a list of the 300 brightest stars made using data from the
Hipparcos catalogue. This is every star brighter than magnitude
3.55. The stellar distances are only fairly accurate for stars well
within 1000 light years.  

Sirius:  06h 45m 08.91728s

1          2                     3               4     5      6     7        8         9      10    11     12    13
 No.                           Star Names        Equatorial  Galactic     Spectral      Vis     Abs   Prllx  Err   Dist
                                                 Coordinates Coordinates  Type          Mag     Mag                 ly
                                                   RA   Dec     l°    b°
select * from Constellations order by name;

select * from Stars\G

select * from Stars  where common_name != "" order by common_name\G

delete from Constellations where name = "Ursa"; 

select * from Stars where bayer_designation_greek_letter = "Alpha"\G

select * from Stars where constellation_full_name != ""\G

select * from Constellations order by abbreviation;

/* * (1) ***************************************************************************************************** */

update Stars set constellation_full_name = "Andromeda" where constellation_abbreviation = "And";
update Stars set constellation_full_name = "Antlia" where constellation_abbreviation = "Ant";
update Stars set constellation_full_name = "Apus" where constellation_abbreviation = "Aps";
update Stars set constellation_full_name = "Aquila" where constellation_abbreviation = "Aql";
update Stars set constellation_full_name = "Aquarius" where constellation_abbreviation = "Aqr";
update Stars set constellation_full_name = "Ara" where constellation_abbreviation = "Ara";
update Stars set constellation_full_name = "Aries" where constellation_abbreviation = "Ari";
update Stars set constellation_full_name = "Auriga" where constellation_abbreviation = "Aur";
update Stars set constellation_full_name = "Boötes" where constellation_abbreviation = "Boo";
update Stars set constellation_full_name = "Caelum" where constellation_abbreviation = "Cae";
update Stars set constellation_full_name = "Camelopardalis" where constellation_abbreviation = "Cam";
update Stars set constellation_full_name = "Capricornus" where constellation_abbreviation = "Cap";
update Stars set constellation_full_name = "Carina" where constellation_abbreviation = "Car";
update Stars set constellation_full_name = "Cassiopeia" where constellation_abbreviation = "Cas";
update Stars set constellation_full_name = "Centaurus" where constellation_abbreviation = "Cen";
update Stars set constellation_full_name = "Cepheus" where constellation_abbreviation = "Cep";
update Stars set constellation_full_name = "Cetus" where constellation_abbreviation = "Cet";
update Stars set constellation_full_name = "Chamaeleon" where constellation_abbreviation = "Cha";
update Stars set constellation_full_name = "Circinus" where constellation_abbreviation = "Cir";
update Stars set constellation_full_name = "Canis Major" where constellation_abbreviation = "CMa";
update Stars set constellation_full_name = "Canis Minor" where constellation_abbreviation = "CMi";
update Stars set constellation_full_name = "Cancer" where constellation_abbreviation = "Cnc";
update Stars set constellation_full_name = "Columba" where constellation_abbreviation = "Col";
update Stars set constellation_full_name = "Corona Australis" where constellation_abbreviation = "CrA";
update Stars set constellation_full_name = "Corona Borealis" where constellation_abbreviation = "CrB";
update Stars set constellation_full_name = "Crater" where constellation_abbreviation = "Crt";
update Stars set constellation_full_name = "Crux" where constellation_abbreviation = "Cru";
update Stars set constellation_full_name = "Corvus" where constellation_abbreviation = "Crv";
update Stars set constellation_full_name = "Canes Venatici" where constellation_abbreviation = "CVn";
update Stars set constellation_full_name = "Cygnus" where constellation_abbreviation = "Cyg";
update Stars set constellation_full_name = "Delphinus" where constellation_abbreviation = "Del";
update Stars set constellation_full_name = "Dorado" where constellation_abbreviation = "Dor";
update Stars set constellation_full_name = "Draco" where constellation_abbreviation = "Dra";
update Stars set constellation_full_name = "Equuleus" where constellation_abbreviation = "Equ";
update Stars set constellation_full_name = "Eridanus" where constellation_abbreviation = "Eri";
update Stars set constellation_full_name = "Fornax" where constellation_abbreviation = "For";
update Stars set constellation_full_name = "Gemini" where constellation_abbreviation = "Gem";
update Stars set constellation_full_name = "Grus" where constellation_abbreviation = "Gru";
update Stars set constellation_full_name = "Hercules" where constellation_abbreviation = "Her";
update Stars set constellation_full_name = "Horologium" where constellation_abbreviation = "Hor";
update Stars set constellation_full_name = "Hydra" where constellation_abbreviation = "Hya";
update Stars set constellation_full_name = "Hydrus" where constellation_abbreviation = "Hyi";
update Stars set constellation_full_name = "Indus" where constellation_abbreviation = "Ind";
update Stars set constellation_full_name = "Lacerta" where constellation_abbreviation = "Lac";
update Stars set constellation_full_name = "Leo" where constellation_abbreviation = "Leo";
update Stars set constellation_full_name = "Leo" where constellation_abbreviation = "Leo";
update Stars set constellation_full_name = "Lepus" where constellation_abbreviation = "Lep";
update Stars set constellation_full_name = "Libra" where constellation_abbreviation = "Lib";
update Stars set constellation_full_name = "Leo Minor" where constellation_abbreviation = "LMi";
update Stars set constellation_full_name = "Lupus" where constellation_abbreviation = "Lup";
update Stars set constellation_full_name = "Lynx" where constellation_abbreviation = "Lyn";
update Stars set constellation_full_name = "Lyra" where constellation_abbreviation = "Lyr";
update Stars set constellation_full_name = "Mensa" where constellation_abbreviation = "Men";
update Stars set constellation_full_name = "Microscopium" where constellation_abbreviation = "Mic";
update Stars set constellation_full_name = "Monoceros" where constellation_abbreviation = "Mon";
update Stars set constellation_full_name = "Musca" where constellation_abbreviation = "Mus";
update Stars set constellation_full_name = "Norma" where constellation_abbreviation = "Nor";
update Stars set constellation_full_name = "Octans" where constellation_abbreviation = "Oct";
update Stars set constellation_full_name = "Ophiuchus" where constellation_abbreviation = "Oph";
update Stars set constellation_full_name = "Orion" where constellation_abbreviation = "Ori";
update Stars set constellation_full_name = "Pavo" where constellation_abbreviation = "Pav";
update Stars set constellation_full_name = "Pegasus" where constellation_abbreviation = "Peg";
update Stars set constellation_full_name = "Perseus" where constellation_abbreviation = "Per";
update Stars set constellation_full_name = "Phoenix" where constellation_abbreviation = "Phe";
update Stars set constellation_full_name = "Pictor" where constellation_abbreviation = "Pic";
update Stars set constellation_full_name = "Piscis Austrinus" where constellation_abbreviation = "PsA";
update Stars set constellation_full_name = "Pisces" where constellation_abbreviation = "Psc";
update Stars set constellation_full_name = "Puppis" where constellation_abbreviation = "Pup";
update Stars set constellation_full_name = "Pyxis" where constellation_abbreviation = "Pyx";
update Stars set constellation_full_name = "Reticulum" where constellation_abbreviation = "Ret";
update Stars set constellation_full_name = "Sculptor" where constellation_abbreviation = "Scl";
update Stars set constellation_full_name = "Scorpius" where constellation_abbreviation = "Sco";
update Stars set constellation_full_name = "Scutum" where constellation_abbreviation = "Sct";
update Stars set constellation_full_name = "Serpens" where constellation_abbreviation = "Ser";
update Stars set constellation_full_name = "Sextans" where constellation_abbreviation = "Sex";
update Stars set constellation_full_name = "Sagitta" where constellation_abbreviation = "Sge";
update Stars set constellation_full_name = "Sagittarius" where constellation_abbreviation = "Sgr";
update Stars set constellation_full_name = "Taurus" where constellation_abbreviation = "Tau";
update Stars set constellation_full_name = "Telescopium" where constellation_abbreviation = "Tel";
update Stars set constellation_full_name = "Triangulum" where constellation_abbreviation = "TrA";
update Stars set constellation_full_name = "Triangulum" where constellation_abbreviation = "Tri";
update Stars set constellation_full_name = "Tucana" where constellation_abbreviation = "Tuc";
update Stars set constellation_full_name = "Ursa Major" where constellation_abbreviation = "UMa";
update Stars set constellation_full_name = "Ursa Minor" where constellation_abbreviation = "UMi";
update Stars set constellation_full_name = "Vela" where constellation_abbreviation = "Vel";
update Stars set constellation_full_name = "Virgo" where constellation_abbreviation = "Vir";
update Stars set constellation_full_name = "Volans" where constellation_abbreviation = "Vol";
update Stars set constellation_full_name = "Vulpecula" where constellation_abbreviation = "Vul";

select "Here I am";

select * from Stars\G

/* * (1) ***************************************************************************************************** */

select "Here I am";

update Stars set constellation_name_genitive = "Andromedae" where constellation_full_name = "Andromeda";

update Stars set constellation_name_genitive = "Antliae" where constellation_full_name = "Antlia";

update Stars set constellation_name_genitive = "Apodis" where constellation_full_name = "Apus";

update Stars set constellation_name_genitive = "Aquarii" where constellation_full_name = "Aquarius";

update Stars set constellation_name_genitive = "Aquilae" where constellation_full_name = "Aquila";

update Stars set constellation_name_genitive = "Arae" where constellation_full_name = "Ara";

select "Here I am";

update Stars set constellation_name_genitive = "Arietis" where constellation_full_name = "Aries";

update Stars set constellation_name_genitive = "Aurigae" where constellation_full_name = "Auriga";

update Stars set constellation_name_genitive = "Boötis" where constellation_full_name = "Boötes";

update Stars set constellation_name_genitive = "Caeli" where constellation_full_name = "Caelum";

update Stars set constellation_name_genitive = "Camelopardalis" where constellation_full_name = "Camelopardalis";

update Stars set constellation_name_genitive = "Cancri" where constellation_full_name = "Cancer";

update Stars set constellation_name_genitive = "Canum Venaticorum" where constellation_full_name = "Canes Venatici";

-- select * from Constellations order by name; limit 10 offset 9;

-- update Stars set name = "Canis Major" where abbreviation = "CMa";

update Stars set constellation_name_genitive = "Canis Majoris" where constellation_full_name = "Canis Major";

-- update Stars set name = "Canis Major" where abbreviation = "CMa";

update Stars set constellation_name_genitive = "Canis Majoris" where constellation_full_name = "Canis Major";

-- update Stars set name = "Canis Minor" where abbreviation = "CMi";

update Stars set constellation_name_genitive = "Canis Minoris" where constellation_full_name = "Canis Minor";

-- update Stars set name = "Canes Venatici" where abbreviation = "CVn";

update Stars set constellation_name_genitive = "Canum Venaticorum" where constellation_full_name = "Canes Venatici";

update Stars set constellation_name_genitive = "Canis Minoris" where constellation_full_name = "Canis Minor";

update Stars set constellation_name_genitive = "Capricorni" where constellation_full_name = "Capricornus";

-- select * from Constellations where constellation_name_genitive = "Canis Minoris";

update Stars set constellation_name_genitive = "Carinae" where constellation_full_name = "Carina";

update Stars set constellation_name_genitive = "Cassiopeiae" where constellation_full_name = "Cassiopeia";

update Stars set constellation_name_genitive = "Centauri" where constellation_full_name = "Centaurus";

update Stars set constellation_name_genitive = "Cephei" where constellation_full_name = "Cepheus";

update Stars set constellation_name_genitive = "Ceti" where constellation_full_name = "Cetus";    

update Stars set constellation_name_genitive = "Chamaeleontis" where constellation_full_name = "Chamaeleon";

update Stars set constellation_name_genitive = "Circini" where constellation_full_name = "Circinus";

update Stars set constellation_name_genitive = "Columbae" where constellation_full_name = "Columba";

-- delete from Constellations where constellation_full_name = "Coma";

-- delete from Constellations where constellation_full_name = "Corona";

update Stars set constellation_full_name = "Coma Berenices" where constellation_abbreviation = "Com";     

update Stars set constellation_name_genitive = "Comae Berenices" where constellation_full_name = "Coma Berenices";

-- insert ignore into Constellations (rank_constellation, abbreviation, name) values (80, "CrA", "Corona Australis");

-- insert ignore into Constellations (rank_constellation, abbreviation, name) values (73, "CrB", "Corona Borealis");

-- update Stars set constellation_full_name = "Corona_Australis" where constellation_abbreviation = "CrA";

-- update Stars set constellation_number = 80 where constellation_abbreviation = "CrA";

-- update Stars set constellation_full_name = "Corona_Borealis" where constellation_abbreviation = "CrB";
-- update Stars set constellation_number = 73 where constellation_abbreviation = "CrB";

-- select * from Constellations order by name;

update Stars set constellation_name_genitive = "Coronae Australis" where constellation_full_name = "Corona Australis";

update Stars set constellation_name_genitive = "Coronae Borealis" where constellation_full_name = "Corona Borealis";

update Stars set constellation_name_genitive = "Corvi" where constellation_full_name = "Corvus";

update Stars set constellation_name_genitive = "Crateris" where constellation_full_name = "Crater";

update Stars set constellation_name_genitive = "Crucis" where constellation_full_name = "Crux";

update Stars set constellation_name_genitive = "Cygni" where constellation_full_name = "Cygnus";

update Stars set constellation_name_genitive = "Delphini" where constellation_full_name = "Delphinus";

-- update Stars set abbreviation = "Del" where constellation_full_name = "Delphinus";

update Stars set constellation_name_genitive = "Doradus" where constellation_full_name = "Dorado";

update Stars set constellation_name_genitive = "Draconis" where constellation_full_name = "Draco";

update Stars set constellation_name_genitive = "Equulei" where constellation_full_name = "Equuleus";

update Stars set constellation_name_genitive = "Eridani" where constellation_full_name = "Eridanus";

update Stars set constellation_name_genitive = "Fornacis" where constellation_full_name = "Fornax";

update Stars set constellation_name_genitive = "Geminorum" where constellation_full_name = "Gemini";

update Stars set constellation_name_genitive = "Gruis" where constellation_full_name = "Grus";

update Stars set constellation_name_genitive = "Herculis" where constellation_full_name = "Hercules";

update Stars set constellation_name_genitive = "Horologii" where constellation_full_name = "Horologium";

update Stars set constellation_name_genitive = "Hydrae" where constellation_full_name = "Hydra";

update Stars set constellation_name_genitive = "Hydri" where constellation_full_name = "Hydrus";

update Stars set constellation_name_genitive = "Indi" where constellation_full_name = "Indus";        

update Stars set constellation_name_genitive = "Lacertae" where constellation_full_name = "Lacerta";

update Stars set constellation_name_genitive = "Leonis" where constellation_full_name = "Leo";

update Stars set constellation_name_genitive = "Leonis Minoris" where constellation_full_name = "Leo Minor";

-- -- select * from Constellations where constellation_full_name = "Leo Minor";

-- select * from Constellations where abbreviation = "LMi";

-- delete from Constellations where abbreviation = "LMi";

-- replace into Constellations (name, abbreviation, constellation_name_genitive) values ("Leo", "Leo", "Leonis");

-- replace into Constellations (name, abbreviation, constellation_name_genitive) values ("Leo Minor", "LMi", "Leonis Minoris");

update Stars set constellation_name_genitive = "Leporis" where constellation_full_name = "Lepus";

update Stars set constellation_name_genitive = "Librae" where constellation_full_name = "Libra";

update Stars set constellation_name_genitive = "Lupi" where constellation_full_name = "Lupus";        

update Stars set constellation_name_genitive = "Lyncis" where constellation_full_name = "Lynx";

update Stars set constellation_name_genitive = "Lyrae" where constellation_full_name = "Lyra";

update Stars set constellation_name_genitive = "Mensae" where constellation_full_name = "Mensa";

update Stars set constellation_name_genitive = "Microscopii" where constellation_full_name = "Microscopium";

update Stars set constellation_name_genitive = "Monocerotis" where constellation_full_name = "Monoceros";

update Stars set constellation_name_genitive = "Muscae" where constellation_full_name = "Musca";

update Stars set constellation_name_genitive = "Normae" where constellation_full_name = "Norma";

update Stars set constellation_name_genitive = "Octantis" where constellation_full_name = "Octans";

update Stars set constellation_name_genitive = "Ophiuchi" where constellation_full_name = "Ophiuchus";

update Stars set constellation_name_genitive = "Orionis" where constellation_full_name = "Orion";

update Stars set constellation_name_genitive = "Pavonis" where constellation_full_name = "Pavo";

update Stars set constellation_name_genitive = "Pegasi" where constellation_full_name = "Pegasus";

update Stars set constellation_name_genitive = "Persei" where constellation_full_name = "Perseus";

update Stars set constellation_name_genitive = "Phoenicis" where constellation_full_name = "Phoenix";

update Stars set constellation_name_genitive = "Pictoris" where constellation_full_name = "Pictor";

update Stars set constellation_name_genitive = "Piscium" where constellation_full_name = "Pisces";

-- select * from Constellations where abbreviation = "PsA";

-- select * from Constellations where constellation_full_name = "Piscus";

-- select * from Constellations where constellation_full_name = "Pisces";

-- delete from Constellations where abbreviation = "PsA";

-- replace into Constellations (name, abbreviation, constellation_name_genitive) values ("Piscis Austrinus", "PsA", "Piscis Austrini");

update Stars set constellation_name_genitive = "Puppis" where constellation_full_name = "Puppis";

update Stars set constellation_name_genitive = "Pyxidis" where constellation_full_name = "Pyxis";

update Stars set constellation_name_genitive = "Reticuli" where constellation_full_name = "Reticulum";

update Stars set constellation_name_genitive = "Sagittae" where constellation_full_name = "Sagitta";

update Stars set constellation_name_genitive = "Sagittarii" where constellation_full_name = "Sagittarius";

update Stars set constellation_name_genitive = "Scorpii" where constellation_full_name = "Scorpius";

update Stars set constellation_name_genitive = "Sculptoris" where constellation_full_name = "Sculptor";

update Stars set constellation_name_genitive = "Scuti" where constellation_full_name = "Scutum";

update Stars set constellation_name_genitive = "Serpentis" where constellation_full_name = "Serpens";

update Stars set constellation_name_genitive = "Sextantis" where constellation_full_name = "Sextans";

update Stars set constellation_name_genitive = "Tauri" where constellation_full_name = "Taurus";

update Stars set constellation_name_genitive = "Telescopii" where constellation_full_name = "Telescopium";

update Stars set constellation_name_genitive = "Trianguli" where constellation_full_name = "Triangulum";

update Stars set constellation_name_genitive = "Australis" where constellation_full_name = "Triangulum Australe TrA";

update Stars set constellation_name_genitive = "Tucanae" where constellation_full_name = "Tucana";

update Stars set constellation_name_genitive = "Ursae Majoris" where constellation_full_name = "Ursa Major";

-- update Stars set rank_constellation = 3 where abbreviation = "UMa";

-- replace into Constellations (name, abbreviation, constellation_name_genitive) values ("Ursa Major", "UMa", "Ursae Majoris");

-- update Stars set rank_constellation = 56 where abbreviation = "UMi";

-- select * from Constellations where rank_constellation = 0;

-- select * from Constellations order by name;
-- select * from Constellations order by rank;

-- 0 | Leo              | Leonis          | Leo          |
-- 0 | Leo Minor        | Leonis Minoris  | LMi          |
-- 0 | Piscis Austrinus | Piscis Austrini | PsA          |

-- update Stars set rank_constellation = 12 where abbreviation = "Leo";
-- update Stars set rank_constellation = 64 where abbreviation = "LMi";
-- update Stars set rank_constellation = 60 where abbreviation = "PsA";


-- replace into Constellations (name, abbreviation, constellation_name_genitive) values ("Ursa Minor", "UMi", "Ursae Minoris");

update Stars set constellation_name_genitive = "Ursae Minoris" where constellation_full_name = "Ursa Minor";

update Stars set constellation_name_genitive = "Velorum" where constellation_full_name = "Vela";

update Stars set constellation_name_genitive = "Virginis" where constellation_full_name = "Virgo";

update Stars set constellation_name_genitive = "Volantis" where constellation_full_name = "Volans";

update Stars set constellation_name_genitive = "Vulpeculae" where constellation_full_name = "Vulpecula";

select "Here I am";

select * from Stars where constellation_full_name = "" and constellation_abbreviation != ""\G

select * from Stars where constellation_full_name = ""\G

-- and constellation_abbreviation != ""\G

/* * (1) ***************************************************************************************************** */

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

select common_name from Stars where constellation_name_genitive = "Boötis";

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

select * from Stars where where bayer_designation_greek_letter = "Alpha"
and constellation_name_genitive = "Piscis Austrini"\G

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


update Stars set
common_name = "Zubenelgenubi",
bayer_designation_greek_letter = "alpha^2",
bayer_designation_greek_letter_tex = "$\\alpha^2$",
right_ascension_hours = 14,
right_ascension_minutes = 50,
right_ascension_seconds = 52.71309, 
declination_degrees = -16,
declination_minutes = 2,
declination_seconds = 30.3955,
apparent_magnitude = 2.741,
is_binary_component = 1
where bs_hr_number = 5531;

select * from Stars where constellation_name_genitive = "Librae" and bayer_designation_greek_letter = "alpha^2"\G

α2 Lib
Right ascension         
Declination     
Apparent magnitude (V)  +


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

/* * (1) */

/* *** (3) */

update Stars set constellation_number = 19 where constellation_abbreviation = "And";

update Stars set constellation_number = 62 where constellation_abbreviation = "Ant";

update Stars set constellation_number = 67 where constellation_abbreviation = "Aps";

update Stars set constellation_number = 10 where constellation_abbreviation = "Aqr";

update Stars set constellation_number = 22 where constellation_abbreviation = "Aql";

update Stars set constellation_number = 63 where constellation_abbreviation = "Ara";

update Stars set constellation_number = 39 where constellation_abbreviation = "Ari";

update Stars set constellation_number = 21 where constellation_abbreviation = "Aur";

update Stars set constellation_number = 13 where constellation_abbreviation = "Boo";

update Stars set constellation_number = 81 where constellation_abbreviation = "Cae";

update Stars set constellation_number = 18 where constellation_abbreviation = "Cam";

update Stars set constellation_number = 31 where constellation_abbreviation = "Cnc";

update Stars set constellation_number = 38 where constellation_abbreviation = "CVn";

update Stars set constellation_number = 43 where constellation_abbreviation = "CMa";

update Stars set constellation_number = 71 where constellation_abbreviation = "CMi";

update Stars set constellation_number = 40 where constellation_abbreviation = "Cap";

update Stars set constellation_number = 34 where constellation_abbreviation = "Car";

update Stars set constellation_number = 25 where constellation_abbreviation = "Cas";

update Stars set constellation_number = 09 where constellation_abbreviation = "Cen";

update Stars set constellation_number = 27 where constellation_abbreviation = "Cep";

update Stars set constellation_number = 04 where constellation_abbreviation = "Cet";

update Stars set constellation_number = 79 where constellation_abbreviation = "Cha";

update Stars set constellation_number = 85 where constellation_abbreviation = "Cir";

update Stars set constellation_number = 54 where constellation_abbreviation = "Col";

update Stars set constellation_number = 42 where constellation_abbreviation = "Com";

update Stars set constellation_number = 80 where constellation_abbreviation = "CrA";

update Stars set constellation_number = 73 where constellation_abbreviation = "CrB";

update Stars set constellation_number = 70 where constellation_abbreviation = "Crv";

update Stars set constellation_number = 53 where constellation_abbreviation = "Crt";

update Stars set constellation_number = 88 where constellation_abbreviation = "Cru";

update Stars set constellation_number = 16 where constellation_abbreviation = "Cyg";

update Stars set constellation_number = 69 where constellation_abbreviation = "Del";

update Stars set constellation_number = 72 where constellation_abbreviation = "Dor";

update Stars set constellation_number = 08 where constellation_abbreviation = "Dra";

update Stars set constellation_number = 87 where constellation_abbreviation = "Equ";

update Stars set constellation_number = 06 where constellation_abbreviation = "Eri";

update Stars set constellation_number = 41 where constellation_abbreviation = "For";

update Stars set constellation_number = 30 where constellation_abbreviation = "Gem";

update Stars set constellation_number = 45 where constellation_abbreviation = "Gru";

update Stars set constellation_number = 05 where constellation_abbreviation = "Her";

update Stars set constellation_number = 58 where constellation_abbreviation = "Hor";

update Stars set constellation_number = 01 where constellation_abbreviation = "Hya";

update Stars set constellation_number = 61 where constellation_abbreviation = "Hyi";

update Stars set constellation_number = 49 where constellation_abbreviation = "Ind";

update Stars set constellation_number = 68 where constellation_abbreviation = "Lac";

update Stars set constellation_number = 12 where constellation_abbreviation = "Leo";

update Stars set constellation_number = 64 where constellation_abbreviation = "LMi";

update Stars set constellation_number = 51 where constellation_abbreviation = "Lep";

update Stars set constellation_number = 29 where constellation_abbreviation = "Lib";

update Stars set constellation_number = 46 where constellation_abbreviation = "Lup";

update Stars set constellation_number = 28 where constellation_abbreviation = "Lyn";

update Stars set constellation_number = 52 where constellation_abbreviation = "Lyr";

update Stars set constellation_number = 75 where constellation_abbreviation = "Men";

update Stars set constellation_number = 66 where constellation_abbreviation = "Mic";

update Stars set constellation_number = 35 where constellation_abbreviation = "Mon";

update Stars set constellation_number = 77 where constellation_abbreviation = "Mus";

update Stars set constellation_number = 74 where constellation_abbreviation = "Nor";

update Stars set constellation_number = 50 where constellation_abbreviation = "Oct";

update Stars set constellation_number = 11 where constellation_abbreviation = "Oph";

update Stars set constellation_number = 26 where constellation_abbreviation = "Ori";

update Stars set constellation_number = 44 where constellation_abbreviation = "Pav";

update Stars set constellation_number = 07 where constellation_abbreviation = "Peg";

update Stars set constellation_number = 24 where constellation_abbreviation = "Per";

update Stars set constellation_number = 37 where constellation_abbreviation = "Phe";

update Stars set constellation_number = 59 where constellation_abbreviation = "Pic";

update Stars set constellation_number = 14 where constellation_abbreviation = "Psc";

update Stars set constellation_number = 60 where constellation_abbreviation = "PsA";

update Stars set constellation_number = 20 where constellation_abbreviation = "Pup";

update Stars set constellation_number = 65 where constellation_abbreviation = "Pyx";

update Stars set constellation_number = 82 where constellation_abbreviation = "Ret";

update Stars set constellation_number = 86 where constellation_abbreviation = "Sge";

update Stars set constellation_number = 15 where constellation_abbreviation = "Sgr";

update Stars set constellation_number = 33 where constellation_abbreviation = "Sco";

update Stars set constellation_number = 36 where constellation_abbreviation = "Scl";

update Stars set constellation_number = 84 where constellation_abbreviation = "Sct";

update Stars set constellation_number = 23 where constellation_abbreviation = "Ser";

update Stars set constellation_number = 47 where constellation_abbreviation = "Sex";

update Stars set constellation_number = 17 where constellation_abbreviation = "Tau";

update Stars set constellation_number = 57 where constellation_abbreviation = "Tel";

update Stars set constellation_number = 78 where constellation_abbreviation = "Tri";

update Stars set constellation_number = 83 where constellation_abbreviation = "TrA";

update Stars set constellation_number = 48 where constellation_abbreviation = "Tuc";

update Stars set constellation_number = 03 where constellation_abbreviation = "UMa";

update Stars set constellation_number = 56 where constellation_abbreviation = "UMi";

update Stars set constellation_number = 32 where constellation_abbreviation = "Vel";

update Stars set constellation_number = 02 where constellation_abbreviation = "Vir";

update Stars set constellation_number = 76 where constellation_abbreviation = "Vol";

update Stars set constellation_number = 55 where constellation_abbreviation = "Vul";

/* * (1) */

select * from Stars where common_name != "" order by approx_rank_apparent_magnitude\G

Column 1: Approximate rank of the star in order of apparent magnitude.
Column 2: Bayer name for the star.
Column 3: Proper name of the star.  Usually a weird arabic name. :)
Column 4: Right Ascension in hours and minutes for epoch 2000.
Column 5: Declination in degrees for epoch 2000.
Column 6: Galactic longitude of the star.
Column 7: Galactic latitude of the star.
Column 8: Spectral classification of the main stars in the system.
Column 9: Apparent visual magnitude of the star.  A letter 'v' means the magnitude varies by
more than 0.1.  A letter 'e' means that the star is an eclipsing binary.
Column 10: Absolute magnitude of the star.  A letter 'v' means the magnitude varies by more
than 0.1.
Column 11: The Hipparcos parallax of the star (milli-arcseconds).
Column 12: The error in the parallax (milli-arcseconds).
Column 13: The distance in light years (=3.2616/parallax).

References:
ESA, (1997), The Hipparcos Catalogue.
Hoffleit D, Warren Jr W, (1991), Harvard Revised Bright Star Catalogue, 5th Edition.

/* * (1) ***************************************************************************************************** */

/* ** (2) */

insert into Stars (approx_rank_apparent_magnitude, common_name, bayer_designation_greek_letter, constellation_name_genitive)
values (105,  "Zubenelgenubi", "Alpha", "Librae");

update Stars set constellation_full_name = "Libra" where common_name = "Zubenelgenubi";

update Stars set constellation_full_name = "Libra" where common_name = "Zubenelgenubi";

update Stars set bs_hr_number = 5531 where common_name = "Zubenelgenubi";

/* ** (2) */

/* * (1) ***************************************************************************************************** */

select * from Stars where bayer_designation_greek_letter = "alpha" and constellation_name_genitive = "canis majoris"\G


/* * (1) ***************************************************************************************************** */

18. Alpha Piscis Austrini     Fomalhaut         22 58 -29.6   20.6 -65.0  A3V           1.15   1.72  130.08 0.92    25

https://en.wikipedia.org/wiki/Fomalhaut

insert into Stars (
approx_rank_apparent_magnitude,
flamsteed_designation_number,
bayer_designation_greek_letter,
constellation_name_genitive,
common_name,
bs_hr_number,
constellation_abbreviation,
constellation_full_name,
constellation_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds
)
values (18, 24, "alpha", "Piscis Austrini", "Fomalhaut", 8728, "PsA", "Piscis Austrinus",
60, 22, 57, 39.0465, -29, 37, 20.050);

select * from Stars where common_name = "Fomalhaut"\G

delete from Stars where common_name = "Fomalhaut";

select * from Constellations where name_genitive = "Piscis Austrini";


Right ascension         
Declination     
HR 8728


/* * (1) ***************************************************************************************************** */

1. Alpha Canis Majoris       Sirius            06 45 -16.7  227.2  -8.9  A1V          -1.46   1.43  379.21 1.58     9

select from Stars where common_name = "";

-- !! START HERE:  LDF 2021.6.27.
-- In brightstar_2018.sql there is a star list with ra and decl. with seconds, but without common names. 
-- Use that file to insert stars into `Stars' table, then use the following code to set the common names.
-- LDF 2021.6.27.

/* ** (2) */

-- Cor Caroli:  Binary star system.

https://en.wikipedia.org/wiki/Cor_Caroli

-- http://simbad.u-strasbg.fr/simbad/sim-id?Ident=alf02+CVn  -- Alpha^2:  Brighter
-- http://simbad.u-strasbg.fr/simbad/sim-id?Ident=alf01+CVn  -- Alpha^1:  Dimmer

/* *** (3) */

select * from Stars where approx_rank_apparent_magnitude > 0 order by approx_rank_apparent_magnitude limit 10\G

-- Alpha^2 Canum Venaticorum":  The brighter star in the binary system.

insert into Stars (
approx_rank_apparent_magnitude,
flamsteed_designation_number,
bayer_designation_greek_letter,
constellation_name_genitive,
common_name,
bs_hr_number,
constellation_abbreviation,
constellation_full_name,
constellation_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds,
is_binary
)
values (
130,
0,
"alpha^2",
"Canum Venaticorum",
"Cor Caroli",
4915,
"CVn",
"Canes Venatici",
38,
12,
56,
01.66622,
38,
19,
06.1541,
1);

/* *** (3) */

-- Alpha^1 Canum Venaticorum":  The less-bright star in the binary system.

insert into Stars (
approx_rank_apparent_magnitude,
flamsteed_designation_number,
bayer_designation_greek_letter,
constellation_name_genitive,
common_name,
bs_hr_number,
constellation_abbreviation,
constellation_full_name,
constellation_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds,
is_binary
)
values (
130,
0,
"alpha^1",
"Canum Venaticorum",
"Cor Caroli",
4915,
"CVn",
"Canes Venatici",
38,
12,
56,
0.4316668750,
38,
18,
53.468304880,
1);

α1 CVn:
HR 4914,

α1 CVn

12,
56,
0.4316668750,
38,
18,
53.468304880,

select * from Stars where common_name = "Cor Caroli"\G

Alpha Canum Venaticorum   
"CVn"
Right ascension
Declination
)

/* ** (2) 3. Alpha Centauri A, Rigil Kentaurus  */

!! START HERE:  LDF 2021.6.29.  alpha Centauri is a triple star system.
I need to account for this (add fields is_triple, is_multiple, etc.
Acct. for "binary component" of a triple or multiple star system.

https://en.wikipedia.org/wiki/Alpha_Centauri
http://simbad.u-strasbg.fr/simbad/sim-id?Ident=alpha+centauri  -- Double or multiple star.
http://simbad.u-strasbg.fr/simbad/sim-id?Ident=TYC+9007-5849-1 -- A
http://simbad.u-strasbg.fr/simbad/sim-id?Ident=TYC+9007-5848-1 -- B

-- delete from Stars where approx_rank_apparent_magnitude = 3;

-- update Stars set right_ascension_decimal_hours = 0.0, right_ascension_decimal_degrees = 0.0 where approx_rank_apparent_magnitude = 3;

-- select * from Stars where approx_rank_apparent_magnitude = 3\G


update Stars set where approx_rank_apparent_magnitude = 3\G

replace into Stars (
common_name,
approx_rank_apparent_magnitude,
apparent_magnitude,
-- flamsteed_designation_number,
bayer_designation_greek_letter,
constellation_name_genitive,
bayer_designation_extension,
constellation_abbreviation,
constellation_full_name,
constellation_number,
-- common_name,
-- bs_hr_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
right_ascension_decimal_hours,
right_ascension_decimal_degrees,
declination_degrees,
declination_minutes,
declination_seconds,
declination_decimal_degrees,
is_multiple,
is_binary_component,
notes
)
values (
"$\\alpha$ Centauri", -- KLUDGE!!  This is needed for my paper model of a celestial sphere.  LDF 2021.7.8.
3,
1.33,
"alpha",
"Centauri",
"AB",
"Cen",
"Centaurus",
9,
14, -- RA
39,
35.06311,
14.6597,
219.8955,
-60, -- Declination
50,
15.0992,
-60.8375,
3,
1,
"alpha Centauri is a triple star system.  The two brightest stars, A and B, are a binary component of the system.  "
"For purposes of plotting on a spherical biangle for a paper model of a celestial sphere, this entry uses the "
"celestial coordinates of the brighter star, alpha Centauri A."
);

14 40 -60.8  315.8  -0.7  G2V+K1V      -0.29   4.06  742.12 1.40     4

α Cen A: Rigil Kentaurus, Rigil Kent, α1 Centauri, HR 5459, HD 128620, GCTP 3309.00, LHS 50, SAO 252838, HIP 71683
α Cen B: Toliman, α2 Centauri, HR 5460, HD 128621, LHS 51, HIP 71681

select common_name, approx_rank_apparent_magnitude from Stars where approx_rank_apparent_magnitude > 0
order by approx_rank_apparent_magnitude limit 10;

/* ** (2) 13.  Acrux */


13. Alpha Crucis              Acrux             12 27 -63.1  300.2  -0.4  B0.5IV+B1V    0.79  -4.17   10.17 0.67   320


replace into Stars (
common_name,
approx_rank_apparent_magnitude,
apparent_magnitude,
bayer_designation_greek_letter,
bayer_designation_greek_letter_tex,
constellation_name_genitive,
constellation_abbreviation,
constellation_full_name,
constellation_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds,
is_multiple
)
values (
"Acrux",
13,
0.76,
"alpha","
$\\alpha$",
"Crucis",
"Cru",
"Crux",
88,
12, -- Right ascension
26,
35.89522,
-63, -- Declination
5,
56.734,
6 -- is_multiple
);

Apparent magnitude (V)  [2] (1.33 + 1.75)[3]

select * from Stars where approx_rank_apparent_magnitude = 13\G

/* *** (3) */

23. Alpha Geminorum           Castor            07 35 +31.9  187.5 +22.6  A1V+A2V       1.58   0.59   63.27 1.23    52

replace into Stars (
common_name,
approx_rank_apparent_magnitude,
apparent_magnitude,
bayer_designation_greek_letter,
bayer_designation_greek_letter_tex,
constellation_name_genitive,
constellation_abbreviation,
constellation_full_name,
constellation_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds,
is_multiple
)
values (
"Castor",
23,
1.58,
"alpha",
"$\\alpha$",
"Geminorum",
"Gem",
"Gemini",
30,
7,  -- Right ascension
34,
35.863,
31,  -- Declination
53,
17.79,
6);



select * from Constellations where name_genitive = "Geminorum";

select approx_rank_apparent_magnitude, common_name from Stars where approx_rank_apparent_magnitude > 31
order by approx_rank_apparent_magnitude limit 10;

/* *** (3) */

https://en.wikipedia.org/wiki/Gamma_Velorum

35. Gamma Velorum             Regor             08 10 -47.3  262.8  -7.6  WC8+O9Ib      1.81  -5.25    3.88 0.53   840

replace into Stars (
common_name,
approx_rank_apparent_magnitude,
apparent_magnitude,
bayer_designation_greek_letter,
bayer_designation_greek_letter_tex,
constellation_name_genitive,
constellation_abbreviation,
constellation_full_name,
constellation_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds,
is_multiple
)
values (
"Regor",
35,
1.7,
"gamma",
"$\\gamma$",
"Velorum",
"Vel",
"Vela",
32,
8, -- Right ascension
9,
31.95013,
-47, -- Declination
20,
11.7108,
4);

quadruple star system

Constellation   Vela
Right ascension         08h 09m 31.95013s[1]
Declination     –47° 20′ 11.7108″[1]
Apparent magnitude (V)  1.83[2] (1.81 - 1.87[3])

combined magnitude +1.7

/* *** (3) */

42. Alpha Trianguli Australis Atria             16 49 -69.0  321.6 -15.3  K2Ib-II       1.92  -3.61    7.85 0.63   420

https://en.wikipedia.org/wiki/Alpha_Trianguli_Australis
apparent magnitude of +1.91

delete from Stars where bayer_designation_greek_letter = "alpha" and constellation_name_genitive = "Trianguli Australis";

replace into Stars (
common_name,
approx_rank_apparent_magnitude,
apparent_magnitude,
bs_hr_number,
bayer_designation_greek_letter,
bayer_designation_greek_letter_tex,
constellation_name_genitive,
constellation_abbreviation,
constellation_full_name,
constellation_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds)
values (
"Atria",
42,
1.91,
6217,
"alpha",
"$\\alpha$",
"Trianguli Australis",
"TrA",
"Triangulum Australe",
83,
16, -- Right ascension
48,
39.89508,
-69, -- Declination
1,
39.7626
);

Apparent magnitude (V)  1.91[2]

HR 6217

/* *** (3) */

/* ** (2) */

A


Apparent magnitude (V)  1.93[2]
B

but it is actually a sextuple star system 

select * from Stars where common_name = "Castor";

select * from Stars where bayer_designation_greek_letter = "alpha" and constellation_name_genitive = "Geminorum";

select common_name, bayer_designation_greek_letter, constellation_name_genitive, right_ascension_decimal_degrees,
declination_degrees, declination_minutes, declination_seconds, declination_decimal_degrees
from Stars order by declination_decimal_degrees\G

select approx_rank_apparent_magnitude, common_name, bayer_designation_greek_letter, constellation_name_genitive
from Stars where approx_rank_apparent_magnitude > 20 order by approx_rank_apparent_magnitude limit 10\G

select approx_rank_apparent_magnitude, common_name 
from Stars where approx_rank_apparent_magnitude >= 31 -- and approx_rank_apparent_magnitude <= 50
order by approx_rank_apparent_magnitude; --  limit 30;

select approx_rank_apparent_magnitude, common_name 
from Stars where common_name = "Atria";

/* *** (3) Set apparent_magnitude */

update Stars set apparent_magnitude = -1.46 where common_name = "Sirius";            
update Stars set apparent_magnitude = -0.73 where common_name = "Canopus";           
update Stars set apparent_magnitude = -0.29 where bayer_designation_greek_letter = "alpha"
   and constellation_name_genitive = "Centauri";
update Stars set apparent_magnitude = -0.05 where common_name = "Arcturus";          
update Stars set apparent_magnitude =  0.03 where common_name = "Vega";              
update Stars set apparent_magnitude =  0.07 where common_name = "Capella";           
update Stars set apparent_magnitude =  0.15 where common_name = "Rigel";             
update Stars set apparent_magnitude_varies = 1 where common_name = "Rigel";             
update Stars set apparent_magnitude = 0.36 where common_name = "Procyon";            
update Stars set apparent_magnitude = 0.45 where common_name = "Achernar";           
update Stars set apparent_magnitude = 0.55 where common_name = "Betelgeuse";         
update Stars set apparent_magnitude_varies = 1 where common_name = "Betelgeuse";


update Stars set apparent_magnitude = 0.61 where common_name = "Hadar";             
update Stars set apparent_magnitude = 0.77 where common_name = "Altair";            
update Stars set apparent_magnitude = 0.79 where common_name = "Acrux";             
update Stars set apparent_magnitude = 0.86 where common_name = "Aldebaran";
update Stars set apparent_magnitude_varies = 1 where common_name = "Aldebaran";
update Stars set apparent_magnitude = 0.95 where common_name = "Antares";           
update Stars set apparent_magnitude_varies = 1 where common_name = "Antares";
update Stars set apparent_magnitude = 0.97 where common_name = "Spica";             
update Stars set apparent_magnitude = 1.14 where common_name = "Pollux";            
update Stars set apparent_magnitude = 1.15 where common_name = "Fomalhaut";         
update Stars set apparent_magnitude = 1.24 where common_name = "Deneb";             
update Stars set apparent_magnitude = 1.26 where common_name = "Mimosa";            

select approx_rank_apparent_magnitude, common_name, apparent_magnitude from Stars
where apparent_magnitude < 1000 order by apparent_magnitude;

update Stars set apparent_magnitude = 1.36 where common_name = "Regulus";           
update Stars set apparent_magnitude = 1.50 where common_name = "Adhara";            
update Stars set apparent_magnitude = 1.58 where common_name = "Castor";            
update Stars set apparent_magnitude = 1.62 where common_name = "Shaula";            
update Stars set apparent_magnitude = 1.63 where common_name = "Gacrux";            
update Stars set apparent_magnitude = 1.64 where common_name = "Bellatrix";         
update Stars set apparent_magnitude = 1.66 where common_name = "Elnath";            
update Stars set apparent_magnitude = 1.67 where common_name = "Miaplacidus";       
update Stars set apparent_magnitude = 1.69 where common_name = "Alnilam";           
update Stars set apparent_magnitude = 1.74 where common_name = "Alnair";            

/* !! START HERE:  LDF 2021.07.10.  */

select * from Stars where common_name = "Alnitak"\G

select * from Stars where common_name = "Alioth"\G

select * from Stars where common_name = "Alnitak"\G

update Stars set apparent_magnitude = 1.75 where common_name = "Alnitak";

select * from Stars where common_name = "Alioth"\G

update Stars set apparent_magnitude = 1.77 where common_name = "Alioth";

select * from Stars where common_name = "Mirfak"\G

update Stars set apparent_magnitude = 1.80 where common_name = "Mirfak";

select * from Stars where common_name = "Dubhe"\G

update Stars set apparent_magnitude = 1.80 where common_name = "Dubhe";

select * from Stars where common_name = "Regor"\G

update Stars set apparent_magnitude = 1.81 where common_name = "Regor";

select * from Stars where common_name = "Wezen"\G

update Stars set apparent_magnitude = 1.83 where common_name = "Wezen";

select * from Stars where common_name = "Kaus Australis"\G

update Stars set apparent_magnitude = 1.84 where common_name = "Kaus Australis";

select * from Stars where common_name = "Alkaid"\G

update Stars set apparent_magnitude = 1.86 where common_name = "Alkaid";

select * from Stars where common_name = "Sargas"\G

update Stars set apparent_magnitude = 1.86 where common_name = "Sargas";

select * from Stars where common_name = "Sargas"\G

update Stars set apparent_magnitude = 1.86 where common_name = "Sargas";

select * from Stars where common_name = "Avior"\G

update Stars set apparent_magnitude = 1.87 where common_name = "Avior";

/* 41 -- 50  */

select * from Stars where common_name = "Menkalinan"\G

update Stars set apparent_magnitude = 1.90   where common_name = "Menkalinan";

select * from Stars where common_name = "Atria"\G

update Stars set apparent_magnitude = 1.92   where common_name = "Atria";

select * from Stars where common_name = "Alhena"\G

update Stars set apparent_magnitude = 1.93   where common_name = "Alhena";

select * from Stars where common_name = "Peacock"\G

update Stars set apparent_magnitude = 1.93   where common_name = "Peacock";

select * from Stars where common_name = "Koo She"\G

update Stars set apparent_magnitude = 1.95   where common_name = "Koo She";

select * from Stars where common_name = "Mirzam"\G

update Stars set apparent_magnitude = 1.98   where common_name = "Mirzam";

select * from Stars where common_name = "Alphard"\G

update Stars set apparent_magnitude = 1.98   where common_name = "Alphard";

select * from Stars where common_name = "Polaris"\G

update Stars set apparent_magnitude = 1.99 where common_name = "Polaris";

update Stars set apparent_magnitude_varies = 1 where common_name = "Polaris";

/* *** (3)  49.  Algieba */

replace into Stars (
common_name,
approx_rank_apparent_magnitude,
apparent_magnitude,
-- flamsteed_designation_number,
bayer_designation_greek_letter,
constellation_name_genitive,
constellation_abbreviation,
constellation_full_name,
constellation_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds,
is_binary
)
values (
"Algieba",
49,
2.00,
"gamma",
"Leonis",
"Leo",
"Leo",
12,
10, -- Right ascension
19,
58.35056,
19, -- Declination
50,
29.3468,
1
);

select * from Stars where common_name = "Algieba"\G

update Stars set apparent_magnitude = 2.00   where common_name = "Algieba";


49. Gamma Leonis              Algieba           10 20 +19.8  216.6 +54.7  K0III+G7III   2.00  -0.93   25.96 0.83   126

select * from Constellations where name = "Leo";

-- Right ascension      10h 19m 58.35056s[1]
-- Declination  +19° 50′ 29.3468″[1]

select * from Stars where bayer_designation_greek_letter = "gamma" and constellation_abbreviation = "Leonis"\G

select * from Stars where common_name = "Hamal"\G

update Stars set apparent_magnitude = 2.01   where common_name = "Hamal";

Hamal             2.01  

/* *** (3)  */

select approx_rank_apparent_magnitude, common_name, apparent_magnitude from Stars where approx_rank_apparent_magnitude > 0 order by
approx_rank_apparent_magnitude limit 100;

Missing:      61, 97, 

Name missing: 75, 79, 99 

/* *** (3)  */

replace into Stars (
common_name,
approx_rank_apparent_magnitude,
apparent_magnitude,
-- flamsteed_designation_number,
bayer_designation_greek_letter,
constellation_name_genitive,
constellation_abbreviation,
constellation_full_name,
constellation_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds,
is_multiple
)
values (
"Almach",
61,
2.27,
"gamma",
"Andromedae",
"And",
"Andromeda",
19,
2, -- Right ascension
3,
53.95229,
42, -- Declination
19,
47.0223,
4);

select * from Stars where common_name = "Almach"\G

select * from Constellations where name = "Andromeda";


61. Gamma Andromedae          Almach            02 04 +42.3  137.0 -18.6  K3II+B8V+A0V  2.10  -3.08    9.19 0.73   360

Right ascension         02h 03m 53.95229s[1]
Declination     +42° 19′ 47.0223″[1]
Apparent magnitude (V)  2.27[2]
quadruple star system


/* *** (3) Graffias  */

/* !! START HERE:  LDF 2021.07.13.  */ 

update Stars set approx_rank_apparent_magnitude = 97, common_name = "Graffias" where bayer_designation_greek_letter = "Beta"
and constellation_name_genitive = "Scorpii";

97. Beta Scorpii              Graffias          16 05 -19.8  353.1 +23.7  B1V+B2V       2.56  -3.50    6.15 1.12   530

/* *** (3) Delta Piscium  (for "quadrant" model (sample5)).  */

select * from Stars where declination_decimal_degrees > 0 and declination_decimal_degrees < 11.25 and
right_ascension_decimal_degrees > 0 and right_ascension_decimal_degrees < 22.5\G

select * from Stars where declination_decimal_degrees > 78.75\G

select * from Stars where declination_decimal_degrees < -78.75\G

update Stars set common_name = "$\\delta$ Piscium" where bs_hr_number = 224;

select * from Stars where common_name = "$\\delta$ Piscium"\G

apparent visual magnitude of +4.4,

HR 224,

-- common_name != ""\G
-- and approx_rank_apparent_magnitude > 0


show columns from Stars;

select * from Stars where declination_decimal_degrees > 0 and declination_decimal_degrees < 11.25 and

75. Epsilon Centauri                            13 40 -53.5  310.2  +8.7  B1III         2.29  -3.02    8.68 0.77   380

79. Eta Centauri                                14 36 -42.2  322.9 +16.6  B1.5V         2.33v -2.55v  10.57 0.83   310

99. Delta Centauri                              12 08 -50.7  295.9 +11.6  B2IV          2.58v -2.84v   8.25 0.79   400

%% *** (3)

/* ** (2) */

1. Alpha Canis Majoris       Sirius            06 45 -16.7  227.2  -8.9  A1V          -1.46   1.43  379.21 1.58     9
2. Alpha Carinae             Canopus           06 24 -52.7  261.2 -25.3  F0Ib         -0.73  -5.64   10.43 0.53   310
3. Alpha Centauri            Rigil Kentaurus   14 40 -60.8  315.8  -0.7  G2V+K1V      -0.29   4.06  742.12 1.40     4
4. Alpha Boötis              Arcturus          14 16 +19.2   15.2 +69.0  K2III        -0.05  -0.31   88.85 0.74    37
5. Alpha Lyrae               Vega              18 37 +38.8   67.5 +19.2  A0V           0.03   0.58  128.93 0.55    25
6. Alpha Aurigae             Capella           05 17 +46.0  162.6  +4.6  G5III+G0III   0.07  -0.49   77.29 0.89    42
7. Beta Orionis              Rigel             05 15  -8.2  209.3 -25.1  B8Ia          0.15v -6.72v   4.22 0.81   770
8. Alpha Canis Minoris       Procyon           07 39  +5.2  213.7 +13.0  F5IV-V        0.36   2.64  285.93 0.88    11
9. Alpha Eridani             Achernar          01 38 -57.2  290.7 -58.8  B3V           0.45  -2.77   22.68 0.57   144
10. Alpha Orionis             Betelgeuse        05 55  +7.4  199.8  -9.0  M2Ib          0.55v -5.04v   7.63 1.64   430
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
21. Alpha Leonis              Regulus           10 08 +12.0  226.3 +48.9  B7V           1.36  -0.52   42.09 0.79    78
22. Epsilon Canis Majoris     Adhara            06 59 -29.0  239.9 -11.3  B2II          1.50  -4.10    7.57 0.57   430
23. Alpha Geminorum           Castor            07 35 +31.9  187.5 +22.6  A1V+A2V       1.58   0.59   63.27 1.23    52
24. Lambda Scorpii            Shaula            17 34 -37.1  351.8  -2.3  B2IV          1.62  -5.05    4.64 0.90   700
25. Gamma Crucis              Gacrux            12 31 -57.1  300.2  +5.7  M3.5III       1.63  -0.52   37.09 0.67    88
26. Gamma Orionis             Bellatrix         05 25  +6.3  197.0 -16.0  B2III         1.64  -2.72   13.42 0.98   240
27. Beta Tauri                Elnath            05 26 +28.6  178.0  -3.8  B7III         1.66  -1.36   24.89 0.88   130
28. Beta Carinae              Miaplacidus       09 13 -69.7  286.0 -14.4  A2III         1.67  -0.99   29.34 0.47   111
29. Epsilon Orionis           Alnilam           05 36  -1.2  205.2 -17.3  B0Ia          1.69  -6.38    2.43 0.91  1300
30. Alpha Gruis               Alnair            22 08 -47.0  350.0 -52.4  B7IV          1.74  -0.72   32.16 0.82   101
31. Zeta Orionis              Alnitak           05 41  -1.9  206.5 -16.5  O9.5Ib+B0III  1.75  -5.25    3.99 0.79   820
32. Epsilon Ursae Majoris     Alioth            12 54 +56.0  122.2 +61.1  A0IV          1.77  -0.20   40.30 0.62    81
33. Alpha Persei              Mirfak            03 24 +49.9  146.5  -5.9  F5Ib          1.80  -4.49    5.51 0.66   590
34. Alpha Ursae Majoris       Dubhe             11 04 +61.8  142.8 +51.0  K0III+F0V     1.80  -1.09   26.38 0.53   124
35. Gamma Velorum             Regor             08 10 -47.3  262.8  -7.6  WC8+O9Ib      1.81  -5.25    3.88 0.53   840
36. Delta Canis Majoris       Wezen             07 08 -26.4  238.4  -8.3  F8Ia          1.83  -6.87    1.82 0.56  1800
37. Epsilon Sagittarii        Kaus Australis    18 24 -34.4  359.2  -9.8  B9.5III       1.84  -1.39   22.55 1.02   145
38. Eta Ursae Majoris         Alkaid            13 48 +49.3  100.5 +65.3  B3V           1.86  -0.59   32.39 0.74   101
39. Theta Scorpii             Sargas            17 37 -43.0  347.1  -5.9  F1II          1.86  -2.75   11.99 0.84   270
40. Epsilon Carinae           Avior             08 23 -59.5  274.3 -12.5  K3II+B2V      1.87  -4.57    5.16 0.49   630
41. Beta Aurigae              Menkalinan        06 00 +44.9  167.5 +10.5  A2IV          1.90  -0.10   39.72 0.78    82
42. Alpha Trianguli Australis Atria             16 49 -69.0  321.6 -15.3  K2Ib-II       1.92  -3.61    7.85 0.63   420
43. Gamma Geminorum           Alhena            06 38 +16.4  196.8  +4.5  A0IV          1.93  -0.60   31.12 2.33   105
44. Alpha Pavonis             Peacock           20 26 -56.7  340.9 -35.3  B0.5V+B2V     1.93  -1.82   17.80 0.70   180
45. Delta Velorum             Koo She           08 45 -54.7  272.1  -7.3  A0V           1.95   0.01   40.90 0.38    80
46. Beta Canis Majoris        Mirzam            06 23 -18.0  226.1 -14.2  B1III         1.98  -3.95    6.53 0.66   500
47. Alpha Hydrae              Alphard           09 28  -8.7  241.6 +29.1  K3II          1.98  -1.70   18.40 0.78   180
48. Alpha Ursae Minoris       Polaris           02 32 +89.3  123.3 +26.5  F7Ib-II       1.99v -3.62v   7.56 0.48   430
49. Gamma Leonis              Algieba           10 20 +19.8  216.6 +54.7  K0III+G7III   2.00  -0.93   25.96 0.83   126
50. Alpha Arietis             Hamal             02 07 +23.5  144.5 -36.2  K2III         2.01   0.48   49.48 0.99    66
51. Beta Ceti                 Diphda            00 44 -18.0  112.0 -80.7  K0III         2.04  -0.30   34.04 0.82    96
52. Sigma Sagittarii          Nunki             18 55 -26.3    9.5 -12.4  B3V           2.05  -2.14   14.54 0.88   220
53. Theta Centauri            Menkent           14 07 -36.4  319.5 +24.0  K0III         2.06   0.70   53.52 0.79    61
54. Alpha Andromedae          Alpheratz         00 08 +29.1  111.6 -32.8  B9IV          2.07  -0.30   33.60 0.73    97
55. Beta Andromedae           Mirach            01 10 +35.6  127.2 -27.1  M0II          2.07  -1.86   16.36 0.76   200
56. Kappa Orionis             Saiph             05 48  -9.7  214.6 -18.4  B0.5III       2.07  -4.65    4.52 0.77   720
57. Beta Ursae Minoris        Kochab            14 51 +74.2  112.7 +40.5  K4III         2.07  -0.87   25.79 0.52   127
58. Beta Gruis                Al Dhanab         22 43 -46.9  346.2 -58.0  M5III         2.07v -1.52v  19.17 0.75   170
59. Alpha Ophiuchi            Rasalhague        17 35 +12.6   35.9 +22.6  A5III-IV      2.08   1.30   69.84 0.88    47
60. Beta Persei               Algol             03 08 +41.0  148.9 -14.9  B8V+G5IV+A    2.09e -0.18   35.14 0.90    93
61. Gamma Andromedae          Almach            02 04 +42.3  137.0 -18.6  K3II+B8V+A0V  2.10  -3.08    9.19 0.73   360
62. Beta Leonis               Denebola          11 49 +14.6  250.6 +70.8  A3V           2.14   1.92   90.16 0.89    36
63. Gamma Cassiopeiae         Cih               00 57 +60.7  123.6  -2.2  B0IV          2.15v -4.22v   5.32 0.56   610
64. Gamma Centauri            Muhlifain         12 42 -49.0  301.3 +13.8  A0III+A0III   2.20  -0.81   25.01 1.01   130
65. Zeta Puppis               Naos              08 04 -40.0  256.0  -4.6  O5Ia          2.21  -5.95    2.33 0.51  1400
66. Iota Carinae              Aspidiske         09 17 -59.3  278.5  -7.0  A8Ib          2.21v -4.42v   4.71 0.46   690
67. Alpha Coronae Borealis    Alphecca          15 35 +26.7   41.9 +53.7  A0V+G5V       2.22e  0.42   43.65 0.79    75
68. Lambda Velorum            Suhail            09 08 -43.4  265.9  +2.9  K4Ib          2.23  -3.99    5.69 0.53   570
69. Zeta Ursae Majoris        Mizar             13 24 +54.9  113.1 +61.6  A2V+A2V+A1V   2.23   0.33   41.73 0.61    78
70. Gamma Cygni               Sadr              20 22 +40.3   78.2  +1.9  F8Ib          2.23  -6.12    2.14 0.51  1500
71. Alpha Cassiopeiae         Schedar           00 41 +56.5  121.5  -6.3  K0II          2.24  -1.99   14.27 0.57   230
72. Gamma Draconis            Eltanin           17 57 +51.5   79.1 +29.1  K5III         2.24  -1.04   22.10 0.46   148
73. Delta Orionis             Mintaka           05 32  -0.3  203.9 -17.7  O9.5II+B2V    2.25e -4.99    3.56 0.83   920
74. Beta Cassiopeiae          Caph              00 09 +59.2  117.5  -3.2  F2III         2.28   1.17   59.89 0.56    55
75. Epsilon Centauri                            13 40 -53.5  310.2  +8.7  B1III         2.29  -3.02    8.68 0.77   380
76. Delta Scorpii             Dschubba          16 00 -22.6  350.1 +22.6  B0.5IV        2.29  -3.16    8.12 0.88   400
77. Epsilon Scorpii           Wei               16 50 -34.3  348.8  +6.6  K2.5III       2.29   0.78   49.85 0.81    65
78. Alpha Lupi                Men               14 42 -47.4  321.6 +11.4  B1.5III       2.30  -3.83    5.95 0.76   550
79. Eta Centauri                                14 36 -42.2  322.9 +16.6  B1.5V         2.33v -2.55v  10.57 0.83   310
80. Beta Ursae Majoris        Merak             11 02 +56.4  149.1 +54.8  A1V           2.34   0.41   41.07 0.60    79
81. Epsilon Boötis            Izar              14 45 +27.1   39.4 +64.8  K0II-III+A2V  2.35  -1.69   15.55 0.78   210
82. Epsilon Pegasi            Enif              21 44  +9.9   65.6 -31.4  K2Ib          2.38  -4.19    4.85 0.84   670
83. Kappa Scorpii             Girtab            17 42 -39.0  351.0  -4.6  B1.5III       2.39  -3.38    7.03 0.73   460
84. Alpha Phoenicis           Ankaa             00 26 -42.3  320.2 -74.0  K0III         2.40   0.52   42.14 0.78    77
85. Gamma Ursae Majoris       Phecda            11 54 +53.7  140.8 +61.4  A0V           2.41   0.36   38.99 0.68    84
86. Eta Ophiuchi              Sabik             17 10 -15.7    6.7 +14.1  A1V+A3V       2.43   0.37   38.77 0.86    84
87. Beta Pegasi               Scheat            23 04 +28.1   95.8 -29.1  M2III         2.44v -1.49v  16.37 0.72   200
88. Eta Canis Majoris         Aludra            07 24 -29.3  242.6  -6.5  B5Ia          2.45  -7.51    1.02 0.57  3000
89. Alpha Cephei              Alderamin         21 19 +62.6  101.0  +9.1  A7IV          2.45   1.58   66.84 0.49    49
90. Kappa Velorum             Markeb            09 22 -55.0  275.9  -3.5  B2IV          2.47  -3.62    6.05 0.48   540
91. Epsilon Cygni             Gienah            20 46 +34.0   76.0  -5.7  K0III         2.48   0.76   45.26 0.53    72
92. Alpha Pegasi              Markab            23 05 +15.2   88.4 -40.4  B9IV          2.49  -0.67   23.36 0.76   140
93. Alpha Ceti                Menkar            03 02  +4.1  173.3 -45.6  M2III         2.54  -1.61   14.82 0.83   220
94. Zeta Ophiuchi             Han               16 37 -10.6    6.2 +23.6  O9.5V         2.54  -3.20    7.12 0.71   460
95. Zeta Centauri             Al Nair al Kent.  13 56 -47.3  314.2 +14.2  B2.5IV        2.55  -2.81    8.48 0.74   390
96. Delta Leonis              Zosma             11 14 +20.5  224.3 +66.8  A4V           2.56   1.32   56.52 0.83    58
97. Beta Scorpii              Graffias          16 05 -19.8  353.1 +23.7  B1V+B2V       2.56  -3.50    6.15 1.12   530
98. Alpha Leporis             Arneb             05 33 -17.8  221.0 -25.1  F0Ib          2.58  -5.40    2.54 0.72  1300
99. Delta Centauri                              12 08 -50.7  295.9 +11.6  B2IV          2.58v -2.84v   8.25 0.79   400
100. Gamma Corvi               Gienah Ghurab     12 16 -17.5  291.1 +44.6  B8III         2.58  -0.94   19.78 0.81   165
101. Zeta Sagittarii           Ascella           19 03 -29.9    6.9 -15.5  A2IV+A4V      2.60   0.42   36.61 1.37    89
102. Beta Librae               Zubeneschamali    15 17  -9.4  352.0 +39.2  B8V           2.61  -0.84   20.38 0.87   160
103. Alpha Serpentis           Unukalhai         15 44  +6.4   14.1 +44.1  K2III         2.63   0.87   44.54 0.71    73
104. Beta Arietis              Sheratan          01 55 +20.8  142.4 -39.7  A5V           2.64   1.33   54.74 0.75    60
105. Alpha Librae              Zubenelgenubi     14 51 -16.0  340.4 +38.0  A3IV+F4IV     2.64   0.77   42.25 1.05    77
106. Alpha Columbae            Phact             05 40 -34.1  238.9 -28.8  B7IV          2.65  -1.93   12.16 0.60   270
107. Theta Aurigae                               06 00 +37.2  174.4  +6.8  A0III+G2V     2.65  -0.98   18.83 0.81   170
108. Beta Corvi                Kraz              12 34 -23.4  297.8 +39.3  G5III         2.65  -0.51   23.34 0.80   140
109. Delta Cassiopeiae         Ruchbah           01 26 +60.2  127.2  -2.4  A5III         2.66   0.24   32.81 0.62    99
110. Eta Boötis                Muphrid           13 55 +18.4    5.5 +73.0  G0IV          2.68   2.41   88.17 0.75    37
111. Beta Lupi                 Ke Kouan          14 59 -43.1  326.4 +13.9  B2III         2.68  -3.35    6.23 0.71   520
112. Iota Aurigae              Hassaleh          04 57 +33.2  170.6  -6.1  K3II          2.69  -3.29    6.37 0.96   510
113. Mu Velorum                                  10 47 -49.4  283.1  +8.6  G5III+G2V     2.69  -0.06   28.18 0.49   116
114. Alpha Muscae                                12 37 -69.1  301.6  -6.3  B2V           2.69  -2.17   10.67 0.48   310
115. Upsilon Scorpii           Lesath            17 31 -37.3  351.3  -1.9  B2IV          2.70  -3.31    6.29 0.81   520
116. Pi Puppis                                   07 17 -37.1  249.0 -11.3  K4Ib          2.71  -4.92    2.98 0.55  1100
117. Delta Sagittarii          Kaus Meridionalis 18 21 -29.8    3.0  -7.2  K2II          2.72  -2.14   10.67 0.93   310
118. Gamma Aquilae             Tarazed           19 46 +10.6   48.7  -7.0  K3II          2.72  -3.03    7.08 0.75   460
119. Delta Ophiuchi            Yed Prior         16 14  -3.7    8.8 +32.3  M1III         2.73  -0.86   19.16 1.02   170
120. Eta Draconis              Aldhibain         16 24 +61.5   92.6 +40.9  G8III         2.73   0.58   37.18 0.45    88
121. Theta Carinae                               10 43 -64.4  289.6  -4.9  B0V           2.74  -2.91    7.43 0.50   440
122. Gamma Virginis            Porrima           12 42  -1.5  298.1 +61.3  F0V+F0V       2.74   2.38   84.53 1.18    39
123. Iota Orionis              Hatysa            05 35  -5.9  209.5 -19.7  O9III         2.75  -5.30    2.46 0.77  1300
124. Iota Centauri                               13 21 -36.7  309.5 +25.8  A2V           2.75   1.48   55.64 0.74    59
125. Beta Ophiuchi             Cebalrai          17 43  +4.6   29.2 +17.3  K2III         2.76   0.76   39.78 0.75    82
126. Beta Eridani              Kursa             05 08  -5.1  205.4 -25.3  A3III         2.78   0.60   36.71 0.76    89
127. Beta Herculis             Kornephoros       16 30 +21.5   39.0 +40.3  G7III         2.78  -0.50   22.07 1.00   150
128. Delta Crucis                                12 15 -58.7  298.2  +3.8  B2IV          2.79  -2.45    8.96 0.60   360
129. Beta Draconis             Rastaban          17 30 +52.3   79.6 +33.4  G2II          2.79  -2.43    9.02 0.49   360
130. Alpha Canum Venaticorum   Cor Caroli        12 56 +38.3  118.3 +78.8  A0IV+F0V      2.80v  0.16v  29.60 1.04   110
131. Gamma Lupi                                  15 35 -41.2  333.2 +11.9  B2IV-V+B2IV-V 2.80  -3.40    5.75 1.24   570
132. Beta Leporis              Nihal             05 28 -20.8  223.6 -27.3  G5III         2.81  -0.63   20.49 0.85   160
133. Zeta Herculis             Rutilicus         16 41 +31.6   52.6 +40.3  F9IV+G7V      2.81   2.64   92.63 0.60    35
134. Beta Hydri                                  00 26 -77.3  304.7 -39.7  G2IV          2.82   3.45  133.78 0.51    24
135. Tau Scorpii                                 16 36 -28.2  351.6 +12.8  B0V           2.82  -2.78    7.59 0.78   430
136. Lambda Sagittarii         Kaus Borealis     18 28 -25.4    7.7  -6.5  K1III         2.82   0.95   42.20 0.90    77
137. Gamma Pegasi              Algenib           00 13 +15.2  109.4 -46.7  B2IV          2.83  -2.22    9.79 0.81   330
138. Rho Puppis                Turais            08 08 -24.3  243.2  +4.5  F6III         2.83   1.41   51.99 0.66    63
139. Beta Trianguli Australis                    15 55 -63.4  321.9  -7.5  F2IV          2.83   2.38   81.24 0.62    40
140. Zeta Persei                                 03 54 +31.9  162.3 -16.7  B1II+B8IV+A2V 2.84  -4.55    3.32 0.75   980
141. Beta Arae                                   17 25 -55.5  335.4 -11.0  K3Ib-II       2.84  -3.49    5.41 0.76   600
142. Alpha Arae                Choo              17 32 -49.9  340.8  -8.9  B2V           2.84  -1.51   13.46 0.95   240
143. Eta Tauri                 Alcyone           03 47 +24.1  166.6 -23.5  B7III         2.85  -2.41    8.87 0.99   370
144. Epsilon Virginis          Vindemiatrix      13 02 +11.0  312.3 +73.7  G8III         2.85   0.37   31.90 0.87   102
145. Delta Capricorni          Deneb Algedi      21 47 -16.1   37.6 -46.0  A5V           2.85e  2.49   84.58 0.88    39
146. Alpha Hydri               Head of Hydrus    01 59 -61.6  289.4 -53.7  F0III         2.86   1.16   45.74 0.55    71
147. Delta Cygni                                 19 45 +45.1   78.7 +10.2  B9.5III+F1V   2.86  -0.74   19.07 0.45   170
148. Mu Geminorum              Tejat             06 23 +22.5  189.8  +4.2  M3III         2.87v -1.39v  14.07 0.93   230
149. Gamma Trianguli Australis                   15 19 -68.7  316.5  -8.4  A1III         2.87  -0.87   17.85 0.52   180
150. Alpha Tucanae                               22 19 -60.3  330.1 -48.0  K3III         2.87  -1.05   16.42 0.59   200
151. Theta Eridani             Acamar            02 58 -40.3  247.9 -60.7  A4III+A1V     2.88  -0.59   20.22 0.54   160
152. Pi Sagittarii             Albaldah          19 10 -21.0   15.9 -13.3  F2II          2.88  -2.77    7.41 0.69   440
153. Beta Canis Minoris        Gomeisa           07 27 +08.3  209.5 +11.7  B8V           2.89  -0.70   19.16 0.85   170
154. Pi Scorpii                                  15 59 -26.1  347.2 +20.2  B1V+B2V       2.89  -2.85    7.10 0.84   460
155. Epsilon Persei                              03 58 +40.0  157.4 -10.1  B0.5V+A2V     2.90  -3.19    6.06 0.82   540
156. Sigma Scorpii             Alniyat           16 21 -25.6  351.3 +17.0  B1III         2.90v -3.86v   4.44 0.81   730
157. Beta Cygni                Albireo           19 31 +28.0   62.1  +4.6  K3II+B8V+B9V  2.90  -2.31    8.46 0.58   390
158. Beta Aquarii              Sadalsuud         21 32 -05.6   48.0 -37.9  G0Ib          2.90  -3.47    5.33 0.94   610
159. Gamma Persei                                03 05 +53.5  142.1  -4.3  G8III+A2V     2.91  -1.57   12.72 0.71   260
160. Upsilon Carinae                             09 47 -65.1  285.0  -8.8  A7Ib+B7III    2.92  -5.56    2.01 0.40  1600
161. Eta Pegasi                Matar             22 43 +30.2   92.5 -25.0  G2II-III+F0V  2.93  -1.16   15.18 0.79   215
162. Tau Puppis                                  06 50 -50.6  260.2 -20.9  K1III         2.94  -0.80   17.85 0.49   185
163. Delta Corvi               Algorel           12 30 -16.5  295.5 +46.0  B9.5V         2.94   0.79   37.11 0.69    88
164. Alpha Aquarii             Sadalmelik        22 06 -00.3   59.9 -42.1  G2Ib          2.95  -3.88    4.30 0.83   760
165. Gamma Eridani             Zaurak            03 58 -13.5  205.2 -44.5  M1III         2.97  -1.19   14.75 0.75   220
166. Zeta Tauri                Alheka            05 38 +21.1  185.7  -5.6  B4III         2.97  -2.56    7.82 1.02   420
167. Epsilon Leonis            Ras Elased Austr. 09 46 +23.8  206.8 +48.2  G1II          2.97  -1.46   13.01 0.88   250
168. Gamma² Sagittarii         Alnasl            18 06 -30.4    0.9  -4.5  K0III         2.98   0.63   33.94 0.87    96
169. Gamma Hydrae                                13 19 -23.2  311.1 +39.3  G8III         2.99  -0.05   24.69 0.70   132
170. Iota¹ Scorpii                               17 48 -40.1  350.6  -6.1  F2Ia          2.99  -5.71    1.82 0.73  1800
171. Zeta Aquilae              Deneb el Okab     19 05 +13.9   46.9  +3.3  A0V           2.99   0.96   39.18 0.72    83
172. Beta Trianguli                              02 10 +35.0  140.6 -25.2  A5III         3.00   0.09   26.24 0.77   124
173. Psi Ursae Majoris                           11 10 +44.5  165.8 +63.2  K1III         3.00  -0.27   22.21 0.68   147
174. Gamma Ursae Minoris       Pherkad Major     15 21 +71.8  108.5 +40.8  A3II          3.00  -2.84    6.79 0.46   480
175. Mu¹ Scorpii                                 16 52 -38.0  346.1  +3.9  B1.5V+B6.5V   3.00  -4.01    3.97 1.20   820
176. Gamma Gruis                                 21 54 -37.4    6.1 -51.5  B8III         3.00  -0.97   16.07 0.77   205
177. Delta Persei                                03 43 +47.8  150.3  -5.8  B5III         3.01  -3.04    6.18 0.85   530
178. Zeta Canis Majoris        Phurad            06 20 -30.1  237.5 -19.4  B2.5V         3.02  -2.05    9.70 0.58   340
179. Omicron² Canis Majoris                      07 03 -23.8  235.6  -8.2  B3Ia          3.02  -6.46    1.27 0.56  2600
180. Epsilon Corvi             Minkar            12 10 -22.6  290.6 +39.3  K2II          3.02  -1.82   10.75 0.71   300
181. Epsilon Aurigae           Almaaz            05 02 +43.8  162.8  +1.2  F0Ia          3.03e -5.95    1.60 1.16  2000
182. Beta Muscae                                 12 46 -68.1  302.5  -5.2  B2V+B3V       3.04  -1.86   10.48 0.65   310
183. Gamma Boötis              Seginus           14 32 +38.3   67.3 +66.2  A7III         3.04   0.96   38.29 0.73    85
184. Beta Capricorni           Dabih             20 21 -14.8   29.2 -26.4  G5II+A0V      3.05  -2.07    9.48 0.95   340
185. Epsilon Geminorum         Mebsuta           06 44 +25.1  189.5  +9.6  G8Ib          3.06  -4.15    3.61 0.91   900
186. Mu Ursae Majoris          Tania Australis   10 22 +41.5  177.9 +56.4  M0III         3.06e -1.35   13.11 0.75   250
187. Delta Draconis            Tais              19 13 +67.7   98.7 +23.0  G9III         3.07   0.63   32.54 0.46   100
188. Eta Sagittarii                              18 18 -36.8  356.4  -9.7  M3.5III       3.10  -0.20   21.87 0.92   149
189. Zeta Hydrae                                 08 55 +05.9  222.3 +30.2  G9III         3.11  -0.21   21.64 0.99   150
190. Nu Hydrae                                   10 50 -16.2  265.1 +37.6  K2III         3.11  -0.03   23.54 0.81   139
191. Lambda Centauri                             11 36 -63.0  294.5  -1.4  B9III         3.11  -2.39    7.96 0.52   410
192. Alpha Indi                Persian           20 38 -47.3  352.6 -37.2  K0III         3.11   0.65   32.21 0.75   101
193. Beta Columbae             Wazn              05 51 -35.8  241.3 -27.1  K2III         3.12   1.02   37.94 0.57    86
194. Iota Ursae Majoris        Talita            08 59 +48.0  171.5 +40.8  A7IV          3.12   2.29   68.32 0.79    48
195. Zeta Arae                                   16 59 -56.0  332.8  -8.2  K3II          3.12  -3.11    5.68 0.91   570
196. Delta Herculis            Sarin             17 15 +24.8   46.8 +31.4  A3IV          3.12   1.21   41.55 0.65    78
197. Kappa Centauri            Ke Kwan           14 59 -42.1  326.9 +14.8  B2IV          3.13  -2.96    6.05 0.73   540
198. Alpha Lyncis                                09 21 +34.4  190.2 +44.7  K7III         3.14  -1.02   14.69 0.81   220
199. N Velorum                                   09 31 -57.0  278.2  -4.1  K5III         3.16  -1.15   13.72 0.51   240
200. Pi Herculis                                 17 15 +36.8   60.7 +34.3  K3II          3.16  -2.10    8.89 0.52   370
201. Nu Puppis                                   06 38 -43.2  251.9 -20.5  B8III         3.17  -2.39    7.71 0.52   420
202. Theta Ursae Majoris       Al Haud           09 33 +51.7  165.5 +45.7  F6IV          3.17   2.52   74.15 0.74    44
203. Zeta Draconis             Aldhibah          17 09 +65.7   96.0 +35.0  B6III         3.17  -1.92    9.60 0.47   340
204. Phi Sagittarii                              18 46 -27.0    8.0 -10.8  B8III         3.17  -1.08   14.14 0.88   230
205. Eta Aurigae               Hoedus II         05 07 +41.2  165.4  +0.3  B3V           3.18  -0.96   14.87 0.74   220
206. Alpha Circini                               14 43 -65.0  314.3  -4.6  F0V+K5V       3.18   2.11   60.97 0.58    53
207. Pi³ Orionis               Tabit             04 50 +07.0  191.5 -23.1  F6V           3.19   3.67  124.60 0.95    26
208. Epsilon Leporis                             05 05 -22.4  223.3 -32.7  K5III         3.19  -1.02   14.39 0.68   225
209. Kappa Ophiuchi                              16 58 +09.4   28.4 +29.5  K2III         3.19   1.09   37.99 0.75    86
210. G Scorpii                                   17 50 -37.0  353.5  -4.9  K2III         3.19   0.24   25.71 0.87   127
211. Zeta Cygni                                  21 13 +30.2   76.8 -12.5  G8III         3.21  -0.12   21.62 0.63   151
212. Gamma Cephei              Errai             23 39 +77.6  119.0 +15.3  K1IV          3.21   2.51   72.50 0.52    45
213. Delta Lupi                                  15 21 -40.6  331.3 +13.8  B1.5IV        3.22  -2.75    6.39 0.86   510
214. Epsilon Ophiuchi          Yed Posterior     16 18 -04.7    8.6 +30.8  G9III         3.23   0.64   30.34 0.79   108
215. Eta Serpentis             Alava             18 21 -02.9   26.9  +5.4  K0III-IV      3.23   1.84   52.81 0.75    62
216. Beta Cephei               Alphirk           21 29 +70.6  107.5 +14.0  B2III         3.23v -3.08v   5.48 0.47   600
217. Alpha Pictoris                              06 48 -61.9  271.9 -24.1  A7III         3.24   0.83   32.96 2.14    99
218. Theta Aquilae                               20 11 -00.8   41.6 -18.1  B9.5III       3.24  -1.48   11.36 0.92   285
219. Sigma Puppis                                07 29 -43.3  255.7 -11.9  K5III+G5V     3.25  -0.51   17.74 0.47   185
220. Pi Hydrae                                   14 06 -26.7  323.0 +33.3  K2III         3.25   0.79   32.17 0.77   101
221. Sigma Librae              Brachium          15 04 -25.3  337.2 +28.6  M3III         3.25  -1.51   11.17 0.98   290
222. Gamma Lyrae               Sulaphat          18 59 +32.7   63.3 +12.8  B9II          3.25  -3.20    5.14 0.51   630
223. Gamma Hydri                                 03 47 -74.2  289.1 -37.8  M2III         3.26  -0.83   15.23 0.53   215
224. Delta Andromedae                            00 39 +30.9  119.9 -31.9  K3III         3.27   0.81   32.19 0.68   101
225. Theta Ophiuchi                              17 22 -25.0    0.5  +6.6  B2IV          3.27  -2.92    5.79 0.69   560
226. Delta Aquarii             Skat              22 55 -15.8   49.6 -60.7  A3III         3.27  -0.18   20.44 2.26   160
227. Mu Leporis                                  05 13 -16.2  217.3 -28.9  B9IV          3.29v -0.47v  17.69 0.71   185
228. Omega Carinae                               10 14 -70.0  290.2 -11.2  B8III         3.29  -1.99    8.81 0.48   370
229. Iota Draconis             Edasich           15 25 +59.0   94.0 +48.6  K2III         3.29   0.81   31.92 0.51   102
230. Alpha Doradus                               04 34 -55.0  263.8 -41.4  A0IV+B9IV     3.30  -0.36   18.56 0.46   175
231. p Carinae                                   10 32 -61.7  287.2  -3.2  B4V           3.30  -2.62    6.56 0.49   500
232. Mu Centauri                                 13 50 -42.5  314.2 +19.1  B2IV-V        3.30v -2.74v   6.19 0.71   530
233. Eta Geminorum             Propus            06 15 +22.5  188.9  +2.5  M3III         3.31v -1.84v   9.34 1.99   350
234. Alpha Herculis            Rasalgethi        17 15 +14.4   35.5 +27.8  M5III+G5III   3.31v -2.04v   8.53 2.80   380
235. Gamma Arae                                  17 25 -56.4  334.6 -11.5  B1III         3.31  -4.40    2.87 0.75  1100
236. Beta Phoenicis                              01 06 -46.7  295.5 -70.2  G8III         3.32  -0.55   16.9  9.9    190
237. Rho Persei                Gorgonea Tertia   03 05 +38.8  149.6 -17.0  M3III         3.32v -1.67v  10.03 0.83   325
238. Delta Ursae Majoris       Megrez            12 15 +57.0  132.6 +59.4  A3V           3.32   1.33   40.05 0.60    81
239. Eta Scorpii                                 17 12 -43.2  344.4  -2.3  F3III-IV      3.32   1.61   45.56 0.79    72
240. Nu Ophiuchi                                 17 59 -09.8   18.2  +7.0  K0III         3.32  -0.03   21.35 0.79   155
241. Tau Sagittarii                              19 07 -27.7    9.3 -15.4  K1III         3.32   0.48   27.09 1.48   120
242. Alpha Reticuli                              04 14 -62.5  274.3 -41.7  G8III         3.33  -0.17   19.98 0.45   165
243. Theta Leonis              Chort             11 14 +15.4  235.4 +64.6  A2III         3.33  -0.35   18.36 0.77   180
244. Xi Puppis                 Asmidiske         07 49 -24.9  241.5  +0.6  G5Ib          3.34  -4.74    2.42 0.74  1300
245. Epsilon Cassiopeiae       Segin             01 54 +63.7  129.9  +1.7  B2III         3.35  -2.31    7.38 0.57   440
246. Eta Orionis               Algjebbah         05 24 -02.4  204.9 -20.4  B1V+B2V       3.35  -3.86    3.62 0.88   900
247. Xi Geminorum              Alzirr            06 45 +12.9  200.7  +4.5  F5IV          3.35   2.13   57.02 0.83    57
248. Omicron Ursae Majoris     Muscida           08 30 +60.7  156.0 +35.4  G5III         3.35v -0.40v  17.76 0.65   185
249. Delta Aquilae                               19 25 +03.1   39.6  -6.1  F2IV          3.36   2.43   65.05 0.81    50
250. Epsilon Lupi                                15 23 -44.7  329.2 +10.3  B2IV-V        3.37  -2.58    6.47 0.61   500
251. Zeta Virginis             Heze              13 35 -00.6  325.3 +60.4  A3V           3.38   1.62   44.55 0.90    73
252. Epsilon Hydrae                              08 47 +06.4  220.7 +28.5  G5III+A8V+F7V 3.38   0.29   24.13 1.29   135
253. Lambda Orionis            Meissa            05 35 +09.9  195.1 -12.0  O8III         3.39  -4.16    3.09 0.78  1100
254. q Carinae                                   10 17 -61.3  285.5  -3.8  K3II          3.39  -3.38    4.43 0.49   740
255. Delta Virginis            Auva              12 56 +03.4  305.5 +66.3  M3III         3.39  -0.57   16.11 0.88   200
256. Zeta Cephei                                 22 11 +58.2  103.1  +1.7  K1II          3.39  -3.35    4.49 0.50   730
257. Theta² Tauri                                04 29 +15.9  180.4 -22.0  A7III         3.40   0.10   21.89 0.83   150
258. Gamma Phoenicis                             01 28 -43.3  280.5 -72.2  K5III         3.41  -0.87   13.94 0.64   235
259. Lambda Tauri                                04 01 +12.5  178.4 -29.4  B3V+A4IV      3.41e -1.87    8.81 0.99   370
260. Nu Centauri                                 13 50 -41.7  314.4 +19.9  B2IV          3.41  -2.41    6.87 0.77   475
261. Zeta Lupi                                   15 12 -52.1  323.8  +5.0  G8III         3.41   0.65   28.06 0.71   116
262. Eta Cephei                                  20 45 +61.8  097.9 +11.6  K0IV          3.41   2.63   69.73 0.49    47
263. Zeta Pegasi               Homam             22 41 +10.8  078.9 -40.7  B8.5V         3.41  -0.62   15.64 0.75   210
264. Alpha Trianguli           Mothallah         01 53 +29.6  138.6 -31.4  F6IV          3.42   1.95   50.87 0.82    64
265. Eta Lupi                                    16 00 -38.4  338.8 +11.0  B2.5IV+A5V    3.42  -2.48    6.61 0.78   495
266. Mu Herculis                                 17 46 +27.7  052.4 +25.6  G5IV          3.42   3.80  119.05 0.62    27
267. Beta Pavonis                                20 45 -66.2  329.0 -36.0  A7III         3.42   0.29   23.71 0.63   140
268. a Carinae                                   09 11 -58.9  277.7  -7.4  B2IV          3.43  -2.11    7.79 0.47   420
269. Zeta Leonis               Adhafera          10 17 +23.4  210.2 +55.0  F0II-III      3.43  -1.08   12.56 0.78   260
270. Lambda Aquilae            Althalimain       19 06 -04.9  030.3  -5.5  B9V           3.43   0.51   26.05 0.81   125
271. Lambda Ursae Majoris      Tania Borealis    10 17 +42.9  175.9 +55.1  A2IV          3.45   0.38   24.27 0.79   135
272. Beta Lyrae                Sheliak           18 50 +33.4   63.2 +14.8  B8II          3.45e -3.71    3.70 0.52   880
273. Eta Cassiopeiae           Achird            00 49 +57.8  122.6  -5.1  G0V+K7V       3.46   4.59  167.99 0.62    19
274. Eta Ceti                  Dheneb            01 09 -10.2  137.2 -72.6  K2III         3.46   0.67   27.73 0.71   118
275. Chi Carinae                                 07 57 -53.0  266.7 -12.3  B3IV          3.46  -1.91    8.43 0.52   390
276. Delta Bootis                                15 16 +33.3  053.1 +58.4  G8III         3.46   0.69   27.94 0.61   117
277. Gamma Ceti                Kaffaljidhma      02 43 +03.2  168.9 -49.4  A3V+F3V+K5V   3.47   1.47   39.78 0.95    82
278. Eta Leonis                                  10 07 +16.8  219.5 +50.8  A0Ib          3.48  -5.60    1.53 0.77  2100
279. Eta Herculis                                16 43 +38.9  062.3 +40.9  G8III         3.48   0.80   29.11 0.52   112
280. Tau Ceti                                    01 44 -15.9  173.1 -73.4  G8V           3.49   5.68  274.17 0.80    12
281. Sigma Canis Majoris                         07 02 -27.9  239.2 -10.3  K7Ib          3.49  -4.37    2.68 0.59  1200
282. Nu Ursae Majoris          Alula Borealis    11 18 +33.1  190.7 +69.1  K3II          3.49  -2.07    7.74 0.79   420
283. Beta Bootis               Nekkar            15 02 +40.4  067.6 +60.0  G8III         3.49  -0.64   14.91 0.57   220
284. Alpha Telescopii                            18 27 -46.0  348.7 -15.2  B3IV          3.49  -0.93   13.08 0.71   250
285. Epsilon Gruis                               22 49 -51.3  338.3 -56.5  A3V           3.49   0.49   25.16 0.68   130
286. Kappa Canis Majoris                         06 50 -32.5  242.4 -14.5  B1.5IV        3.50  -3.42    4.13 0.50   790
287. Delta Geminorum           Wasat             07 20 +22.0  196.0 +15.9  F2IV+K3V      3.50   2.22   55.45 0.85    59
288. Iota Cephei                                 22 50 +66.2  111.1  +6.2  K0III         3.50   0.76   28.27 0.52   115
289. Gamma Sagittae                              19 59 +19.5   58.0  -5.2  K5III         3.51  -1.11   11.90 0.71   270
290. Mu Pegasi                 Sadalbari         22 50 +24.6   90.7 -30.6  G8III         3.51   0.74   27.95 0.77   117
291. Delta Eridani             Rana              03 43 -09.8  198.1 -46.0  K0IV          3.52   3.74  110.58 0.88    29
292. Omicron Leonis            Subra             09 41 +09.9  224.6 +42.1  A9V+F6V       3.52   0.43   24.12 0.97   135
293. Phi Velorum               Tseen Ke          09 57 -54.6  279.4  +0.1  B5Ib          3.52  -5.34    1.69 0.50  1900
294. Xi² Sagittarii                              18 58 -21.1   14.6 -10.8  K0II          3.52  -1.77    8.76 0.99   370
295. Theta Pegasi              Baham             22 10 +06.2   67.4 -38.7  A2V           3.52   1.16   33.77 0.85    97
296. Epsilon Tauri             Ain               04 29 +19.2  177.6 -19.9  K0III         3.53   0.15   21.04 0.82   155
297. Beta Cancri               Tarf              08 17 +09.2  214.3 +23.1  K4III         3.53  -1.24   11.23 0.97   290
298. Xi Hydrae                                   11 33 -31.9  284.1 +28.1  G8III         3.54   0.55   25.23 0.83   130
299. Mu Serpentis                                15 50 -03.4    4.6 +37.3  A0V           3.54   0.14   20.94 0.82   155
300. Xi Serpentis                                17 38 -15.4   10.6  +8.7  F0III         3.54   0.99   30.93 1.03   105

Column 1: Approximate rank of the star in order of apparent magnitude.
Column 2: Bayer name for the star.
Column 3: Proper name of the star.  Usually a weird arabic name. :)
Column 4: Right Ascension in hours and minutes for epoch 2000.
Column 5: Declination in degrees for epoch 2000.
Column 6: Galactic longitude of the star.
Column 7: Galactic latitude of the star.
Column 8: Spectral classification of the main stars in the system.
Column 9: Apparent visual magnitude of the star.  A letter 'v' means the magnitude varies by
   more than 0.1.  A letter 'e' means that the star is an eclipsing binary.
Column 10: Absolute magnitude of the star.  A letter 'v' means the magnitude varies by more than 0.1.
Column 11: The Hipparcos parallax of the star (milli-arcseconds).
Column 12: The error in the parallax (milli-arcseconds).
Column 13: The distance in light years (=3.2616/parallax).

References:
ESA, (1997), The Hipparcos Catalogue.
Hoffleit D, Warren Jr W, (1991), Harvard Revised Bright Star Catalogue, 5th Edition.

/* * (1) ***************************************************************************************************** */

1. Alpha Canis Majoris       Sirius            06 45 -16.7  227.2  -8.9  A1V          -1.46   1.43  379.21 1.58     9
2. Alpha Carinae             Canopus           06 24 -52.7  261.2 -25.3  F0Ib         -0.73  -5.64   10.43 0.53   310
3. Alpha Centauri            Rigil Kentaurus   14 40 -60.8  315.8  -0.7  G2V+K1V      -0.29   4.06  742.12 1.40     4
4. Alpha Boötis              Arcturus          14 16 +19.2   15.2 +69.0  K2III        -0.05  -0.31   88.85 0.74    37
5. Alpha Lyrae               Vega              18 37 +38.8   67.5 +19.2  A0V           0.03   0.58  128.93 0.55    25
6. Alpha Aurigae             Capella           05 17 +46.0  162.6  +4.6  G5III+G0III   0.07  -0.49   77.29 0.89    42
7. Beta Orionis              Rigel             05 15  -8.2  209.3 -25.1  B8Ia          0.15v -6.72v   4.22 0.81   770
8. Alpha Canis Minoris       Procyon           07 39  +5.2  213.7 +13.0  F5IV-V        0.36   2.64  285.93 0.88    11
9. Alpha Eridani             Achernar          01 38 -57.2  290.7 -58.8  B3V           0.45  -2.77   22.68 0.57   144
10. Alpha Orionis             Betelgeuse        05 55  +7.4  199.8  -9.0  M2Ib          0.55v -5.04v   7.63 1.64   430
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
21. Alpha Leonis              Regulus           10 08 +12.0  226.3 +48.9  B7V           1.36  -0.52   42.09 0.79    78
22. Epsilon Canis Majoris     Adhara            06 59 -29.0  239.9 -11.3  B2II          1.50  -4.10    7.57 0.57   430
23. Alpha Geminorum           Castor            07 35 +31.9  187.5 +22.6  A1V+A2V       1.58   0.59   63.27 1.23    52
24. Lambda Scorpii            Shaula            17 34 -37.1  351.8  -2.3  B2IV          1.62  -5.05    4.64 0.90   700
25. Gamma Crucis              Gacrux            12 31 -57.1  300.2  +5.7  M3.5III       1.63  -0.52   37.09 0.67    88
26. Gamma Orionis             Bellatrix         05 25  +6.3  197.0 -16.0  B2III         1.64  -2.72   13.42 0.98   240
27. Beta Tauri                Elnath            05 26 +28.6  178.0  -3.8  B7III         1.66  -1.36   24.89 0.88   130
28. Beta Carinae              Miaplacidus       09 13 -69.7  286.0 -14.4  A2III         1.67  -0.99   29.34 0.47   111
29. Epsilon Orionis           Alnilam           05 36  -1.2  205.2 -17.3  B0Ia          1.69  -6.38    2.43 0.91  1300
30. Alpha Gruis               Alnair            22 08 -47.0  350.0 -52.4  B7IV          1.74  -0.72   32.16 0.82   101
31. Zeta Orionis              Alnitak           05 41  -1.9  206.5 -16.5  O9.5Ib+B0III  1.75  -5.25    3.99 0.79   820
32. Epsilon Ursae Majoris     Alioth            12 54 +56.0  122.2 +61.1  A0IV          1.77  -0.20   40.30 0.62    81
33. Alpha Persei              Mirfak            03 24 +49.9  146.5  -5.9  F5Ib          1.80  -4.49    5.51 0.66   590
34. Alpha Ursae Majoris       Dubhe             11 04 +61.8  142.8 +51.0  K0III+F0V     1.80  -1.09   26.38 0.53   124
35. Gamma Velorum             Regor             08 10 -47.3  262.8  -7.6  WC8+O9Ib      1.81  -5.25    3.88 0.53   840
36. Delta Canis Majoris       Wezen             07 08 -26.4  238.4  -8.3  F8Ia          1.83  -6.87    1.82 0.56  1800
37. Epsilon Sagittarii        Kaus Australis    18 24 -34.4  359.2  -9.8  B9.5III       1.84  -1.39   22.55 1.02   145
38. Eta Ursae Majoris         Alkaid            13 48 +49.3  100.5 +65.3  B3V           1.86  -0.59   32.39 0.74   101
39. Theta Scorpii             Sargas            17 37 -43.0  347.1  -5.9  F1II          1.86  -2.75   11.99 0.84   270
40. Epsilon Carinae           Avior             08 23 -59.5  274.3 -12.5  K3II+B2V      1.87  -4.57    5.16 0.49   630
41. Beta Aurigae              Menkalinan        06 00 +44.9  167.5 +10.5  A2IV          1.90  -0.10   39.72 0.78    82
42. Alpha Trianguli Australis Atria             16 49 -69.0  321.6 -15.3  K2Ib-II       1.92  -3.61    7.85 0.63   420
43. Gamma Geminorum           Alhena            06 38 +16.4  196.8  +4.5  A0IV          1.93  -0.60   31.12 2.33   105
44. Alpha Pavonis             Peacock           20 26 -56.7  340.9 -35.3  B0.5V+B2V     1.93  -1.82   17.80 0.70   180
45. Delta Velorum             Koo She           08 45 -54.7  272.1  -7.3  A0V           1.95   0.01   40.90 0.38    80
46. Beta Canis Majoris        Mirzam            06 23 -18.0  226.1 -14.2  B1III         1.98  -3.95    6.53 0.66   500
47. Alpha Hydrae              Alphard           09 28  -8.7  241.6 +29.1  K3II          1.98  -1.70   18.40 0.78   180
48. Alpha Ursae Minoris       Polaris           02 32 +89.3  123.3 +26.5  F7Ib-II       1.99v -3.62v   7.56 0.48   430
49. Gamma Leonis              Algieba           10 20 +19.8  216.6 +54.7  K0III+G7III   2.00  -0.93   25.96 0.83   126
50. Alpha Arietis             Hamal             02 07 +23.5  144.5 -36.2  K2III         2.01   0.48   49.48 0.99    66
51. Beta Ceti                 Diphda            00 44 -18.0  112.0 -80.7  K0III         2.04  -0.30   34.04 0.82    96
52. Sigma Sagittarii          Nunki             18 55 -26.3    9.5 -12.4  B3V           2.05  -2.14   14.54 0.88   220
53. Theta Centauri            Menkent           14 07 -36.4  319.5 +24.0  K0III         2.06   0.70   53.52 0.79    61
54. Alpha Andromedae          Alpheratz         00 08 +29.1  111.6 -32.8  B9IV          2.07  -0.30   33.60 0.73    97
55. Beta Andromedae           Mirach            01 10 +35.6  127.2 -27.1  M0II          2.07  -1.86   16.36 0.76   200
56. Kappa Orionis             Saiph             05 48  -9.7  214.6 -18.4  B0.5III       2.07  -4.65    4.52 0.77   720
57. Beta Ursae Minoris        Kochab            14 51 +74.2  112.7 +40.5  K4III         2.07  -0.87   25.79 0.52   127
58. Beta Gruis                Al Dhanab         22 43 -46.9  346.2 -58.0  M5III         2.07v -1.52v  19.17 0.75   170
59. Alpha Ophiuchi            Rasalhague        17 35 +12.6   35.9 +22.6  A5III-IV      2.08   1.30   69.84 0.88    47
60. Beta Persei               Algol             03 08 +41.0  148.9 -14.9  B8V+G5IV+A    2.09e -0.18   35.14 0.90    93
61. Gamma Andromedae          Almach            02 04 +42.3  137.0 -18.6  K3II+B8V+A0V  2.10  -3.08    9.19 0.73   360
62. Beta Leonis               Denebola          11 49 +14.6  250.6 +70.8  A3V           2.14   1.92   90.16 0.89    36
63. Gamma Cassiopeiae         Cih               00 57 +60.7  123.6  -2.2  B0IV          2.15v -4.22v   5.32 0.56   610
64. Gamma Centauri            Muhlifain         12 42 -49.0  301.3 +13.8  A0III+A0III   2.20  -0.81   25.01 1.01   130
65. Zeta Puppis               Naos              08 04 -40.0  256.0  -4.6  O5Ia          2.21  -5.95    2.33 0.51  1400
66. Iota Carinae              Aspidiske         09 17 -59.3  278.5  -7.0  A8Ib          2.21v -4.42v   4.71 0.46   690
67. Alpha Coronae Borealis    Alphecca          15 35 +26.7   41.9 +53.7  A0V+G5V       2.22e  0.42   43.65 0.79    75
68. Lambda Velorum            Suhail            09 08 -43.4  265.9  +2.9  K4Ib          2.23  -3.99    5.69 0.53   570
69. Zeta Ursae Majoris        Mizar             13 24 +54.9  113.1 +61.6  A2V+A2V+A1V   2.23   0.33   41.73 0.61    78
70. Gamma Cygni               Sadr              20 22 +40.3   78.2  +1.9  F8Ib          2.23  -6.12    2.14 0.51  1500
71. Alpha Cassiopeiae         Schedar           00 41 +56.5  121.5  -6.3  K0II          2.24  -1.99   14.27 0.57   230
72. Gamma Draconis            Eltanin           17 57 +51.5   79.1 +29.1  K5III         2.24  -1.04   22.10 0.46   148
73. Delta Orionis             Mintaka           05 32  -0.3  203.9 -17.7  O9.5II+B2V    2.25e -4.99    3.56 0.83   920
74. Beta Cassiopeiae          Caph              00 09 +59.2  117.5  -3.2  F2III         2.28   1.17   59.89 0.56    55
75. Epsilon Centauri                            13 40 -53.5  310.2  +8.7  B1III         2.29  -3.02    8.68 0.77   380
76. Delta Scorpii             Dschubba          16 00 -22.6  350.1 +22.6  B0.5IV        2.29  -3.16    8.12 0.88   400
77. Epsilon Scorpii           Wei               16 50 -34.3  348.8  +6.6  K2.5III       2.29   0.78   49.85 0.81    65
78. Alpha Lupi                Men               14 42 -47.4  321.6 +11.4  B1.5III       2.30  -3.83    5.95 0.76   550
79. Eta Centauri                                14 36 -42.2  322.9 +16.6  B1.5V         2.33v -2.55v  10.57 0.83   310
80. Beta Ursae Majoris        Merak             11 02 +56.4  149.1 +54.8  A1V           2.34   0.41   41.07 0.60    79
81. Epsilon Boötis            Izar              14 45 +27.1   39.4 +64.8  K0II-III+A2V  2.35  -1.69   15.55 0.78   210
82. Epsilon Pegasi            Enif              21 44  +9.9   65.6 -31.4  K2Ib          2.38  -4.19    4.85 0.84   670
83. Kappa Scorpii             Girtab            17 42 -39.0  351.0  -4.6  B1.5III       2.39  -3.38    7.03 0.73   460
84. Alpha Phoenicis           Ankaa             00 26 -42.3  320.2 -74.0  K0III         2.40   0.52   42.14 0.78    77
85. Gamma Ursae Majoris       Phecda            11 54 +53.7  140.8 +61.4  A0V           2.41   0.36   38.99 0.68    84
86. Eta Ophiuchi              Sabik             17 10 -15.7    6.7 +14.1  A1V+A3V       2.43   0.37   38.77 0.86    84
87. Beta Pegasi               Scheat            23 04 +28.1   95.8 -29.1  M2III         2.44v -1.49v  16.37 0.72   200
88. Eta Canis Majoris         Aludra            07 24 -29.3  242.6  -6.5  B5Ia          2.45  -7.51    1.02 0.57  3000
89. Alpha Cephei              Alderamin         21 19 +62.6  101.0  +9.1  A7IV          2.45   1.58   66.84 0.49    49
90. Kappa Velorum             Markeb            09 22 -55.0  275.9  -3.5  B2IV          2.47  -3.62    6.05 0.48   540
91. Epsilon Cygni             Gienah            20 46 +34.0   76.0  -5.7  K0III         2.48   0.76   45.26 0.53    72
92. Alpha Pegasi              Markab            23 05 +15.2   88.4 -40.4  B9IV          2.49  -0.67   23.36 0.76   140
93. Alpha Ceti                Menkar            03 02  +4.1  173.3 -45.6  M2III         2.54  -1.61   14.82 0.83   220
94. Zeta Ophiuchi             Han               16 37 -10.6    6.2 +23.6  O9.5V         2.54  -3.20    7.12 0.71   460
95. Zeta Centauri             Al Nair al Kent.  13 56 -47.3  314.2 +14.2  B2.5IV        2.55  -2.81    8.48 0.74   390
96. Delta Leonis              Zosma             11 14 +20.5  224.3 +66.8  A4V           2.56   1.32   56.52 0.83    58
97. Beta Scorpii              Graffias          16 05 -19.8  353.1 +23.7  B1V+B2V       2.56  -3.50    6.15 1.12   530
98. Alpha Leporis             Arneb             05 33 -17.8  221.0 -25.1  F0Ib          2.58  -5.40    2.54 0.72  1300
99. Delta Centauri                              12 08 -50.7  295.9 +11.6  B2IV          2.58v -2.84v   8.25 0.79   400
100. Gamma Corvi               Gienah Ghurab     12 16 -17.5  291.1 +44.6  B8III         2.58  -0.94   19.78 0.81   165
101. Zeta Sagittarii           Ascella           19 03 -29.9    6.9 -15.5  A2IV+A4V      2.60   0.42   36.61 1.37    89
102. Beta Librae               Zubeneschamali    15 17  -9.4  352.0 +39.2  B8V           2.61  -0.84   20.38 0.87   160
103. Alpha Serpentis           Unukalhai         15 44  +6.4   14.1 +44.1  K2III         2.63   0.87   44.54 0.71    73
104. Beta Arietis              Sheratan          01 55 +20.8  142.4 -39.7  A5V           2.64   1.33   54.74 0.75    60
105. Alpha Librae              Zubenelgenubi     14 51 -16.0  340.4 +38.0  A3IV+F4IV     2.64   0.77   42.25 1.05    77
106. Alpha Columbae            Phact             05 40 -34.1  238.9 -28.8  B7IV          2.65  -1.93   12.16 0.60   270
107. Theta Aurigae                               06 00 +37.2  174.4  +6.8  A0III+G2V     2.65  -0.98   18.83 0.81   170
108. Beta Corvi                Kraz              12 34 -23.4  297.8 +39.3  G5III         2.65  -0.51   23.34 0.80   140
109. Delta Cassiopeiae         Ruchbah           01 26 +60.2  127.2  -2.4  A5III         2.66   0.24   32.81 0.62    99
110. Eta Boötis                Muphrid           13 55 +18.4    5.5 +73.0  G0IV          2.68   2.41   88.17 0.75    37
111. Beta Lupi                 Ke Kouan          14 59 -43.1  326.4 +13.9  B2III         2.68  -3.35    6.23 0.71   520
112. Iota Aurigae              Hassaleh          04 57 +33.2  170.6  -6.1  K3II          2.69  -3.29    6.37 0.96   510
113. Mu Velorum                                  10 47 -49.4  283.1  +8.6  G5III+G2V     2.69  -0.06   28.18 0.49   116
114. Alpha Muscae                                12 37 -69.1  301.6  -6.3  B2V           2.69  -2.17   10.67 0.48   310
115. Upsilon Scorpii           Lesath            17 31 -37.3  351.3  -1.9  B2IV          2.70  -3.31    6.29 0.81   520
116. Pi Puppis                                   07 17 -37.1  249.0 -11.3  K4Ib          2.71  -4.92    2.98 0.55  1100
117. Delta Sagittarii          Kaus Meridionalis 18 21 -29.8    3.0  -7.2  K2II          2.72  -2.14   10.67 0.93   310
118. Gamma Aquilae             Tarazed           19 46 +10.6   48.7  -7.0  K3II          2.72  -3.03    7.08 0.75   460
119. Delta Ophiuchi            Yed Prior         16 14  -3.7    8.8 +32.3  M1III         2.73  -0.86   19.16 1.02   170
120. Eta Draconis              Aldhibain         16 24 +61.5   92.6 +40.9  G8III         2.73   0.58   37.18 0.45    88
121. Theta Carinae                               10 43 -64.4  289.6  -4.9  B0V           2.74  -2.91    7.43 0.50   440
122. Gamma Virginis            Porrima           12 42  -1.5  298.1 +61.3  F0V+F0V       2.74   2.38   84.53 1.18    39
123. Iota Orionis              Hatysa            05 35  -5.9  209.5 -19.7  O9III         2.75  -5.30    2.46 0.77  1300
124. Iota Centauri                               13 21 -36.7  309.5 +25.8  A2V           2.75   1.48   55.64 0.74    59
125. Beta Ophiuchi             Cebalrai          17 43  +4.6   29.2 +17.3  K2III         2.76   0.76   39.78 0.75    82
126. Beta Eridani              Kursa             05 08  -5.1  205.4 -25.3  A3III         2.78   0.60   36.71 0.76    89
127. Beta Herculis             Kornephoros       16 30 +21.5   39.0 +40.3  G7III         2.78  -0.50   22.07 1.00   150
128. Delta Crucis                                12 15 -58.7  298.2  +3.8  B2IV          2.79  -2.45    8.96 0.60   360
129. Beta Draconis             Rastaban          17 30 +52.3   79.6 +33.4  G2II          2.79  -2.43    9.02 0.49   360
130. Alpha Canum Venaticorum   Cor Caroli        12 56 +38.3  118.3 +78.8  A0IV+F0V      2.80v  0.16v  29.60 1.04   110
131. Gamma Lupi                                  15 35 -41.2  333.2 +11.9  B2IV-V+B2IV-V 2.80  -3.40    5.75 1.24   570
132. Beta Leporis              Nihal             05 28 -20.8  223.6 -27.3  G5III         2.81  -0.63   20.49 0.85   160
133. Zeta Herculis             Rutilicus         16 41 +31.6   52.6 +40.3  F9IV+G7V      2.81   2.64   92.63 0.60    35
134. Beta Hydri                                  00 26 -77.3  304.7 -39.7  G2IV          2.82   3.45  133.78 0.51    24
135. Tau Scorpii                                 16 36 -28.2  351.6 +12.8  B0V           2.82  -2.78    7.59 0.78   430
136. Lambda Sagittarii         Kaus Borealis     18 28 -25.4    7.7  -6.5  K1III         2.82   0.95   42.20 0.90    77
137. Gamma Pegasi              Algenib           00 13 +15.2  109.4 -46.7  B2IV          2.83  -2.22    9.79 0.81   330
138. Rho Puppis                Turais            08 08 -24.3  243.2  +4.5  F6III         2.83   1.41   51.99 0.66    63
139. Beta Trianguli Australis                    15 55 -63.4  321.9  -7.5  F2IV          2.83   2.38   81.24 0.62    40
140. Zeta Persei                                 03 54 +31.9  162.3 -16.7  B1II+B8IV+A2V 2.84  -4.55    3.32 0.75   980
141. Beta Arae                                   17 25 -55.5  335.4 -11.0  K3Ib-II       2.84  -3.49    5.41 0.76   600
142. Alpha Arae                Choo              17 32 -49.9  340.8  -8.9  B2V           2.84  -1.51   13.46 0.95   240
143. Eta Tauri                 Alcyone           03 47 +24.1  166.6 -23.5  B7III         2.85  -2.41    8.87 0.99   370
144. Epsilon Virginis          Vindemiatrix      13 02 +11.0  312.3 +73.7  G8III         2.85   0.37   31.90 0.87   102
145. Delta Capricorni          Deneb Algedi      21 47 -16.1   37.6 -46.0  A5V           2.85e  2.49   84.58 0.88    39
146. Alpha Hydri               Head of Hydrus    01 59 -61.6  289.4 -53.7  F0III         2.86   1.16   45.74 0.55    71
147. Delta Cygni                                 19 45 +45.1   78.7 +10.2  B9.5III+F1V   2.86  -0.74   19.07 0.45   170
148. Mu Geminorum              Tejat             06 23 +22.5  189.8  +4.2  M3III         2.87v -1.39v  14.07 0.93   230
149. Gamma Trianguli Australis                   15 19 -68.7  316.5  -8.4  A1III         2.87  -0.87   17.85 0.52   180
150. Alpha Tucanae                               22 19 -60.3  330.1 -48.0  K3III         2.87  -1.05   16.42 0.59   200
151. Theta Eridani             Acamar            02 58 -40.3  247.9 -60.7  A4III+A1V     2.88  -0.59   20.22 0.54   160
152. Pi Sagittarii             Albaldah          19 10 -21.0   15.9 -13.3  F2II          2.88  -2.77    7.41 0.69   440
153. Beta Canis Minoris        Gomeisa           07 27 +08.3  209.5 +11.7  B8V           2.89  -0.70   19.16 0.85   170
154. Pi Scorpii                                  15 59 -26.1  347.2 +20.2  B1V+B2V       2.89  -2.85    7.10 0.84   460
155. Epsilon Persei                              03 58 +40.0  157.4 -10.1  B0.5V+A2V     2.90  -3.19    6.06 0.82   540
156. Sigma Scorpii             Alniyat           16 21 -25.6  351.3 +17.0  B1III         2.90v -3.86v   4.44 0.81   730
157. Beta Cygni                Albireo           19 31 +28.0   62.1  +4.6  K3II+B8V+B9V  2.90  -2.31    8.46 0.58   390
158. Beta Aquarii              Sadalsuud         21 32 -05.6   48.0 -37.9  G0Ib          2.90  -3.47    5.33 0.94   610
159. Gamma Persei                                03 05 +53.5  142.1  -4.3  G8III+A2V     2.91  -1.57   12.72 0.71   260
160. Upsilon Carinae                             09 47 -65.1  285.0  -8.8  A7Ib+B7III    2.92  -5.56    2.01 0.40  1600
161. Eta Pegasi                Matar             22 43 +30.2   92.5 -25.0  G2II-III+F0V  2.93  -1.16   15.18 0.79   215
162. Tau Puppis                                  06 50 -50.6  260.2 -20.9  K1III         2.94  -0.80   17.85 0.49   185
163. Delta Corvi               Algorel           12 30 -16.5  295.5 +46.0  B9.5V         2.94   0.79   37.11 0.69    88
164. Alpha Aquarii             Sadalmelik        22 06 -00.3   59.9 -42.1  G2Ib          2.95  -3.88    4.30 0.83   760
165. Gamma Eridani             Zaurak            03 58 -13.5  205.2 -44.5  M1III         2.97  -1.19   14.75 0.75   220
166. Zeta Tauri                Alheka            05 38 +21.1  185.7  -5.6  B4III         2.97  -2.56    7.82 1.02   420
167. Epsilon Leonis            Ras Elased Austr. 09 46 +23.8  206.8 +48.2  G1II          2.97  -1.46   13.01 0.88   250
168. Gamma² Sagittarii         Alnasl            18 06 -30.4    0.9  -4.5  K0III         2.98   0.63   33.94 0.87    96
169. Gamma Hydrae                                13 19 -23.2  311.1 +39.3  G8III         2.99  -0.05   24.69 0.70   132
170. Iota¹ Scorpii                               17 48 -40.1  350.6  -6.1  F2Ia          2.99  -5.71    1.82 0.73  1800
171. Zeta Aquilae              Deneb el Okab     19 05 +13.9   46.9  +3.3  A0V           2.99   0.96   39.18 0.72    83
172. Beta Trianguli                              02 10 +35.0  140.6 -25.2  A5III         3.00   0.09   26.24 0.77   124
173. Psi Ursae Majoris                           11 10 +44.5  165.8 +63.2  K1III         3.00  -0.27   22.21 0.68   147
174. Gamma Ursae Minoris       Pherkad Major     15 21 +71.8  108.5 +40.8  A3II          3.00  -2.84    6.79 0.46   480
175. Mu¹ Scorpii                                 16 52 -38.0  346.1  +3.9  B1.5V+B6.5V   3.00  -4.01    3.97 1.20   820
176. Gamma Gruis                                 21 54 -37.4    6.1 -51.5  B8III         3.00  -0.97   16.07 0.77   205
177. Delta Persei                                03 43 +47.8  150.3  -5.8  B5III         3.01  -3.04    6.18 0.85   530
178. Zeta Canis Majoris        Phurad            06 20 -30.1  237.5 -19.4  B2.5V         3.02  -2.05    9.70 0.58   340
179. Omicron² Canis Majoris                      07 03 -23.8  235.6  -8.2  B3Ia          3.02  -6.46    1.27 0.56  2600
180. Epsilon Corvi             Minkar            12 10 -22.6  290.6 +39.3  K2II          3.02  -1.82   10.75 0.71   300
181. Epsilon Aurigae           Almaaz            05 02 +43.8  162.8  +1.2  F0Ia          3.03e -5.95    1.60 1.16  2000
182. Beta Muscae                                 12 46 -68.1  302.5  -5.2  B2V+B3V       3.04  -1.86   10.48 0.65   310
183. Gamma Boötis              Seginus           14 32 +38.3   67.3 +66.2  A7III         3.04   0.96   38.29 0.73    85
184. Beta Capricorni           Dabih             20 21 -14.8   29.2 -26.4  G5II+A0V      3.05  -2.07    9.48 0.95   340
185. Epsilon Geminorum         Mebsuta           06 44 +25.1  189.5  +9.6  G8Ib          3.06  -4.15    3.61 0.91   900
186. Mu Ursae Majoris          Tania Australis   10 22 +41.5  177.9 +56.4  M0III         3.06e -1.35   13.11 0.75   250
187. Delta Draconis            Tais              19 13 +67.7   98.7 +23.0  G9III         3.07   0.63   32.54 0.46   100
188. Eta Sagittarii                              18 18 -36.8  356.4  -9.7  M3.5III       3.10  -0.20   21.87 0.92   149
189. Zeta Hydrae                                 08 55 +05.9  222.3 +30.2  G9III         3.11  -0.21   21.64 0.99   150
190. Nu Hydrae                                   10 50 -16.2  265.1 +37.6  K2III         3.11  -0.03   23.54 0.81   139
191. Lambda Centauri                             11 36 -63.0  294.5  -1.4  B9III         3.11  -2.39    7.96 0.52   410
192. Alpha Indi                Persian           20 38 -47.3  352.6 -37.2  K0III         3.11   0.65   32.21 0.75   101
193. Beta Columbae             Wazn              05 51 -35.8  241.3 -27.1  K2III         3.12   1.02   37.94 0.57    86
194. Iota Ursae Majoris        Talita            08 59 +48.0  171.5 +40.8  A7IV          3.12   2.29   68.32 0.79    48
195. Zeta Arae                                   16 59 -56.0  332.8  -8.2  K3II          3.12  -3.11    5.68 0.91   570
196. Delta Herculis            Sarin             17 15 +24.8   46.8 +31.4  A3IV          3.12   1.21   41.55 0.65    78
197. Kappa Centauri            Ke Kwan           14 59 -42.1  326.9 +14.8  B2IV          3.13  -2.96    6.05 0.73   540
198. Alpha Lyncis                                09 21 +34.4  190.2 +44.7  K7III         3.14  -1.02   14.69 0.81   220
199. N Velorum                                   09 31 -57.0  278.2  -4.1  K5III         3.16  -1.15   13.72 0.51   240
200. Pi Herculis                                 17 15 +36.8   60.7 +34.3  K3II          3.16  -2.10    8.89 0.52   370
201. Nu Puppis                                   06 38 -43.2  251.9 -20.5  B8III         3.17  -2.39    7.71 0.52   420
202. Theta Ursae Majoris       Al Haud           09 33 +51.7  165.5 +45.7  F6IV          3.17   2.52   74.15 0.74    44
203. Zeta Draconis             Aldhibah          17 09 +65.7   96.0 +35.0  B6III         3.17  -1.92    9.60 0.47   340
204. Phi Sagittarii                              18 46 -27.0    8.0 -10.8  B8III         3.17  -1.08   14.14 0.88   230
205. Eta Aurigae               Hoedus II         05 07 +41.2  165.4  +0.3  B3V           3.18  -0.96   14.87 0.74   220
206. Alpha Circini                               14 43 -65.0  314.3  -4.6  F0V+K5V       3.18   2.11   60.97 0.58    53
207. Pi³ Orionis               Tabit             04 50 +07.0  191.5 -23.1  F6V           3.19   3.67  124.60 0.95    26
208. Epsilon Leporis                             05 05 -22.4  223.3 -32.7  K5III         3.19  -1.02   14.39 0.68   225
209. Kappa Ophiuchi                              16 58 +09.4   28.4 +29.5  K2III         3.19   1.09   37.99 0.75    86
210. G Scorpii                                   17 50 -37.0  353.5  -4.9  K2III         3.19   0.24   25.71 0.87   127
211. Zeta Cygni                                  21 13 +30.2   76.8 -12.5  G8III         3.21  -0.12   21.62 0.63   151
212. Gamma Cephei              Errai             23 39 +77.6  119.0 +15.3  K1IV          3.21   2.51   72.50 0.52    45
213. Delta Lupi                                  15 21 -40.6  331.3 +13.8  B1.5IV        3.22  -2.75    6.39 0.86   510
214. Epsilon Ophiuchi          Yed Posterior     16 18 -04.7    8.6 +30.8  G9III         3.23   0.64   30.34 0.79   108
215. Eta Serpentis             Alava             18 21 -02.9   26.9  +5.4  K0III-IV      3.23   1.84   52.81 0.75    62
216. Beta Cephei               Alphirk           21 29 +70.6  107.5 +14.0  B2III         3.23v -3.08v   5.48 0.47   600
217. Alpha Pictoris                              06 48 -61.9  271.9 -24.1  A7III         3.24   0.83   32.96 2.14    99
218. Theta Aquilae                               20 11 -00.8   41.6 -18.1  B9.5III       3.24  -1.48   11.36 0.92   285
219. Sigma Puppis                                07 29 -43.3  255.7 -11.9  K5III+G5V     3.25  -0.51   17.74 0.47   185
220. Pi Hydrae                                   14 06 -26.7  323.0 +33.3  K2III         3.25   0.79   32.17 0.77   101
221. Sigma Librae              Brachium          15 04 -25.3  337.2 +28.6  M3III         3.25  -1.51   11.17 0.98   290
222. Gamma Lyrae               Sulaphat          18 59 +32.7   63.3 +12.8  B9II          3.25  -3.20    5.14 0.51   630
223. Gamma Hydri                                 03 47 -74.2  289.1 -37.8  M2III         3.26  -0.83   15.23 0.53   215
224. Delta Andromedae                            00 39 +30.9  119.9 -31.9  K3III         3.27   0.81   32.19 0.68   101
225. Theta Ophiuchi                              17 22 -25.0    0.5  +6.6  B2IV          3.27  -2.92    5.79 0.69   560
226. Delta Aquarii             Skat              22 55 -15.8   49.6 -60.7  A3III         3.27  -0.18   20.44 2.26   160
227. Mu Leporis                                  05 13 -16.2  217.3 -28.9  B9IV          3.29v -0.47v  17.69 0.71   185
228. Omega Carinae                               10 14 -70.0  290.2 -11.2  B8III         3.29  -1.99    8.81 0.48   370
229. Iota Draconis             Edasich           15 25 +59.0   94.0 +48.6  K2III         3.29   0.81   31.92 0.51   102
230. Alpha Doradus                               04 34 -55.0  263.8 -41.4  A0IV+B9IV     3.30  -0.36   18.56 0.46   175
231. p Carinae                                   10 32 -61.7  287.2  -3.2  B4V           3.30  -2.62    6.56 0.49   500
232. Mu Centauri                                 13 50 -42.5  314.2 +19.1  B2IV-V        3.30v -2.74v   6.19 0.71   530
233. Eta Geminorum             Propus            06 15 +22.5  188.9  +2.5  M3III         3.31v -1.84v   9.34 1.99   350
234. Alpha Herculis            Rasalgethi        17 15 +14.4   35.5 +27.8  M5III+G5III   3.31v -2.04v   8.53 2.80   380
235. Gamma Arae                                  17 25 -56.4  334.6 -11.5  B1III         3.31  -4.40    2.87 0.75  1100
236. Beta Phoenicis                              01 06 -46.7  295.5 -70.2  G8III         3.32  -0.55   16.9  9.9    190
237. Rho Persei                Gorgonea Tertia   03 05 +38.8  149.6 -17.0  M3III         3.32v -1.67v  10.03 0.83   325
238. Delta Ursae Majoris       Megrez            12 15 +57.0  132.6 +59.4  A3V           3.32   1.33   40.05 0.60    81
239. Eta Scorpii                                 17 12 -43.2  344.4  -2.3  F3III-IV      3.32   1.61   45.56 0.79    72
240. Nu Ophiuchi                                 17 59 -09.8   18.2  +7.0  K0III         3.32  -0.03   21.35 0.79   155
241. Tau Sagittarii                              19 07 -27.7    9.3 -15.4  K1III         3.32   0.48   27.09 1.48   120
242. Alpha Reticuli                              04 14 -62.5  274.3 -41.7  G8III         3.33  -0.17   19.98 0.45   165
243. Theta Leonis              Chort             11 14 +15.4  235.4 +64.6  A2III         3.33  -0.35   18.36 0.77   180
244. Xi Puppis                 Asmidiske         07 49 -24.9  241.5  +0.6  G5Ib          3.34  -4.74    2.42 0.74  1300
245. Epsilon Cassiopeiae       Segin             01 54 +63.7  129.9  +1.7  B2III         3.35  -2.31    7.38 0.57   440
246. Eta Orionis               Algjebbah         05 24 -02.4  204.9 -20.4  B1V+B2V       3.35  -3.86    3.62 0.88   900
247. Xi Geminorum              Alzirr            06 45 +12.9  200.7  +4.5  F5IV          3.35   2.13   57.02 0.83    57
248. Omicron Ursae Majoris     Muscida           08 30 +60.7  156.0 +35.4  G5III         3.35v -0.40v  17.76 0.65   185
249. Delta Aquilae                               19 25 +03.1   39.6  -6.1  F2IV          3.36   2.43   65.05 0.81    50
250. Epsilon Lupi                                15 23 -44.7  329.2 +10.3  B2IV-V        3.37  -2.58    6.47 0.61   500
251. Zeta Virginis             Heze              13 35 -00.6  325.3 +60.4  A3V           3.38   1.62   44.55 0.90    73
252. Epsilon Hydrae                              08 47 +06.4  220.7 +28.5  G5III+A8V+F7V 3.38   0.29   24.13 1.29   135
253. Lambda Orionis            Meissa            05 35 +09.9  195.1 -12.0  O8III         3.39  -4.16    3.09 0.78  1100
254. q Carinae                                   10 17 -61.3  285.5  -3.8  K3II          3.39  -3.38    4.43 0.49   740
255. Delta Virginis            Auva              12 56 +03.4  305.5 +66.3  M3III         3.39  -0.57   16.11 0.88   200
256. Zeta Cephei                                 22 11 +58.2  103.1  +1.7  K1II          3.39  -3.35    4.49 0.50   730
257. Theta² Tauri                                04 29 +15.9  180.4 -22.0  A7III         3.40   0.10   21.89 0.83   150
258. Gamma Phoenicis                             01 28 -43.3  280.5 -72.2  K5III         3.41  -0.87   13.94 0.64   235
259. Lambda Tauri                                04 01 +12.5  178.4 -29.4  B3V+A4IV      3.41e -1.87    8.81 0.99   370
260. Nu Centauri                                 13 50 -41.7  314.4 +19.9  B2IV          3.41  -2.41    6.87 0.77   475
261. Zeta Lupi                                   15 12 -52.1  323.8  +5.0  G8III         3.41   0.65   28.06 0.71   116
262. Eta Cephei                                  20 45 +61.8  097.9 +11.6  K0IV          3.41   2.63   69.73 0.49    47
263. Zeta Pegasi               Homam             22 41 +10.8  078.9 -40.7  B8.5V         3.41  -0.62   15.64 0.75   210
264. Alpha Trianguli           Mothallah         01 53 +29.6  138.6 -31.4  F6IV          3.42   1.95   50.87 0.82    64
265. Eta Lupi                                    16 00 -38.4  338.8 +11.0  B2.5IV+A5V    3.42  -2.48    6.61 0.78   495
266. Mu Herculis                                 17 46 +27.7  052.4 +25.6  G5IV          3.42   3.80  119.05 0.62    27
267. Beta Pavonis                                20 45 -66.2  329.0 -36.0  A7III         3.42   0.29   23.71 0.63   140
268. a Carinae                                   09 11 -58.9  277.7  -7.4  B2IV          3.43  -2.11    7.79 0.47   420
269. Zeta Leonis               Adhafera          10 17 +23.4  210.2 +55.0  F0II-III      3.43  -1.08   12.56 0.78   260
270. Lambda Aquilae            Althalimain       19 06 -04.9  030.3  -5.5  B9V           3.43   0.51   26.05 0.81   125
271. Lambda Ursae Majoris      Tania Borealis    10 17 +42.9  175.9 +55.1  A2IV          3.45   0.38   24.27 0.79   135
272. Beta Lyrae                Sheliak           18 50 +33.4   63.2 +14.8  B8II          3.45e -3.71    3.70 0.52   880
273. Eta Cassiopeiae           Achird            00 49 +57.8  122.6  -5.1  G0V+K7V       3.46   4.59  167.99 0.62    19
274. Eta Ceti                  Dheneb            01 09 -10.2  137.2 -72.6  K2III         3.46   0.67   27.73 0.71   118
275. Chi Carinae                                 07 57 -53.0  266.7 -12.3  B3IV          3.46  -1.91    8.43 0.52   390
276. Delta Bootis                                15 16 +33.3  053.1 +58.4  G8III         3.46   0.69   27.94 0.61   117
277. Gamma Ceti                Kaffaljidhma      02 43 +03.2  168.9 -49.4  A3V+F3V+K5V   3.47   1.47   39.78 0.95    82
278. Eta Leonis                                  10 07 +16.8  219.5 +50.8  A0Ib          3.48  -5.60    1.53 0.77  2100
279. Eta Herculis                                16 43 +38.9  062.3 +40.9  G8III         3.48   0.80   29.11 0.52   112
280. Tau Ceti                                    01 44 -15.9  173.1 -73.4  G8V           3.49   5.68  274.17 0.80    12
281. Sigma Canis Majoris                         07 02 -27.9  239.2 -10.3  K7Ib          3.49  -4.37    2.68 0.59  1200
282. Nu Ursae Majoris          Alula Borealis    11 18 +33.1  190.7 +69.1  K3II          3.49  -2.07    7.74 0.79   420
283. Beta Bootis               Nekkar            15 02 +40.4  067.6 +60.0  G8III         3.49  -0.64   14.91 0.57   220
284. Alpha Telescopii                            18 27 -46.0  348.7 -15.2  B3IV          3.49  -0.93   13.08 0.71   250
285. Epsilon Gruis                               22 49 -51.3  338.3 -56.5  A3V           3.49   0.49   25.16 0.68   130
286. Kappa Canis Majoris                         06 50 -32.5  242.4 -14.5  B1.5IV        3.50  -3.42    4.13 0.50   790
287. Delta Geminorum           Wasat             07 20 +22.0  196.0 +15.9  F2IV+K3V      3.50   2.22   55.45 0.85    59
288. Iota Cephei                                 22 50 +66.2  111.1  +6.2  K0III         3.50   0.76   28.27 0.52   115
289. Gamma Sagittae                              19 59 +19.5   58.0  -5.2  K5III         3.51  -1.11   11.90 0.71   270
290. Mu Pegasi                 Sadalbari         22 50 +24.6   90.7 -30.6  G8III         3.51   0.74   27.95 0.77   117
291. Delta Eridani             Rana              03 43 -09.8  198.1 -46.0  K0IV          3.52   3.74  110.58 0.88    29
292. Omicron Leonis            Subra             09 41 +09.9  224.6 +42.1  A9V+F6V       3.52   0.43   24.12 0.97   135
293. Phi Velorum               Tseen Ke          09 57 -54.6  279.4  +0.1  B5Ib          3.52  -5.34    1.69 0.50  1900
294. Xi² Sagittarii                              18 58 -21.1   14.6 -10.8  K0II          3.52  -1.77    8.76 0.99   370
295. Theta Pegasi              Baham             22 10 +06.2   67.4 -38.7  A2V           3.52   1.16   33.77 0.85    97
296. Epsilon Tauri             Ain               04 29 +19.2  177.6 -19.9  K0III         3.53   0.15   21.04 0.82   155
297. Beta Cancri               Tarf              08 17 +09.2  214.3 +23.1  K4III         3.53  -1.24   11.23 0.97   290
298. Xi Hydrae                                   11 33 -31.9  284.1 +28.1  G8III         3.54   0.55   25.23 0.83   130
299. Mu Serpentis                                15 50 -03.4    4.6 +37.3  A0V           3.54   0.14   20.94 0.82   155
300. Xi Serpentis                                17 38 -15.4   10.6  +8.7  F0III         3.54   0.99   30.93 1.03   105

Column 1: Approximate rank of the star in order of apparent magnitude.
Column 2: Bayer name for the star.
Column 3: Proper name of the star.  Usually a weird arabic name. :)
Column 4: Right Ascension in hours and minutes for epoch 2000.
Column 5: Declination in degrees for epoch 2000.
Column 6: Galactic longitude of the star.
Column 7: Galactic latitude of the star.
Column 8: Spectral classification of the main stars in the system.
Column 9: Apparent visual magnitude of the star.  A letter 'v' means the magnitude varies by
   more than 0.1.  A letter 'e' means that the star is an eclipsing binary.
Column 10: Absolute magnitude of the star.  A letter 'v' means the magnitude varies by more than 0.1.
Column 11: The Hipparcos parallax of the star (milli-arcseconds).
Column 12: The error in the parallax (milli-arcseconds).
Column 13: The distance in light years (=3.2616/parallax).

References:
ESA, (1997), The Hipparcos Catalogue.
Hoffleit D, Warren Jr W, (1991), Harvard Revised Bright Star Catalogue, 5th Edition.

update Stars set common_name = "$\\delta$ Ursae minoris" where bs_hr_number = 6789;

select * from Stars where right_ascension_hours = 0 and right_ascension_minutes = 0 and right_ascension_seconds = 0 
and declination_degrees = 0 and declination_minutes = 0 and declination_seconds = 0\G

select common_name, * from Stars where right_ascension_hours = 0 and right_ascension_minutes = 0 and right_ascension_seconds = 0 


show columns from Stars;

| apparent_magnitude                 | float         | NO   |     | 1000    |       |


select common_name, flamsteed_designation_number, bayer_designation_greek_letter, approx_rank_apparent_magnitude,
apparent_magnitude from Stars where approx_rank_apparent_magnitude > 50 and approx_rank_apparent_magnitude < 100
order by approx_rank_apparent_magnitude;

update Stars set absolute_magnitude = -0.30, apparent_magnitude = 2.04 where approx_rank_apparent_magnitude = 51;

update Stars set absolute_magnitude = -2.14, apparent_magnitude = 2.05 where approx_rank_apparent_magnitude = 52;

update Stars set absolute_magnitude =  0.70, apparent_magnitude = 2.06 where approx_rank_apparent_magnitude = 53;

update Stars set absolute_magnitude = -0.30, apparent_magnitude = 2.07 where approx_rank_apparent_magnitude = 54;

update Stars set absolute_magnitude = -1.86, apparent_magnitude = 2.07 where approx_rank_apparent_magnitude = 55;

update Stars set absolute_magnitude = -4.65, apparent_magnitude = 2.07 where approx_rank_apparent_magnitude = 56;

update Stars set absolute_magnitude = -0.87, apparent_magnitude = 2.07 where approx_rank_apparent_magnitude = 57;


update Stars set absolute_magnitude = 1.52, apparent_magnitude = 2.07 where approx_rank_apparent_magnitude = 58;
update Stars set apparent_magnitude_varies = 1 where approx_rank_apparent_magnitude = 58;

update Stars set absolute_magnitude =  1.30, apparent_magnitude = 2.08 where approx_rank_apparent_magnitude = 59;

update Stars set absolute_magnitude = 0.18, apparent_magnitude = 2.09 where approx_rank_apparent_magnitude = 60;
update Stars set is_eclipsing_binary = 1 where approx_rank_apparent_magnitude = 60;


update Stars set apparent_magnitude = , absolute_magnitude =  where approx_rank_apparent_magnitude = ;

update Stars set apparent_magnitude = 2.10, absolute_magnitude = -3.08 where approx_rank_apparent_magnitude = 61;             


update Stars set apparent_magnitude = 2.14, absolute_magnitude = 1.92  where approx_rank_apparent_magnitude = 62;



update Stars set apparent_magnitude = 2.15, absolute_magnitude = -4.22 where approx_rank_apparent_magnitude = 63;


update Stars set apparent_magnitude = 2.20, absolute_magnitude = -0.81 where approx_rank_apparent_magnitude = 64;  

update Stars set apparent_magnitude = 2.21, absolute_magnitude = -5.95 where approx_rank_apparent_magnitude = 65;  

update Stars set apparent_magnitude = 2.21, absolute_magnitude = -4.42 where approx_rank_apparent_magnitude = 66; 


update Stars set apparent_magnitude = 2.22, absolute_magnitude = 0.42 where approx_rank_apparent_magnitude = 67;

update Stars set apparent_magnitude = 2.23, absolute_magnitude = -3.99 where approx_rank_apparent_magnitude = 68;


update Stars set apparent_magnitude_varies = 1 where approx_rank_apparent_magnitude = 63;
update Stars set apparent_magnitude_varies = 1 where approx_rank_apparent_magnitude = 66;
update Stars set is_eclipsing_binary = 1-1.99-1.99 where approx_rank_apparent_magnitude = 67;

(set-register ?c "update Stars set apparent_magnitude = , absolute_magnitude =  where approx_rank_apparent_magnitude = ;")

/* !! START HERE:  LDF 2021.07.23.  */ 

update Stars set apparent_magnitude = 2.24, absolute_magnitude = -1.99 where approx_rank_apparent_magnitude = 71;

update Stars set apparent_magnitude = 2.24, absolute_magnitude = -1.04 where approx_rank_apparent_magnitude = 72;

update Stars set apparent_magnitude = 2.25, absolute_magnitude = -4.99 where approx_rank_apparent_magnitude = 73;

update Stars set apparent_magnitude = 2.28, absolute_magnitude = 1.17 where approx_rank_apparent_magnitude = 74;

update Stars set apparent_magnitude = 2.29, absolute_magnitude = -3.02 where approx_rank_apparent_magnitude = 75;

update Stars set apparent_magnitude = 2.29, absolute_magnitude = -3.16 where approx_rank_apparent_magnitude = 76;

update Stars set apparent_magnitude = 2.29 , absolute_magnitude = 0.78 where approx_rank_apparent_magnitude = 77;

update Stars set apparent_magnitude = 2.30, absolute_magnitude = -3.83 where approx_rank_apparent_magnitude = 78;

update Stars set apparent_magnitude = 2.33, absolute_magnitude = -2.55 where approx_rank_apparent_magnitude = 79;

update Stars set is_eclipsing_binary = 1 where approx_rank_apparent_magnitude = 73;
update Stars set apparent_magnitude_varies = 1 where approx_rank_apparent_magnitude = 79;

update Stars set common_name = "$\\epsilon$ Centauri" where approx_rank_apparent_magnitude = 75;

update Stars set common_name = "$\\eta$ Centauri" where approx_rank_apparent_magnitude = 79;

show columns from Stars;

select approx_rank_apparent_magnitude, common_name, apparent_magnitude, absolute_magnitude from Stars
where approx_rank_apparent_magnitude > 90 and approx_rank_apparent_magnitude < 101
order by approx_rank_apparent_magnitude;

update Stars set common_name = "$\\zetaapparent_magnitude = 2.35 , absolute_magnitude = -1.69 where approx_rank_apparent_magnitude = 81;

select * from Stars where approx_rank_apparent_magnitude = 95\G

update Stars set apparent_magnitude = 2.35 , absolute_magnitude = -1.69 where approx_rank_apparent_magnitude = 81;

update Stars set apparent_magnitude = 2.38 , absolute_magnitude = -4.19 where approx_rank_apparent_magnitude = 82;

update Stars set apparent_magnitude = 2.39 , absolute_magnitude = -3.38 where approx_rank_apparent_magnitude = 83;

update Stars set apparent_magnitude = 2.40  , absolute_magnitude = 0.52 where approx_rank_apparent_magnitude = 84;

update Stars set apparent_magnitude = 2.41  , absolute_magnitude = 0.36 where approx_rank_apparent_magnitude = 85;

update Stars set apparent_magnitude = 2.43  , absolute_magnitude = 0.37 where approx_rank_apparent_magnitude = 86;

update Stars set apparent_magnitude = 2.44, absolute_magnitude = -1.49 where approx_rank_apparent_magnitude = 87;

update Stars set apparent_magnitude = 2.45 , absolute_magnitude = -7.51 where approx_rank_apparent_magnitude = 88;

update Stars set apparent_magnitude = 2.45  , absolute_magnitude = 1.58 where approx_rank_apparent_magnitude = 89;

update Stars set apparent_magnitude = 2.47 , absolute_magnitude = -3.62 where approx_rank_apparent_magnitude = 90;

update Stars set apparent_magnitude_varies = 1 where approx_rank_apparent_magnitude = 87;

update Stars set common_name = "$\\zeta$ Centauri" where approx_rank_apparent_magnitude = 95;

update Stars set apparent_magnitude = 2.48  , absolute_magnitude = 0.76 where approx_rank_apparent_magnitude = 91;

update Stars set apparent_magnitude = 2.49 , absolute_magnitude = -0.67 where approx_rank_apparent_magnitude = 92;

update Stars set apparent_magnitude = 2.54 , absolute_magnitude = -1.61 where approx_rank_apparent_magnitude = 93;

update Stars set apparent_magnitude = 2.54 , absolute_magnitude = -3.20 where approx_rank_apparent_magnitude = 94;

update Stars set apparent_magnitude = 2.55 , absolute_magnitude = -2.81 where approx_rank_apparent_magnitude = 95;

update Stars set apparent_magnitude = 2.56  , absolute_magnitude = 1.32 where approx_rank_apparent_magnitude = 96;

update Stars set apparent_magnitude = 2.56 , absolute_magnitude = -3.50 where approx_rank_apparent_magnitude = 97;

update Stars set apparent_magnitude = 2.58 , absolute_magnitude = -5.40 where approx_rank_apparent_magnitude = 98;

update Stars set apparent_magnitude = 2.58, absolute_magnitude = -2.84 where approx_rank_apparent_magnitude = 99;

update Stars set apparent_magnitude = 2.58 , absolute_magnitude = -0.94 where approx_rank_apparent_magnitude = 100;

update Stars set apparent_magnitude_varies = 1 where approx_rank_apparent_magnitude = 99;

select approx_rank_apparent_magnitude, common_name, apparent_magnitude, absolute_magnitude
from Stars where approx_rank_apparent_magnitude > 100 and approx_rank_apparent_magnitude < 111
order by  approx_rank_apparent_magnitude\G

select * from Stars where common_name = "Zubenelgenubi"\G

update Stars set approx_rank_apparent_magnitude = 105 where common_name = "Zubenelgenubi"\G

update Stars set common_name = "$\\theta$ Aurigae" where approx_rank_apparent_magnitude = 107;

show columns from Stars;

update Stars set apparent_magnitude = , absolute_magnitude =  where approx_rank_apparent_magnitude = ;


update Stars set apparent_magnitude = 2.60, absolute_magnitude =  0.42 where approx_rank_apparent_magnitude = 101;    
update Stars set apparent_magnitude = 2.61, absolute_magnitude = -0.84 where approx_rank_apparent_magnitude = 102;    
update Stars set apparent_magnitude = 2.63, absolute_magnitude =  0.87 where approx_rank_apparent_magnitude = 103;    
update Stars set apparent_magnitude = 2.64, absolute_magnitude =  1.33 where approx_rank_apparent_magnitude = 104;    
update Stars set apparent_magnitude = 2.64, absolute_magnitude =  0.77 where approx_rank_apparent_magnitude = 105;    
update Stars set apparent_magnitude = 2.65, absolute_magnitude = -1.93 where approx_rank_apparent_magnitude = 106;    
update Stars set apparent_magnitude = 2.65, absolute_magnitude = -0.98 where approx_rank_apparent_magnitude = 107;    
update Stars set apparent_magnitude = 2.65, absolute_magnitude = -0.51 where approx_rank_apparent_magnitude = 108;    
update Stars set apparent_magnitude = 2.66, absolute_magnitude =  0.24 where approx_rank_apparent_magnitude = 109;    
update Stars set apparent_magnitude = 2.68, absolute_magnitude =  2.41 where approx_rank_apparent_magnitude = 110;    
                                                                 

select approx_rank_apparent_magnitude, common_name, apparent_magnitude, absolute_magnitude
from Stars where approx_rank_apparent_magnitude > 110 and approx_rank_apparent_magnitude < 121
order by  approx_rank_apparent_magnitude\G

update Stars set common_name = "$\\mu$ Velorum" where approx_rank_apparent_magnitude = 113;

update Stars set common_name = "$\\alpha$ Muscae" where approx_rank_apparent_magnitude = 114;
update Stars set common_name = "$\\pi$ Puppis" where approx_rank_apparent_magnitude = 116;



update Stars set apparent_magnitude = 2.68, absolute_magnitude =  -3.35 where approx_rank_apparent_magnitude = 111;
update Stars set apparent_magnitude = 2.69, absolute_magnitude =  -3.29 where approx_rank_apparent_magnitude = 112;
update Stars set apparent_magnitude = 2.69, absolute_magnitude =  -0.06 where approx_rank_apparent_magnitude = 113;
update Stars set apparent_magnitude = 2.69, absolute_magnitude =  -2.17 where approx_rank_apparent_magnitude = 114;
update Stars set apparent_magnitude = 2.70, absolute_magnitude =  -3.31 where approx_rank_apparent_magnitude = 115;
update Stars set apparent_magnitude = 2.71, absolute_magnitude =  -4.92 where approx_rank_apparent_magnitude = 116;
update Stars set apparent_magnitude = 2.72, absolute_magnitude =  -2.14 where approx_rank_apparent_magnitude = 117;
update Stars set apparent_magnitude = 2.72, absolute_magnitude =  -3.03 where approx_rank_apparent_magnitude = 118;
update Stars set apparent_magnitude = 2.73, absolute_magnitude =  -0.86 where approx_rank_apparent_magnitude = 119;
update Stars set apparent_magnitude = 2.73, absolute_magnitude =   0.58 where approx_rank_apparent_magnitude = 120;


select approx_rank_apparent_magnitude, common_name, apparent_magnitude, absolute_magnitude
from Stars where approx_rank_apparent_magnitude > 120 and approx_rank_apparent_magnitude < 131
order by  approx_rank_apparent_magnitude\G

122 Porrima           12 42  -1.5  298.1 +61.3  F0V+F0V       2.74   2.38   84.53 1.18    39

https://en.wikipedia.org/wiki/Gamma_Virginis
Gamma Virginis (γ Virginis, abbreviated Gamma Vir, γ Vir), officially named Porrima /ˈpɒrɪmə/,[8][9] is a binary star 
Virginis (γ Virginis, abbreviated Gamma Vir, γ Vir), officially named Porrima /ˈpɒrɪmə/,[8][9] is a binary star 

replace into Stars (
common_name,
approx_rank_apparent_magnitude,
apparent_magnitude,
absolute_magnitude,
bayer_designation_greek_letter,
constellation_name_genitive,
constellation_abbreviation,
constellation_full_name,
constellation_number,
-- bs_hr_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds,
is_binary
)
values (
"Porrima",
122,
2.74,
2.38,
"gamma",
"Virginis",
"Vir",
"Virgo",
2,
12, -- Right ascension
41,
39.64344,
-1, -- Declination
26,
57.7421,
1
);

select * from Constellations where name = "Virgo"\G

Right ascension         12h 41m 39.64344s[1]
Declination     -01° 26′ 57.7421″[1]
Apparent magnitude (V)  2.74 (3.650/3.560[2])

http://simbad.u-strasbg.fr/simbad/sim-id?Ident=gam+Vir

update Stars set apparent_magnitude = 2.74, absolute_magnitude = -2.91 where approx_rank_apparent_magnitude = 121;

update Stars set apparent_magnitude = 2.75, absolute_magnitude = -5.30 where approx_rank_apparent_magnitude = 123;

update Stars set apparent_magnitude = 2.75 , absolute_magnitude = 1.48 where approx_rank_apparent_magnitude = 124;

update Stars set apparent_magnitude = 2.76 , absolute_magnitude = 0.76 where approx_rank_apparent_magnitude = 125;

update Stars set apparent_magnitude = 2.78 , absolute_magnitude = 0.60 where approx_rank_apparent_magnitude = 126;

update Stars set apparent_magnitude = 2.78, absolute_magnitude = -0.50 where approx_rank_apparent_magnitude = 127;

update Stars set apparent_magnitude = 2.79, absolute_magnitude = -2.45 where approx_rank_apparent_magnitude = 128;

update Stars set apparent_magnitude = 2.79, absolute_magnitude = -2.43 where approx_rank_apparent_magnitude = 129;


   
select * from Stars where bs_hr_number = 4915\G

130 cor_caroli_two

show columns from Stars;

update Stars set is_binary = 0, is_binary_component = 1, absolute_magnitude = 0.16, apparent_magnitude = 2.98,
apparent_magnitude_varies = 1 where bs_hr_number = 4915;

121. Theta Carinae                               10 43 -64.4  289.6  -4.9  B0V           2.74  -2.91    7.43 0.50   440

update Stars set common_name = "$\\theta$ Carinae" where approx_rank_apparent_magnitude = 121;

122. Gamma Virginis            Porrima           12 42  -1.5  298.1 +61.3  F0V+F0V       2.74   2.38   84.53 1.18    39
123. Iota Orionis              Hatysa            05 35  -5.9  209.5 -19.7  O9III         2.75  -5.30    2.46 0.77  1300
124. Iota Centauri                               13 21 -36.7  309.5 +25.8  A2V           2.75   1.48   55.64 0.74    59

update Stars set common_name = "$\\iota$ Centauri" where approx_rank_apparent_magnitude = 124;

125. Beta Ophiuchi             Cebalrai          17 43  +4.6   29.2 +17.3  K2III         2.76   0.76   39.78 0.75    82
126. Beta Eridani              Kursa             05 08  -5.1  205.4 -25.3  A3III         2.78   0.60   36.71 0.76    89
127. Beta Herculis             Kornephoros       16 30 +21.5   39.0 +40.3  G7III         2.78  -0.50   22.07 1.00   150
128. Delta Crucis                                12 15 -58.7  298.2  +3.8  B2IV          2.79  -2.45    8.96 0.60   360

update Stars set common_name = "$\\delta$ Crucis" where approx_rank_apparent_magnitude = 129;


129. Beta Draconis             Rastaban          17 30 +52.3   79.6 +33.4  G2II          2.79  -2.43    9.02 0.49   360

129. Beta Draconis             Rastaban          17 30 +52.3   79.6 +33.4  G2II          2.79  -2.43    9.02 0.49   360

update Stars set common_name = "Rastaban" where approx_rank_apparent_magnitude = 129;

130. Alpha Canum Venaticorum   Cor Caroli        12 56 +38.3  118.3 +78.8  A0IV+F0V      2.80v  0.16v  29.60 1.04   110

select * from Stars where approx_rank_apparent_magnitude = 130\G


update Stars set approx_rank_apparent_magnitude = 0 where bs_hr_number = 4914;

update Stars set apparent_magnitude = , absolute_magnitude = where approx_rank_apparent_magnitude = ;

update Stars set apparent_magnitude = 2.80, absolute_magnitude =-3.40 where approx_rank_apparent_magnitude = 131;

update Stars set apparent_magnitude = 2.81, absolute_magnitude =-0.63 where approx_rank_apparent_magnitude = 132;

update Stars set apparent_magnitude = 2.81 , absolute_magnitude =2.64 where approx_rank_apparent_magnitude = 133;

update Stars set apparent_magnitude = 2.82 , absolute_magnitude =3.45 where approx_rank_apparent_magnitude = 134;

update Stars set apparent_magnitude = 2.82, absolute_magnitude =-2.78 where approx_rank_apparent_magnitude = 135;

update Stars set apparent_magnitude = 2.82 , absolute_magnitude =0.95 where approx_rank_apparent_magnitude = 136;

update Stars set apparent_magnitude = 2.83, absolute_magnitude =-2.22 where approx_rank_apparent_magnitude = 137;

update Stars set apparent_magnitude = 2.83 , absolute_magnitude =1.41 where approx_rank_apparent_magnitude = 138;

update Stars set apparent_magnitude = 2.84, absolute_magnitude =-4.55 where approx_rank_apparent_magnitude = 140;

select * from Stars where approx_rank_apparent_magnitude = 139\G

select bayer_designation_greek_letter_tex, constellation_name_genitive, bayer_designation_extension,
approx_rank_apparent_magnitude from Stars where approx_rank_apparent_magnitude = 128
or approx_rank_apparent_magnitude = 131
or approx_rank_apparent_magnitude = 134
or approx_rank_apparent_magnitude = 135
or approx_rank_apparent_magnitude = 140 order by approx_rank_apparent_magnitude\G


show columns from Stars;

update Stars set common_name = "$\\delta$ Crucis" where approx_rank_apparent_magnitude = 128;
update Stars set common_name = "$\\gamma$ Lupi" where approx_rank_apparent_magnitude = 131;
update Stars set common_name = "$\\beta$ Hydri" where approx_rank_apparent_magnitude = 134;
update Stars set common_name = "$\\tau$ Scorpii" where approx_rank_apparent_magnitude = 135;
update Stars set common_name = "$\\zeta$ Persei" where approx_rank_apparent_magnitude = 140;


141 Beta Arae                 2.84  -3.49 
142 Choo                      2.84  -1.51 
143 Alcyone                   2.85  -2.41 
144 Vindemiatrix              2.85   0.37 
145 Deneb Algedi              2.85e  2.49 
146 Head of Hydrus            2.86   1.16 
147 Delta Cygni               2.86  -0.74 

update Stars set common_name = "$\\alpha$ Hydri" where approx_rank_apparent_magnitude = 146;


-- update Stars set common_name = "XXX" where approx_rank_apparent_magnitude = 146;

select * from Stars where common_name = "Head of Hydrus"\G

select * from Stars where approx_rank_apparent_magnitude = 146\G

148 Tejat                     2.87v -1.39v


149 Gamma Trianguli Australis 2.87  -0.87 
150 Alpha Tucanae             2.87  -1.05 


select common_name, bayer_designation_greek_letter_tex, constellation_name_genitive, bayer_designation_extension,
approx_rank_apparent_magnitude from Stars where approx_rank_apparent_magnitude > 149
and approx_rank_apparent_magnitude < 161 order by approx_rank_apparent_magnitude\G

select * from Stars where approx_rank_apparent_magnitude = 149\G

update Stars set apparent_magnitude_varies = 1, absolute_magnitude_varies = 1 where approx_rank_apparent_magnitude = 148;

update Stars set approx_rank_apparent_magnitude = 0 where bs_hr_number =  664;


update Stars set common_name = "$\\beta$ Arae" where approx_rank_apparent_magnitude = 141;
update Stars set common_name = "$\\delta$ Cygni" where approx_rank_apparent_magnitude = 147;
update Stars set common_name = "$\\gamma$ Trianguli Australis" where approx_rank_apparent_magnitude = 149;
update Stars set common_name = "$\\alpha$ Tucanae" where approx_rank_apparent_magnitude = 150;

update Stars set apparent_magnitude = , absolute_magnitude = where approx_rank_apparent_magnitude = ;

update Stars set apparent_magnitude = 2.84 , absolute_magnitude =-3.49 where approx_rank_apparent_magnitude = 141;

update Stars set apparent_magnitude = 2.84 , absolute_magnitude =-1.51 where approx_rank_apparent_magnitude = 142;

update Stars set apparent_magnitude = 2.85 , absolute_magnitude =-2.41 where approx_rank_apparent_magnitude = 143;

update Stars set apparent_magnitude = 2.85  , absolute_magnitude =0.37 where approx_rank_apparent_magnitude = 144;

update Stars set is_eclipsing_binary = 1 where approx_rank_apparent_magnitude = 145;

update Stars set apparent_magnitude = 2.85 , absolute_magnitude =2.49 where approx_rank_apparent_magnitude = 145;

update Stars set apparent_magnitude = 2.86  , absolute_magnitude =1.16 where approx_rank_apparent_magnitude = 146;


update Stars set apparent_magnitude = 2.86 , absolute_magnitude =-0.74 where approx_rank_apparent_magnitude = 147;

update Stars set apparent_magnitude = 2.87 , absolute_magnitude =-1.39 where approx_rank_apparent_magnitude = 148;

update Stars set apparent_magnitude = 2.87 , absolute_magnitude =-0.87 where approx_rank_apparent_magnitude = 149;

update Stars set apparent_magnitude = 2.87 , absolute_magnitude =-1.05 where approx_rank_apparent_magnitude = 150;


update Stars set apparent_magnitude_varies = 1, absolute_magnitude_varies = 1 where approx_rank_apparent_magnitude = 148;

select common_name, bayer_designation_greek_letter_tex, constellation_name_genitive, bayer_designation_extension,
approx_rank_apparent_magnitude from Stars where bayer_designation_greek_letter = "theta^1"
and constellation_name_genitive = "Eridani"\G

delete from Stars where bayer_designation_greek_letter = "theta^1" and constellation_name_genitive = "Eridani"
and common_name = "";

replace into Stars (
common_name,
approx_rank_apparent_magnitude,
apparent_magnitude,
absolute_magnitude,
bayer_designation_greek_letter,
bayer_designation_greek_letter_tex,
constellation_name_genitive,
constellation_abbreviation,
constellation_full_name,
constellation_number,
bs_hr_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds,
is_binary_component,
notes
)
values (
"Acamar",
151,
2.88,
-0.59,
"theta^1",
"$\\theta^1$",
"Eridani",
"Eri",
"Eridanus",
6,
897,
02, -- right ascension
58,
15.6792190187,
-40, -- declination
18,
16.845665573,
1,
"Apparent magnitude and absolute magnitude may be those of the system rather than the single component theta^1 Eridani."
);

select * from Constellations where name = "Eridanus";


θ1 Eri: Acamar, HD 18622, HR 897

https://en.wikipedia.org/wiki/Theta_Eridani


02 58 15.6792190187 -40 18 16.845665573

Theta Eridani, Latinized from θ Eridani, is a binary system in the constellation of Eridanus

Right ascension         02h 58m 15.67922s[1]
Declination     −40° 18′ 16.8457″[1]
Apparent magnitude (V)  2.88[2]

Missing: 151

update Stars set apparent_magnitude_varies = 1, absolute_magnitude_varies = 1 where approx_rank_apparent_magnitude = 156;



update Stars set apparent_magnitude = 2.88 , absolute_magnitude =-2.77 where approx_rank_apparent_magnitude = 152; 

update Stars set apparent_magnitude = 2.89 , absolute_magnitude =-0.70 where approx_rank_apparent_magnitude = 153; 

update Stars set apparent_magnitude = 2.89 , absolute_magnitude =-2.85 where approx_rank_apparent_magnitude = 154; 

update Stars set apparent_magnitude = 2.90 , absolute_magnitude =-3.19 where approx_rank_apparent_magnitude = 155; 

update Stars set apparent_magnitude = 2.90 , absolute_magnitude =-3.86 where approx_rank_apparent_magnitude = 156;

update Stars set apparent_magnitude = 2.90 , absolute_magnitude =-2.31 where approx_rank_apparent_magnitude = 157; 

update Stars set apparent_magnitude = 2.90 , absolute_magnitude =-3.47 where approx_rank_apparent_magnitude = 158; 

update Stars set apparent_magnitude = 2.91 , absolute_magnitude =-1.57 where approx_rank_apparent_magnitude = 159; 

update Stars set apparent_magnitude = 2.92 , absolute_magnitude =-5.56 where approx_rank_apparent_magnitude = 160; 

update Stars set common_name = "$\\pi$ Scorpii"      where approx_rank_apparent_magnitude = 154;
update Stars set common_name = "$\\epsilon$ Persei"  where approx_rank_apparent_magnitude = 155;
update Stars set common_name = "$\\gamma$ Persei"    where approx_rank_apparent_magnitude = 159;
update Stars set common_name = "$\\upsilon$ Carinae" where approx_rank_apparent_magnitude = 160;

select common_name, bayer_designation_greek_letter_tex, constellation_name_genitive, bayer_designation_extension,
approx_rank_apparent_magnitude from Stars where approx_rank_apparent_magnitude > 160
and approx_rank_apparent_magnitude < 171 order by approx_rank_apparent_magnitude\G

update Stars set common_name = "$\\tau$ Puppis" where approx_rank_apparent_magnitude = 162;
update Stars set common_name = "$\\gamma$ Hydrae" where approx_rank_apparent_magnitude = 169;
update Stars set common_name = "$\\iota^1$ Scorpii" where approx_rank_apparent_magnitude = 170;
  
update Stars set apparent_magnitude = 2.93, absolute_magnitude =-1.16 where approx_rank_apparent_magnitude = 161;

update Stars set apparent_magnitude = 2.94, absolute_magnitude =-0.80 where approx_rank_apparent_magnitude = 162;

update Stars set apparent_magnitude = 2.94 , absolute_magnitude =0.79 where approx_rank_apparent_magnitude = 163;
update Stars set apparent_magnitude = 2.95, absolute_magnitude =-3.88 where approx_rank_apparent_magnitude = 164;
update Stars set apparent_magnitude = 2.97, absolute_magnitude =-1.19 where approx_rank_apparent_magnitude = 165;
update Stars set apparent_magnitude = 2.97, absolute_magnitude =-2.56 where approx_rank_apparent_magnitude = 166;
update Stars set apparent_magnitude = 2.97, absolute_magnitude =-1.46 where approx_rank_apparent_magnitude = 167;
update Stars set apparent_magnitude = 2.98 , absolute_magnitude =0.63 where approx_rank_apparent_magnitude = 168;
update Stars set apparent_magnitude = 2.99, absolute_magnitude =-0.05 where approx_rank_apparent_magnitude = 169;
update Stars set apparent_magnitude = 2.99, absolute_magnitude =-5.71 where approx_rank_apparent_magnitude = 170;


update Stars set common_name = "Ras Elased Australis" where bs_hr_number = 3873;

-- Store this in register c:
update Stars set apparent_magnitude = , absolute_magnitude = where approx_rank_apparent_magnitude = ;
  
select common_name, bayer_designation_greek_letter_tex, constellation_name_genitive, bayer_designation_extension,
approx_rank_apparent_magnitude from Stars where approx_rank_apparent_magnitude > 170
and approx_rank_apparent_magnitude < 181 order by approx_rank_apparent_magnitude\G

update Stars set common_name = "$\\beta$ Trianguli"           where approx_rank_apparent_magnitude = 172;
update Stars set common_name = "$\\psi$ Ursae Majoris"        where approx_rank_apparent_magnitude = 173;
update Stars set common_name = "$\\mu^1$ Scorpii"             where approx_rank_apparent_magnitude = 175;
update Stars set common_name = "$\\gamma$ Gruis"              where approx_rank_apparent_magnitude = 176;
update Stars set common_name = "$\\delta$ Persei"             where approx_rank_apparent_magnitude = 177;

update Stars set common_name = "$o^2$ Canis Majoris"  where approx_rank_apparent_magnitude = 179;

update Stars set apparent_magnitude = 2.99, absolute_magnitude =  0.96  where approx_rank_apparent_magnitude = 171;
update Stars set apparent_magnitude = 3.00, absolute_magnitude =  0.09  where approx_rank_apparent_magnitude = 172;
update Stars set apparent_magnitude = 3.00, absolute_magnitude = -0.27  where approx_rank_apparent_magnitude = 173;
update Stars set apparent_magnitude = 3.00, absolute_magnitude = -2.84  where approx_rank_apparent_magnitude = 174;
update Stars set apparent_magnitude = 3.00, absolute_magnitude = -4.01  where approx_rank_apparent_magnitude = 175;
update Stars set apparent_magnitude = 3.00, absolute_magnitude = -0.97  where approx_rank_apparent_magnitude = 176;
update Stars set apparent_magnitude = 3.01, absolute_magnitude = -3.04  where approx_rank_apparent_magnitude = 177;
update Stars set apparent_magnitude = 3.02, absolute_magnitude = -2.05  where approx_rank_apparent_magnitude = 178;
update Stars set apparent_magnitude = 3.02, absolute_magnitude = -6.46  where approx_rank_apparent_magnitude = 179;
update Stars set apparent_magnitude = 3.02, absolute_magnitude = -1.82  where approx_rank_apparent_magnitude = 180;

select common_name, bayer_designation_greek_letter_tex, constellation_name_genitive, bayer_designation_extension,
approx_rank_apparent_magnitude from Stars where approx_rank_apparent_magnitude > 180
and approx_rank_apparent_magnitude < 191 order by approx_rank_apparent_magnitude\G

update Stars set common_name = "$\\beta$ Muscae" where approx_rank_apparent_magnitude = 182;
update Stars set common_name = "$\\eta$ Sagittarii" where approx_rank_apparent_magnitude = 188;
update Stars set common_name = "$\\zeta$ Hydrae" where approx_rank_apparent_magnitude = 189;
update Stars set common_name = "$\\nu$ Hydrae" where approx_rank_apparent_magnitude = 190;

update Stars set common_name = "$\\nu$ Hydr{\\ae}" where approx_rank_apparent_magnitude = 190;

select * from Stars where approx_rank_apparent_magnitude = 190\G

update Stars set is_eclipsing_binary = 1 where approx_rank_apparent_magnitude = 181;
update Stars set is_eclipsing_binary = 1 where approx_rank_apparent_magnitude = 186;

update Stars set apparent_magnitude = 3.03, absolute_magnitude = -5.95 where approx_rank_apparent_magnitude = 181;
update Stars set apparent_magnitude = 3.04, absolute_magnitude = -1.86 where approx_rank_apparent_magnitude = 182;
update Stars set apparent_magnitude = 3.04, absolute_magnitude =  0.96 where approx_rank_apparent_magnitude = 183;
update Stars set apparent_magnitude = 3.05, absolute_magnitude = -2.07 where approx_rank_apparent_magnitude = 184;
update Stars set apparent_magnitude = 3.06, absolute_magnitude = -4.15 where approx_rank_apparent_magnitude = 185;
update Stars set apparent_magnitude = 3.06, absolute_magnitude = -1.35 where approx_rank_apparent_magnitude = 186;
update Stars set apparent_magnitude = 3.07, absolute_magnitude =  0.63 where approx_rank_apparent_magnitude = 187;
update Stars set apparent_magnitude = 3.10, absolute_magnitude = -0.20 where approx_rank_apparent_magnitude = 188;
update Stars set apparent_magnitude = 3.11, absolute_magnitude = -0.21 where approx_rank_apparent_magnitude = 189;
update Stars set apparent_magnitude = 3.11, absolute_magnitude = -0.03 where approx_rank_apparent_magnitude = 190;

update Stars set common_name = "$\\lambda$ Centauri" where approx_rank_apparent_magnitude = 191;
update Stars set common_name = "$\\zeta$ Arae" where approx_rank_apparent_magnitude = 195;
update Stars set common_name = "$\\alpha$ Lyncis" where approx_rank_apparent_magnitude = 198;
update Stars set common_name = "N Velorum" where approx_rank_apparent_magnitude = 199;
update Stars set common_name = "$\\pi$ Herculis" where approx_rank_apparent_magnitude = 200;
                                                          
update Stars set apparent_magnitude = 3.11, absolute_magnitude = -2.39 where approx_rank_apparent_magnitude = 191;
update Stars set apparent_magnitude = 3.11, absolute_magnitude =  0.65 where approx_rank_apparent_magnitude = 192;
update Stars set apparent_magnitude = 3.12, absolute_magnitude =  1.02 where approx_rank_apparent_magnitude = 193;
update Stars set apparent_magnitude = 3.12, absolute_magnitude =  2.29 where approx_rank_apparent_magnitude = 194;
update Stars set apparent_magnitude = 3.12, absolute_magnitude = -3.11 where approx_rank_apparent_magnitude = 195;
update Stars set apparent_magnitude = 3.12, absolute_magnitude =  1.21 where approx_rank_apparent_magnitude = 196;
update Stars set apparent_magnitude = 3.13, absolute_magnitude = -2.96 where approx_rank_apparent_magnitude = 197;
update Stars set apparent_magnitude = 3.14, absolute_magnitude = -1.02 where approx_rank_apparent_magnitude = 198;
update Stars set apparent_magnitude = 3.16, absolute_magnitude = -1.15 where approx_rank_apparent_magnitude = 199;
update Stars set apparent_magnitude = 3.16, absolute_magnitude = -2.10 where approx_rank_apparent_magnitude = 200;                          
                              
select common_name, bayer_designation_greek_letter_tex, constellation_name_genitive, bayer_designation_extension,
approx_rank_apparent_magnitude from Stars where approx_rank_apparent_magnitude > 190
and approx_rank_apparent_magnitude < 201 order by approx_rank_apparent_magnitude\G


select * from Stars where common_name = "N Velorum"\G

191 lambda_centauri
192 persian
193 wazn
194 talita
195 zeta_arae
196 sarin
197 ke_kwan
198 alpha_lyncis
199 n_velorum
200 pi_herculis

select common_name from Stars where common_name is not null and common_name <> ""
and right_ascension_decimal_degrees > 67.5 and right_ascension_decimal_degrees < 90
and declination_decimal_degrees >= -11.25 and declination_decimal_degrees < 5 order by common_name;

+-------------+
| common_name |
+-------------+
| Algjebbah   |
| Alnilam     |
| Alnitak     |
| Hatysa      |
| Kursa       |
| Mintaka     |
| Rigel       |
| Saiph       |
+-------------+

select * from Stars where common_name = "$\\pi$ Puppis"\G

select * from Stars where bs_hr_number = 2773 or bs_hr_number = 4798\G


select * from Stars where bs_hr_number = 4798\G

update Stars set common_name = "$\\alpha$ Muscae" where bs_hr_number = 4798;

select common_name, approx_rank_apparent_magnitude, right_ascension_decimal_degrees, declination_decimal_degrees
from Stars where common_name is not null and common_name <> ""
and right_ascension_decimal_degrees >= 112.5 and right_ascension_decimal_degrees <= 157.5
and declination_decimal_degrees >= -67.5 and declination_decimal_degrees <= -45
and approx_rank_apparent_magnitude <= 200 order by approx_rank_apparent_magnitude;

select common_name, approx_rank_apparent_magnitude, apparent_magnitude, absolute_magnitude from Stars
where common_name = "Merak";

+--------------------+--------------------------------+---------------------------------+-----------------------------+
| Avior              |                             40 |                         125.723 |                    -59.5694 |
| Koo She            |                             45 |                         131.304 |                    -54.7772 |
| Aspidiske          |                             66 |                         139.396 |                    -59.3533 |
| Markeb             |                             90 |                         140.672 |                    -55.0903 |
| $\upsilon$ Carinae |                            160 |                         146.891 |                    -65.1581 |
| N Velorum          |                            199 |                         142.806 |                    -57.0344 |
+--------------------+--------------------------------+---------------------------------+-----------------------------+


select * from Stars where common_name = "Merak"\G

update Stars set apparent_magnitude = 2.83, absolute_magnitude = 2.38 where approx_rank_apparent_magnitude = 139;

. Beta Trianguli Australis                    15 55 -63.4  321.9  -7.5  F2IV                81.24 0.62    40


80. Beta Ursae Majoris        Merak             11 02 +56.4  149.1 +54.8  A1V           2.34   0.41   41.07 0.60    79

select common_name from Stars where common_name is not null and common_name <> ""
and approx_rank_apparent_magnitude > 0 and approx_rank_apparent_magnitude <= 200
and right_ascension_decimal_degrees > 247.5 and right_ascension_decimal_degrees < 292.5
and declination_decimal_degrees >= -56.25 and declination_decimal_degrees < -22.5 order by common_name;

select * from Stars where approx_rank_apparent_magnitude = 175\G

+-------------------+
| common_name       |
+-------------------+
| $\beta$ Arae      |
| $\eta$ Sagittarii |
| $\iota^1$ Scorpii |
| $\mu^1$ Scorpii   |
| $\tau$ Scorpii    |
| $\zeta$ Arae      |
| Alnasl            |
| Antares           |
| Ascella           |
| Choo              |
| Girtab            |
| Kaus Australis    |
| Kaus Borealis     |
| Kaus Meridionalis |
| Lesath            |
| Nunki             |
| Sargas            |
| Shaula            |
| Wei               |
+-------------------+

select approx_rank_apparent_magnitude, common_name from Stars where common_name like ("%ae") order by approx_rank_apparent_magnitude;

update Stars set common_name = "$\\theta$ Aurig{\\ae}" where approx_rank_apparent_magnitude = 107;
update Stars set common_name = "$\\alpha$ Musc{\\ae}" where approx_rank_apparent_magnitude =    114;
update Stars set common_name = "$\\theta$ Carin{\\ae}" where approx_rank_apparent_magnitude =   121;
update Stars set common_name = "$\\beta$ Ar{\\ae}" where approx_rank_apparent_magnitude =       141;
update Stars set common_name = "$\\alpha$ Tucan{\\ae}" where approx_rank_apparent_magnitude =   150;
update Stars set common_name = "$\\upsilon$ Carin{\\ae}" where approx_rank_apparent_magnitude = 160;
update Stars set common_name = "$\\gamma$ Hydr{\\ae}" where approx_rank_apparent_magnitude =    169;
update Stars set common_name = "$\\beta$ Musc{\\ae}" where approx_rank_apparent_magnitude =     182;
update Stars set common_name = "$\\zeta$ Hydr{\\ae}" where approx_rank_apparent_magnitude =     189;
update Stars set common_name = "$\\zeta$ Ar{\\ae}" where approx_rank_apparent_magnitude =       195;


select distinct constellation_name_genitive from Stars
where constellation_name_genitive like ("%ae") order by constellation_name_genitive;

/* !! START HERE:  LDF 2021.09.06.  Get absolute magnitudes.  */ 


*************************** 1. row ***************************
approx_rank_apparent_magnitude: 1
bayer_designation_greek_letter: Sirius
    constellation_abbreviation: CMa
            apparent_magnitude: -1.46
            absolute_magnitude: 0
                  bs_hr_number: 2491
*************************** 2. row ***************************
approx_rank_apparent_magnitude: 2
bayer_designation_greek_letter: Canopus
    constellation_abbreviation: Car
            apparent_magnitude: -0.73
            absolute_magnitude: 0
                  bs_hr_number: 2326
*************************** 3. row ***************************
approx_rank_apparent_magnitude: 3
bayer_designation_greek_letter: $\alpha$ Centauri
    constellation_abbreviation: Cen
            apparent_magnitude: -0.29
            absolute_magnitude: 0
                  bs_hr_number: 0
*************************** 4. row ***************************
approx_rank_apparent_magnitude: 4
bayer_designation_greek_letter: Arcturus
    constellation_abbreviation: Boo
            apparent_magnitude: -0.05
            absolute_magnitude: 0
                  bs_hr_number: 5340
*************************** 5. row ***************************
approx_rank_apparent_magnitude: 5
bayer_designation_greek_letter: Vega
    constellation_abbreviation: Lyr
            apparent_magnitude: 0.03
            absolute_magnitude: 0
                  bs_hr_number: 7001
*************************** 6. row ***************************
approx_rank_apparent_magnitude: 6
bayer_designation_greek_letter: Capella
    constellation_abbreviation: Aur
            apparent_magnitude: 0.07
            absolute_magnitude: 0
                  bs_hr_number: 1708
*************************** 7. row ***************************
approx_rank_apparent_magnitude: 7
bayer_designation_greek_letter: Rigel
    constellation_abbreviation: Ori
            apparent_magnitude: 0.15
            absolute_magnitude: 0
                  bs_hr_number: 1713
*************************** 8. row ***************************
approx_rank_apparent_magnitude: 8
bayer_designation_greek_letter: Procyon
    constellation_abbreviation: CMi
            apparent_magnitude: 0.36
            absolute_magnitude: 0
                  bs_hr_number: 2943
*************************** 9. row ***************************
approx_rank_apparent_magnitude: 9
bayer_designation_greek_letter: Achernar
    constellation_abbreviation: Eri
            apparent_magnitude: 0.45
            absolute_magnitude: 0
                  bs_hr_number: 472
*************************** 10. row ***************************
approx_rank_apparent_magnitude: 10
bayer_designation_greek_letter: Betelgeuse
    constellation_abbreviation: Ori
            apparent_magnitude: 0.55
            absolute_magnitude: 0
                  bs_hr_number: 2061
*************************** 11. row ***************************
approx_rank_apparent_magnitude: 11
bayer_designation_greek_letter: Hadar
    constellation_abbreviation: Cen
            apparent_magnitude: 0.61
            absolute_magnitude: 0
                  bs_hr_number: 5267
*************************** 12. row ***************************
approx_rank_apparent_magnitude: 12
bayer_designation_greek_letter: Altair
    constellation_abbreviation: Aql
            apparent_magnitude: 0.77
            absolute_magnitude: 0
                  bs_hr_number: 7557
*************************** 13. row ***************************
approx_rank_apparent_magnitude: 13
bayer_designation_greek_letter: Acrux
    constellation_abbreviation: Cru
            apparent_magnitude: 0.79
            absolute_magnitude: 0
                  bs_hr_number: 0
*************************** 14. row ***************************
approx_rank_apparent_magnitude: 14
bayer_designation_greek_letter: Aldebaran
    constellation_abbreviation: Tau
            apparent_magnitude: 0.86
            absolute_magnitude: 0
                  bs_hr_number: 1457
*************************** 15. row ***************************
approx_rank_apparent_magnitude: 15
bayer_designation_greek_letter: Antares
    constellation_abbreviation: Sco
            apparent_magnitude: 0.95
            absolute_magnitude: 0
                  bs_hr_number: 6134
*************************** 16. row ***************************
approx_rank_apparent_magnitude: 16
bayer_designation_greek_letter: Spica
    constellation_abbreviation: Vir
            apparent_magnitude: 0.97
            absolute_magnitude: 0
                  bs_hr_number: 5056
*************************** 17. row ***************************
approx_rank_apparent_magnitude: 17
bayer_designation_greek_letter: Pollux
    constellation_abbreviation: Gem
            apparent_magnitude: 1.14
            absolute_magnitude: 0
                  bs_hr_number: 2990
*************************** 18. row ***************************
approx_rank_apparent_magnitude: 18
bayer_designation_greek_letter: Fomalhaut
    constellation_abbreviation: PsA
            apparent_magnitude: 1.15
            absolute_magnitude: 0
                  bs_hr_number: 8728
*************************** 19. row ***************************
approx_rank_apparent_magnitude: 19
bayer_designation_greek_letter: Deneb
    constellation_abbreviation: Cyg
            apparent_magnitude: 1.24
            absolute_magnitude: 0
                  bs_hr_number: 7924
*************************** 20. row ***************************
approx_rank_apparent_magnitude: 20
bayer_designation_greek_letter: Mimosa
    constellation_abbreviation: Cru
            apparent_magnitude: 1.26
            absolute_magnitude: 0
                  bs_hr_number: 4853
*************************** 21. row ***************************
approx_rank_apparent_magnitude: 21
bayer_designation_greek_letter: Regulus
    constellation_abbreviation: Leo
            apparent_magnitude: 1.36
            absolute_magnitude: 0
                  bs_hr_number: 3982
*************************** 22. row ***************************
approx_rank_apparent_magnitude: 22
bayer_designation_greek_letter: Adhara
    constellation_abbreviation: CMa
            apparent_magnitude: 1.5
            absolute_magnitude: 0
                  bs_hr_number: 2618
*************************** 23. row ***************************
approx_rank_apparent_magnitude: 23
bayer_designation_greek_letter: Castor
    constellation_abbreviation: Gem
            apparent_magnitude: 1.58
            absolute_magnitude: 0
                  bs_hr_number: 0
*************************** 24. row ***************************
approx_rank_apparent_magnitude: 24
bayer_designation_greek_letter: Shaula
    constellation_abbreviation: Sco
            apparent_magnitude: 1.62
            absolute_magnitude: 0
                  bs_hr_number: 6527
*************************** 25. row ***************************
approx_rank_apparent_magnitude: 25
bayer_designation_greek_letter: Gacrux
    constellation_abbreviation: Cru
            apparent_magnitude: 1.63
            absolute_magnitude: 0
                  bs_hr_number: 4763
*************************** 26. row ***************************
approx_rank_apparent_magnitude: 26
bayer_designation_greek_letter: Bellatrix
    constellation_abbreviation: Ori
            apparent_magnitude: 1.64
            absolute_magnitude: 0
                  bs_hr_number: 1790
*************************** 27. row ***************************
approx_rank_apparent_magnitude: 27
bayer_designation_greek_letter: Elnath
    constellation_abbreviation: Tau
            apparent_magnitude: 1.66
            absolute_magnitude: 0
                  bs_hr_number: 1791
*************************** 28. row ***************************
approx_rank_apparent_magnitude: 28
bayer_designation_greek_letter: Miaplacidus
    constellation_abbreviation: Car
            apparent_magnitude: 1.67
            absolute_magnitude: 0
                  bs_hr_number: 3685
*************************** 29. row ***************************
approx_rank_apparent_magnitude: 29
bayer_designation_greek_letter: Alnilam
    constellation_abbreviation: Ori
            apparent_magnitude: 1.69
            absolute_magnitude: 0
                  bs_hr_number: 1903
*************************** 30. row ***************************
approx_rank_apparent_magnitude: 30
bayer_designation_greek_letter: Alnair
    constellation_abbreviation: Gru
            apparent_magnitude: 1.74
            absolute_magnitude: 0
                  bs_hr_number: 8425
*************************** 31. row ***************************
approx_rank_apparent_magnitude: 31
bayer_designation_greek_letter: Alnitak
    constellation_abbreviation: Ori
            apparent_magnitude: 1.75
            absolute_magnitude: 0
                  bs_hr_number: 1948
*************************** 32. row ***************************
approx_rank_apparent_magnitude: 32
bayer_designation_greek_letter: Alioth
    constellation_abbreviation: UMa
            apparent_magnitude: 1.77
            absolute_magnitude: 0
                  bs_hr_number: 4905
*************************** 33. row ***************************
approx_rank_apparent_magnitude: 33
bayer_designation_greek_letter: Mirfak
    constellation_abbreviation: Per
            apparent_magnitude: 1.8
            absolute_magnitude: 0
                  bs_hr_number: 1017
*************************** 34. row ***************************
approx_rank_apparent_magnitude: 34
bayer_designation_greek_letter: Dubhe
    constellation_abbreviation: UMa
            apparent_magnitude: 1.8
            absolute_magnitude: 0
                  bs_hr_number: 4301
*************************** 35. row ***************************
approx_rank_apparent_magnitude: 35
bayer_designation_greek_letter: Regor
    constellation_abbreviation: Vel
            apparent_magnitude: 1.81
            absolute_magnitude: 0
                  bs_hr_number: 0
*************************** 36. row ***************************
approx_rank_apparent_magnitude: 36
bayer_designation_greek_letter: Wezen
    constellation_abbreviation: CMa
            apparent_magnitude: 1.83
            absolute_magnitude: 0
                  bs_hr_number: 2693
*************************** 37. row ***************************
approx_rank_apparent_magnitude: 37
bayer_designation_greek_letter: Kaus Australis
    constellation_abbreviation: Sgr
            apparent_magnitude: 1.84
            absolute_magnitude: 0
                  bs_hr_number: 6879
*************************** 38. row ***************************
approx_rank_apparent_magnitude: 38
bayer_designation_greek_letter: Alkaid
    constellation_abbreviation: UMa
            apparent_magnitude: 1.86
            absolute_magnitude: 0
                  bs_hr_number: 5191
*************************** 39. row ***************************
approx_rank_apparent_magnitude: 39
bayer_designation_greek_letter: Sargas
    constellation_abbreviation: Sco
            apparent_magnitude: 1.86
            absolute_magnitude: 0
                  bs_hr_number: 6553
*************************** 40. row ***************************
approx_rank_apparent_magnitude: 40
bayer_designation_greek_letter: Avior
    constellation_abbreviation: Car
            apparent_magnitude: 1.87
            absolute_magnitude: 0
                  bs_hr_number: 3307
*************************** 41. row ***************************
approx_rank_apparent_magnitude: 41
bayer_designation_greek_letter: Menkalinan
    constellation_abbreviation: Aur
            apparent_magnitude: 1.9
            absolute_magnitude: 0
                  bs_hr_number: 2088
*************************** 42. row ***************************
approx_rank_apparent_magnitude: 42
bayer_designation_greek_letter: Atria
    constellation_abbreviation: TrA
            apparent_magnitude: 1.92
            absolute_magnitude: 0
                  bs_hr_number: 6217
*************************** 43. row ***************************
approx_rank_apparent_magnitude: 43
bayer_designation_greek_letter: Alhena
    constellation_abbreviation: Gem
            apparent_magnitude: 1.93
            absolute_magnitude: 0
                  bs_hr_number: 2421
*************************** 44. row ***************************
approx_rank_apparent_magnitude: 44
bayer_designation_greek_letter: Peacock
    constellation_abbreviation: Pav
            apparent_magnitude: 1.93
            absolute_magnitude: 0
                  bs_hr_number: 7790
*************************** 45. row ***************************
approx_rank_apparent_magnitude: 45
bayer_designation_greek_letter: Koo She
    constellation_abbreviation: Vel
            apparent_magnitude: 1.95
            absolute_magnitude: 0
                  bs_hr_number: 3485
*************************** 46. row ***************************
approx_rank_apparent_magnitude: 46
bayer_designation_greek_letter: Mirzam
    constellation_abbreviation: CMa
            apparent_magnitude: 1.98
            absolute_magnitude: 0
                  bs_hr_number: 2294
*************************** 47. row ***************************
approx_rank_apparent_magnitude: 47
bayer_designation_greek_letter: Alphard
    constellation_abbreviation: Hya
            apparent_magnitude: 1.98
            absolute_magnitude: 0
                  bs_hr_number: 3748
*************************** 48. row ***************************
approx_rank_apparent_magnitude: 48
bayer_designation_greek_letter: Polaris
    constellation_abbreviation: UMi
            apparent_magnitude: 1.99
            absolute_magnitude: 0
                  bs_hr_number: 424
*************************** 49. row ***************************
approx_rank_apparent_magnitude: 49
bayer_designation_greek_letter: Algieba
    constellation_abbreviation: Leo
            apparent_magnitude: 2
            absolute_magnitude: 0
                  bs_hr_number: 0
*************************** 50. row ***************************
approx_rank_apparent_magnitude: 50
bayer_designation_greek_letter: Hamal
    constellation_abbreviation: Ari
            apparent_magnitude: 2.01
            absolute_magnitude: 0
                  bs_hr_number: 617
50 rows in set (0.00 sec)

show columns from Stars;

select common_name from Stars where approx_rank_apparent_magnitude = 7;

update Stars set absolute_magnitude_varies = true where approx_rank_apparent_magnitude = 7;
update Stars set absolute_magnitude_varies = true where approx_rank_apparent_magnitude = 10;
update Stars set absolute_magnitude_varies = true where approx_rank_apparent_magnitude = 14;
update Stars set absolute_magnitude_varies = true where approx_rank_apparent_magnitude = 15;
update Stars set absolute_magnitude_varies = true where approx_rank_apparent_magnitude = 48;

update Stars set absolute_magnitude = 1.43 where approx_rank_apparent_magnitude = 1;   
update Stars set absolute_magnitude = -5.64 where approx_rank_apparent_magnitude = 2;  
update Stars set absolute_magnitude = 4.06 where approx_rank_apparent_magnitude = 3;   
update Stars set absolute_magnitude = -0.31 where approx_rank_apparent_magnitude = 4;  
update Stars set absolute_magnitude = 0.58 where approx_rank_apparent_magnitude = 5;   
update Stars set absolute_magnitude = -0.49 where approx_rank_apparent_magnitude = 6;  
update Stars set absolute_magnitude = -6.72 where approx_rank_apparent_magnitude = 7;  
update Stars set absolute_magnitude = 2.64 where approx_rank_apparent_magnitude = 8;   
update Stars set absolute_magnitude = -2.77 where approx_rank_apparent_magnitude = 9;  
update Stars set absolute_magnitude = -5.04 where approx_rank_apparent_magnitude = 10; 
update Stars set absolute_magnitude = -5.42 where approx_rank_apparent_magnitude = 11; 
update Stars set absolute_magnitude = 2.21 where approx_rank_apparent_magnitude = 12;  
update Stars set absolute_magnitude = -4.17 where approx_rank_apparent_magnitude = 13; 
update Stars set absolute_magnitude = -0.64 where approx_rank_apparent_magnitude = 14; 
update Stars set absolute_magnitude = -5.39 where approx_rank_apparent_magnitude = 15; 
update Stars set absolute_magnitude = -3.56 where approx_rank_apparent_magnitude = 16; 
update Stars set absolute_magnitude = 1.07 where approx_rank_apparent_magnitude = 17;  
update Stars set absolute_magnitude = 1.72 where approx_rank_apparent_magnitude = 18;  
update Stars set absolute_magnitude = -8.74 where approx_rank_apparent_magnitude = 19; 
update Stars set absolute_magnitude = -3.91 where approx_rank_apparent_magnitude = 20; 
update Stars set absolute_magnitude = -0.52 where approx_rank_apparent_magnitude = 21; 
update Stars set absolute_magnitude = -4.10 where approx_rank_apparent_magnitude = 22; 
update Stars set absolute_magnitude = 0.59 where approx_rank_apparent_magnitude = 23;  
update Stars set absolute_magnitude = -5.05 where approx_rank_apparent_magnitude = 24; 
update Stars set absolute_magnitude = -0.52 where approx_rank_apparent_magnitude = 25; 
update Stars set absolute_magnitude = -2.72 where approx_rank_apparent_magnitude = 26; 
update Stars set absolute_magnitude = -1.36 where approx_rank_apparent_magnitude = 27; 
update Stars set absolute_magnitude = -0.99 where approx_rank_apparent_magnitude = 28; 
update Stars set absolute_magnitude = -6.38 where approx_rank_apparent_magnitude = 29; 
update Stars set absolute_magnitude = -0.72 where approx_rank_apparent_magnitude = 30; 
update Stars set absolute_magnitude = -5.25 where approx_rank_apparent_magnitude = 31; 
update Stars set absolute_magnitude = -0.20 where approx_rank_apparent_magnitude = 32; 
update Stars set absolute_magnitude = -4.49 where approx_rank_apparent_magnitude = 33; 
update Stars set absolute_magnitude = -1.09 where approx_rank_apparent_magnitude = 34; 
update Stars set absolute_magnitude = -5.25 where approx_rank_apparent_magnitude = 35; 
update Stars set absolute_magnitude = -6.87 where approx_rank_apparent_magnitude = 36; 
update Stars set absolute_magnitude = -1.39 where approx_rank_apparent_magnitude = 37; 
update Stars set absolute_magnitude = -0.59 where approx_rank_apparent_magnitude = 38; 
update Stars set absolute_magnitude = -2.75 where approx_rank_apparent_magnitude = 39; 
update Stars set absolute_magnitude = -4.57 where approx_rank_apparent_magnitude = 40; 
update Stars set absolute_magnitude = -0.10 where approx_rank_apparent_magnitude = 41; 
update Stars set absolute_magnitude = -3.61 where approx_rank_apparent_magnitude = 42; 
update Stars set absolute_magnitude = -0.60 where approx_rank_apparent_magnitude = 43; 
update Stars set absolute_magnitude = -1.82 where approx_rank_apparent_magnitude = 44; 
update Stars set absolute_magnitude = 0.01 where approx_rank_apparent_magnitude = 45;  
update Stars set absolute_magnitude = -3.95 where approx_rank_apparent_magnitude = 46; 
update Stars set absolute_magnitude = -1.70 where approx_rank_apparent_magnitude = 47; 
update Stars set absolute_magnitude = -3.62 where approx_rank_apparent_magnitude = 48; 
update Stars set absolute_magnitude = -0.93 where approx_rank_apparent_magnitude = 49; 
update Stars set absolute_magnitude = 0.48 where approx_rank_apparent_magnitude = 50;  

show columns from Stars;

+------------------------------------+---------------+------+-----+---------+-------+
| Field                              | Type          | Null | Key | Default | Extra |
+------------------------------------+---------------+------+-----+---------+-------+
| common_name                        | varchar(32)   | NO   |     |         |       |
| greek_name                         | varchar(32)   | NO   |     |         |       |
| latin_name                         | varchar(32)   | NO   |     |         |       |
| arabic_name                        | varchar(32)   | NO   |     |         |       |
| flamsteed_designation_number       | int           | NO   |     | 0       |       |
| bayer_designation_greek_letter     | varchar(16)   | NO   |     |         |       |
| bayer_designation_greek_letter_tex | varchar(16)   | NO   |     |         |       |
| bayer_designation_extension        | varchar(16)   | NO   |     |         |       |
| bs_hr_number                       | int           | NO   |     | 0       |       |
| approx_rank_apparent_magnitude     | int           | NO   |     | 0       |       |
| apparent_magnitude                 | float         | NO   |     | 1000    |       |
| apparent_magnitude_varies          | tinyint(1)    | NO   |     | 0       |       |
| absolute_magnitude                 | float         | NO   |     | 0       |       |
| absolute_magnitude_varies          | tinyint(1)    | NO   |     | 0       |       |
| constellation_abbreviation         | char(3)       | NO   |     |         |       |
| constellation_full_name            | varchar(32)   | NO   |     |         |       |
| constellation_name_genitive        | varchar(64)   | NO   |     |         |       |
| constellation_number               | int           | NO   |     | 0       |       |
| right_ascension_hours              | int           | NO   |     | 0       |       |
| right_ascension_minutes            | int           | NO   |     | 0       |       |
| right_ascension_seconds            | float         | NO   |     | 0       |       |
| right_ascension_decimal_hours      | float         | NO   |     | 0       |       |
| right_ascension_decimal_degrees    | float         | NO   |     | 0       |       |
| declination_degrees                | int           | NO   |     | 0       |       |
| declination_minutes                | int           | NO   |     | 0       |       |
| declination_seconds                | float         | NO   |     | 0       |       |
| declination_decimal_degrees        | float         | NO   |     | 0       |       |
| is_binary                          | int           | NO   |     | 0       |       |
| is_multiple                        | int           | NO   |     | 0       |       |
| is_binary_component                | int           | NO   |     | 0       |       |
| is_eclipsing_binary                | int           | NO   |     | 0       |       |
| notes                              | varchar(1024) | NO   |     |         |       |
+------------------------------------+---------------+------+-----+---------+-------+

select common_name, bayer_designation_extension from Stars
where bayer_designation_extension <> "" order by common_name;

select * from Stars where common_name = "Arcturus"\G

update Stars set constellation_full_name = "Bo@otes" where constellation_full_name = "Bo{@o}tes";

update Stars set constellation_name_genitive = "Bo@otis" where constellation_name_genitive = "Bo{@o}tis";

Boötes

select common_name, bayer_designation_greek_letter_tex from Stars where bayer_designation_greek_letter_tex like("%\{%");

select distinct bayer_designation_greek_letter_tex from Stars where bayer_designation_greek_letter_tex like("%\{%");



select distinct bayer_designation_greek_letter_tex from Stars where bayer_designation_greek_letter_tex = "$\\kappa^{2}$";

update Stars set bayer_designation_greek_letter_tex = "$\\kappa^2$" where bayer_designation_greek_letter_tex = "$\\kappa^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\lambda^1$" where bayer_designation_greek_letter_tex = "$\\lambda^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\beta^1$" where bayer_designation_greek_letter_tex = "$\\beta^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\phi^2$" where bayer_designation_greek_letter_tex = "$\\phi^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\lambda^2$" where bayer_designation_greek_letter_tex = "$\\lambda^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\eta^2$" where bayer_designation_greek_letter_tex = "$\\eta^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\gamma^1$" where bayer_designation_greek_letter_tex = "$\\gamma^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\xi^1$" where bayer_designation_greek_letter_tex = "$\\xi^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\xi^2$" where bayer_designation_greek_letter_tex = "$\\xi^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\tau^1$" where bayer_designation_greek_letter_tex = "$\\tau^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\tau^2$" where bayer_designation_greek_letter_tex = "$\\tau^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\tau^3$" where bayer_designation_greek_letter_tex = "$\\tau^{3}$";
update Stars set bayer_designation_greek_letter_tex = "$\\tau^4$" where bayer_designation_greek_letter_tex = "$\\tau^{4}$";
update Stars set bayer_designation_greek_letter_tex = "$\\tau^5$" where bayer_designation_greek_letter_tex = "$\\tau^{5}$";
update Stars set bayer_designation_greek_letter_tex = "$\\tau^6$" where bayer_designation_greek_letter_tex = "$\\tau^{6}$";
update Stars set bayer_designation_greek_letter_tex = "$\\o^1$" where bayer_designation_greek_letter_tex = "$\\o^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\o^2$" where bayer_designation_greek_letter_tex = "$\\o^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\kappa^1$" where bayer_designation_greek_letter_tex = "$\\kappa^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\theta^1$" where bayer_designation_greek_letter_tex = "$\\theta^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\theta^2$" where bayer_designation_greek_letter_tex = "$\\theta^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\upsilon^1$" where bayer_designation_greek_letter_tex = "$\\upsilon^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\upsilon^2$" where bayer_designation_greek_letter_tex = "$\\upsilon^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\pi^3$" where bayer_designation_greek_letter_tex = "$\\pi^{3}$";
update Stars set bayer_designation_greek_letter_tex = "$\\pi^2$" where bayer_designation_greek_letter_tex = "$\\pi^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\pi^4$" where bayer_designation_greek_letter_tex = "$\\pi^{4}$";
update Stars set bayer_designation_greek_letter_tex = "$\\pi^5$" where bayer_designation_greek_letter_tex = "$\\pi^{5}$";
update Stars set bayer_designation_greek_letter_tex = "$\\pi^6$" where bayer_designation_greek_letter_tex = "$\\pi^{6}$";
update Stars set bayer_designation_greek_letter_tex = "$\\phi^1$" where bayer_designation_greek_letter_tex = "$\\phi^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\chi^1$" where bayer_designation_greek_letter_tex = "$\\chi^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\chi^2$" where bayer_designation_greek_letter_tex = "$\\chi^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\psi^1$" where bayer_designation_greek_letter_tex = "$\\psi^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\nu^2$" where bayer_designation_greek_letter_tex = "$\\nu^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\nu^3$" where bayer_designation_greek_letter_tex = "$\\nu^{3}$";
update Stars set bayer_designation_greek_letter_tex = "$\\psi^5$" where bayer_designation_greek_letter_tex = "$\\psi^{5}$";
update Stars set bayer_designation_greek_letter_tex = "$\\psi^6$" where bayer_designation_greek_letter_tex = "$\\psi^{6}$";
update Stars set bayer_designation_greek_letter_tex = "$\\omicron^2$" where bayer_designation_greek_letter_tex = "$\\omicron^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\gamma^2$" where bayer_designation_greek_letter_tex = "$\\gamma^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\alpha^2$" where bayer_designation_greek_letter_tex = "$\\alpha^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\alpha^1$" where bayer_designation_greek_letter_tex = "$\\alpha^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\sigma^3$" where bayer_designation_greek_letter_tex = "$\\sigma^{3}$";
update Stars set bayer_designation_greek_letter_tex = "$\\delta^2$" where bayer_designation_greek_letter_tex = "$\\delta^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\mu^1$" where bayer_designation_greek_letter_tex = "$\\mu^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\nu^1$" where bayer_designation_greek_letter_tex = "$\\nu^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\beta^2$" where bayer_designation_greek_letter_tex = "$\\beta^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\omega^1$" where bayer_designation_greek_letter_tex = "$\\omega^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\omega^2$" where bayer_designation_greek_letter_tex = "$\\omega^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\delta^1$" where bayer_designation_greek_letter_tex = "$\\delta^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\mu^2$" where bayer_designation_greek_letter_tex = "$\\mu^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\zeta^2$" where bayer_designation_greek_letter_tex = "$\\zeta^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\epsilon^1$" where bayer_designation_greek_letter_tex = "$\\epsilon^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\iota^1$" where bayer_designation_greek_letter_tex = "$\\iota^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\zeta^1$" where bayer_designation_greek_letter_tex = "$\\zeta^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\eta^1$" where bayer_designation_greek_letter_tex = "$\\eta^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\rho^1$" where bayer_designation_greek_letter_tex = "$\\rho^{1}$";
update Stars set bayer_designation_greek_letter_tex = "$\\iota^2$" where bayer_designation_greek_letter_tex = "$\\iota^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\rho^2$" where bayer_designation_greek_letter_tex = "$\\rho^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\psi^2$" where bayer_designation_greek_letter_tex = "$\\psi^{2}$";
update Stars set bayer_designation_greek_letter_tex = "$\\psi^3$" where bayer_designation_greek_letter_tex = "$\\psi^{3}$";

select "Here I am.";

select bayer_designation_greek_letter_tex from Stars where common_name = "Cor Caroli 2";

update Stars set bayer_designation_greek_letter_tex = "$\\alpha^2$" where bayer_designation_greek_letter_tex = "$\\alpha^{2}$";

select bayer_designation_greek_letter_tex, bayer_designation_greek_letter from Stars where common_name = "Albaldah";

update Stars set bayer_designation_greek_letter_tex = "$\\pi$" where bayer_designation_greek_letter = "pi";

select bayer_designation_greek_letter_tex, bayer_designation_greek_letter from Stars 

update Stars set bayer_designation_greek_letter_tex = "$\\gamma$", bayer_designation_greek_letter = "gamma"
where common_name = "Algieba";

select approx_rank_apparent_magnitude, common_name, bs_hr_number from Stars
where approx_rank_apparent_magnitude > 0 and approx_rank_apparent_magnitude <= 200
and (bayer_designation_greek_letter = "" or bayer_designation_greek_letter_tex = "");


update Stars set bayer_designation_greek_letter_tex = "$\\gamma$", bayer_designation_greek_letter = "gamma"
where common_name = "Almach";

update Stars set bayer_designation_greek_letter_tex = "$\\gamma$", bayer_designation_greek_letter = "gamma"
where common_name = "Porrima";


-- (- 360.0 22.5) (- (+ 337.5 45) 360)22.5
-- (+ 360.0 -22.5)

select approx_rank_apparent_magnitude, common_name bs_hr_number, right_ascension_decimal_degrees from Stars
where right_ascension_decimal_degrees = 337.5
or right_ascension_decimal_degrees = 22.5
or right_ascension_decimal_degrees = 67.5
or right_ascension_decimal_degrees = 112.5
or right_ascension_decimal_degrees = 157.5
or right_ascension_decimal_degrees = 202.5
or right_ascension_decimal_degrees = 247.5
or right_ascension_decimal_degrees = 292.5
or right_ascension_decimal_degrees = 337.5;


-- (progn
-- (setq i 22.5)      
-- (insert "\n")
-- (while (<= i 360)
-- (insert (concat (number-to-string i) "\n"))
-- (setq i (+ i 45)))     
-- )



select distinct constellation_full_name from Stars where approx_rank_apparent_magnitude > 0 and
approx_rank_apparent_magnitude <= 200 order by constellation_full_name;


select distinct constellation_full_name from Stars order by constellation_full_name;

Andromeda                  Andromeda                
Antlia                     Antlia                           
Apus                       Apus                     
Aquarius                   Aquarius                 
Aquila                     Aquila                           
Ara                        Ara                      
Aries                      Aries                            
Auriga                     Auriga                           
Bo@otes                    Boötes                           
Caelum                     Caelum                           
Camelopardalis             Camelopardalis                   
Cancer                     Cancer                           
Canes Venatici             Canes Venatici                   
Canis Major                Canis Major              
Canis Minor                Canis Minor              
Capricornus                Capricornus              
Carina                     Carina                           
Cassiopeia                 Cassiopeia               
Centaurus                  Centaurus                
Cepheus                    Cepheus                          
Cetus                      Cetus                            
Chamaeleon                 Chamaeleon               
Circinus                   Circinus                 
Columba                    Columba                          
Coma Berenices             Coma Berenices                   
Corona Borealis            Corona Australis         
Corona_Australis           Corona Borealis                  
Corvus                     Corvus                           
Crater                     Crater                           
Crux                       Crux                     
Cygnus                     Cygnus                           
Delphinus                  Delphinus                
Dorado                     Dorado                           
Draco                      Draco                            
Equuleus                   Equuleus                 
Eridanus                   Eridanus                 
Fornax                     Fornax                           
Gemini                     Gemini                           
Grus                       Grus                     
Hercules                   Hercules                 
Horologium                 Horologium               
Hydra                      Hydra                            
Hydrus                     Hydrus                           
Indus                      Indus                            
Lacerta                    Lacerta                          
Leo                        Leo                      
Leo Minor                  Leo Minor                
Lepus                      Lepus                            
Libra                      Libra                            
Lupus                      Lupus                            
Lynx                       Lynx                     
Lyra                       Lyra                     
Mensa                      Mensa                            
Microscopium               Microscopium             
Monoceros                  Monoceros                
Musca                      Musca                            
Norma                      Norma                            
Octans                     Octans                           
Ophiuchus                  Ophiuchus                
Orion                      Orion                            
Pavo                       Pavo                     
Pegasus                    Pegasus                          
Perseus                    Perseus                          
Phoenix                    Phoenix                          
Pictor                     Pictor                           
Pisces                     Pisces                           
Piscis Austrinus           Piscis Austrinus         
Puppis                     Puppis                           
Pyxis                      Pyxis                            
Reticulum                  Reticulum                
Sagitta                    Sagitta                          
Sagittarius                Sagittarius              
Scorpius                   Scorpius                 
Sculptor                   Sculptor                 
Scutum                     Scutum                           
Serpens                    Serpens                          
Sextans                    Sextans                          
Taurus                     Taurus                           
Telescopium                Telescopium              
Triangulum                 Triangulum               
Triangulum Australe        Triangulum Australe      
Tucana                     Tucana                           
Ursa Major                 Ursa Major               
Ursa Minor                 Ursa Minor               
Vela                       Vela                     
Virgo                      Virgo                            
Volans                     Volans                           
Vulpecula                  Vulpecula                   

Andromeda
Antlia
Apus
Aquarius
Aquila
Ara
Aries
Auriga
Bo@otes
Caelum
Camelopardalis
Cancer
Canes Venatici
Canis Major
Canis Minor
Capricornus
Carina
Cassiopeia
Centaurus
Cepheus
Cetus
Chamaeleon
Circinus
Columba
Coma Berenices
Corona Australis
Corona Borealis
Corvus
Crater
Crux
Cygnus
Delphinus
Dorado
Draco
Equuleus
Eridanus
Fornax
Gemini
Grus
Hercules
Horologium
Hydra
Hydrus
Indus
Lacerta
Leo
Leo Minor
Lepus
Libra
Lupus
Lynx
Lyra
Mensa
Microscopium
Monoceros
Musca
Norma
Octans
Ophiuchus
Orion
Pavo
Pegasus
Perseus
Phoenix
Pictor
Pisces
Piscis Austrinus
Puppis
Pyxis
Reticulum
Sagitta
Sagittarius
Scorpius
Sculptor
Scutum
Serpens
Sextans
Taurus
Telescopium
Triangulum
Triangulum Australe
Tucana
Ursa Major
Ursa Minor
Vela
Virgo
Volans
Vulpecula



select * from Stars where approx_rank_apparent_magnitude > 0 and approx_rank_apparent_magnitude <= 200
order by constellation_full_name\G


                       common_name: Alpheratz
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 21
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 15
    approx_rank_apparent_magnitude: 54
                apparent_magnitude: 2.07
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.3
         absolute_magnitude_varies: 0
        constellation_abbreviation: And
           constellation_full_name: Andromeda
       constellation_name_genitive: Andromedae
              constellation_number: 19
             right_ascension_hours: 0
           right_ascension_minutes: 9
           right_ascension_seconds: 20.9
     right_ascension_decimal_hours: 0.155806
   right_ascension_decimal_degrees: 2.33709
               declination_degrees: 29
               declination_minutes: 11
               declination_seconds: 3
       declination_decimal_degrees: 29.1842
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 2. row ***************************
                       common_name: Almach
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 0
    approx_rank_apparent_magnitude: 61
                apparent_magnitude: 2.1
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.08
         absolute_magnitude_varies: 0
        constellation_abbreviation: And
           constellation_full_name: Andromeda
       constellation_name_genitive: Andromedae
              constellation_number: 19
             right_ascension_hours: 2
           right_ascension_minutes: 3
           right_ascension_seconds: 53.9523
     right_ascension_decimal_hours: 2.06499
   right_ascension_decimal_degrees: 30.9748
               declination_degrees: 42
               declination_minutes: 19
               declination_seconds: 47.0223
       declination_decimal_degrees: 42.3297
                         is_binary: 0
                       is_multiple: 4
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 3. row ***************************
                       common_name: Mirach
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 43
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 337
    approx_rank_apparent_magnitude: 55
                apparent_magnitude: 2.07
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.86
         absolute_magnitude_varies: 0
        constellation_abbreviation: And
           constellation_full_name: Andromeda
       constellation_name_genitive: Andromedae
              constellation_number: 19
             right_ascension_hours: 1
           right_ascension_minutes: 10
           right_ascension_seconds: 46.4
     right_ascension_decimal_hours: 1.17956
   right_ascension_decimal_degrees: 17.6934
               declination_degrees: 35
               declination_minutes: 43
               declination_seconds: 0
       declination_decimal_degrees: 35.7167
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 4. row ***************************
                       common_name: Sadalsuud
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 22
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 8232
    approx_rank_apparent_magnitude: 158
                apparent_magnitude: 2.9
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.47
         absolute_magnitude_varies: 0
        constellation_abbreviation: Aqr
           constellation_full_name: Aquarius
       constellation_name_genitive: Aquarii
              constellation_number: 10
             right_ascension_hours: 21
           right_ascension_minutes: 32
           right_ascension_seconds: 31.9
     right_ascension_decimal_hours: 21.5422
   right_ascension_decimal_degrees: 323.133
               declination_degrees: -5
               declination_minutes: 29
               declination_seconds: 2
       declination_decimal_degrees: -5.48389
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 5. row ***************************
                       common_name: Sadalmelik
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 34
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 8414
    approx_rank_apparent_magnitude: 164
                apparent_magnitude: 2.95
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.88
         absolute_magnitude_varies: 0
        constellation_abbreviation: Aqr
           constellation_full_name: Aquarius
       constellation_name_genitive: Aquarii
              constellation_number: 10
             right_ascension_hours: 22
           right_ascension_minutes: 6
           right_ascension_seconds: 44
     right_ascension_decimal_hours: 22.1122
   right_ascension_decimal_degrees: 331.683
               declination_degrees: 0
               declination_minutes: 13
               declination_seconds: 4
       declination_decimal_degrees: 0.217778
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 6. row ***************************
                       common_name: Deneb el Okab
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 17
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 7235
    approx_rank_apparent_magnitude: 171
                apparent_magnitude: 2.99
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.96
         absolute_magnitude_varies: 0
        constellation_abbreviation: Aql
           constellation_full_name: Aquila
       constellation_name_genitive: Aquilae
              constellation_number: 22
             right_ascension_hours: 19
           right_ascension_minutes: 6
           right_ascension_seconds: 15.6
     right_ascension_decimal_hours: 19.1043
   right_ascension_decimal_degrees: 286.564
               declination_degrees: 13
               declination_minutes: 53
               declination_seconds: 3
       declination_decimal_degrees: 13.8842
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 7. row ***************************
                       common_name: Tarazed
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 50
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 7525
    approx_rank_apparent_magnitude: 118
                apparent_magnitude: 2.72
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.03
         absolute_magnitude_varies: 0
        constellation_abbreviation: Aql
           constellation_full_name: Aquila
       constellation_name_genitive: Aquilae
              constellation_number: 22
             right_ascension_hours: 19
           right_ascension_minutes: 47
           right_ascension_seconds: 8.3
     right_ascension_decimal_hours: 19.7856
   right_ascension_decimal_degrees: 296.784
               declination_degrees: 10
               declination_minutes: 39
               declination_seconds: 3
       declination_decimal_degrees: 10.6508
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 8. row ***************************
                       common_name: Altair
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 53
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 7557
    approx_rank_apparent_magnitude: 12
                apparent_magnitude: 0.77
         apparent_magnitude_varies: 0
                absolute_magnitude: 2.21
         absolute_magnitude_varies: 0
        constellation_abbreviation: Aql
           constellation_full_name: Aquila
       constellation_name_genitive: Aquilae
              constellation_number: 22
             right_ascension_hours: 19
           right_ascension_minutes: 51
           right_ascension_seconds: 41.1
     right_ascension_decimal_hours: 19.8614
   right_ascension_decimal_degrees: 297.921
               declination_degrees: 8
               declination_minutes: 55
               declination_seconds: 0
       declination_decimal_degrees: 8.91667
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 9. row ***************************
                       common_name: $\zeta$ Ar{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 6285
    approx_rank_apparent_magnitude: 195
                apparent_magnitude: 3.12
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.11
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ara
           constellation_full_name: Ara
       constellation_name_genitive: Arae
              constellation_number: 63
             right_ascension_hours: 17
           right_ascension_minutes: 0
           right_ascension_seconds: 9.4
     right_ascension_decimal_hours: 17.0026
   right_ascension_decimal_degrees: 255.039
               declination_degrees: -56
               declination_minutes: 1
               declination_seconds: 2
       declination_decimal_degrees: -56.0172
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 10. row ***************************
                       common_name: Choo
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 6510
    approx_rank_apparent_magnitude: 142
                apparent_magnitude: 2.84
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.51
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ara
           constellation_full_name: Ara
       constellation_name_genitive: Arae
              constellation_number: 63
             right_ascension_hours: 17
           right_ascension_minutes: 33
           right_ascension_seconds: 16.4
     right_ascension_decimal_hours: 17.5546
   right_ascension_decimal_degrees: 263.319
               declination_degrees: -49
               declination_minutes: 53
               declination_seconds: 20
       declination_decimal_degrees: -49.8889
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 11. row ***************************
                       common_name: $\beta$ Ar{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 6461
    approx_rank_apparent_magnitude: 141
                apparent_magnitude: 2.84
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.49
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ara
           constellation_full_name: Ara
       constellation_name_genitive: Arae
              constellation_number: 63
             right_ascension_hours: 17
           right_ascension_minutes: 26
           right_ascension_seconds: 50.5
     right_ascension_decimal_hours: 17.4474
   right_ascension_decimal_degrees: 261.711
               declination_degrees: -55
               declination_minutes: 32
               declination_seconds: 43
       declination_decimal_degrees: -55.5453
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 12. row ***************************
                       common_name: Sheratan
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 6
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 553
    approx_rank_apparent_magnitude: 104
                apparent_magnitude: 2.64
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.33
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ari
           constellation_full_name: Aries
       constellation_name_genitive: Arietis
              constellation_number: 39
             right_ascension_hours: 1
           right_ascension_minutes: 55
           right_ascension_seconds: 40
     right_ascension_decimal_hours: 1.92778
   right_ascension_decimal_degrees: 28.9167
               declination_degrees: 20
               declination_minutes: 53
               declination_seconds: 5
       declination_decimal_degrees: 20.8847
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 13. row ***************************
                       common_name: Hamal
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 13
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 617
    approx_rank_apparent_magnitude: 50
                apparent_magnitude: 2.01
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.48
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ari
           constellation_full_name: Aries
       constellation_name_genitive: Arietis
              constellation_number: 39
             right_ascension_hours: 2
           right_ascension_minutes: 8
           right_ascension_seconds: 13.2
     right_ascension_decimal_hours: 2.137
   right_ascension_decimal_degrees: 32.055
               declination_degrees: 23
               declination_minutes: 32
               declination_seconds: 5
       declination_decimal_degrees: 23.5347
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 14. row ***************************
                       common_name: Capella
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 13
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 1708
    approx_rank_apparent_magnitude: 6
                apparent_magnitude: 0.07
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.49
         absolute_magnitude_varies: 0
        constellation_abbreviation: Aur
           constellation_full_name: Auriga
       constellation_name_genitive: Aurigae
              constellation_number: 21
             right_ascension_hours: 5
           right_ascension_minutes: 18
           right_ascension_seconds: 3.5
     right_ascension_decimal_hours: 5.30097
   right_ascension_decimal_degrees: 79.5145
               declination_degrees: 46
               declination_minutes: 0
               declination_seconds: 5
       declination_decimal_degrees: 46.0014
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 15. row ***************************
                       common_name: Menkalinan
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 34
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 2088
    approx_rank_apparent_magnitude: 41
                apparent_magnitude: 1.9
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.1
         absolute_magnitude_varies: 0
        constellation_abbreviation: Aur
           constellation_full_name: Auriga
       constellation_name_genitive: Aurigae
              constellation_number: 21
             right_ascension_hours: 6
           right_ascension_minutes: 0
           right_ascension_seconds: 53.2
     right_ascension_decimal_hours: 6.01478
   right_ascension_decimal_degrees: 90.2217
               declination_degrees: 44
               declination_minutes: 56
               declination_seconds: 5
       declination_decimal_degrees: 44.9347
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 16. row ***************************
                       common_name: $\theta$ Aurig{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 37
    bayer_designation_greek_letter: theta
bayer_designation_greek_letter_tex: $\theta$
       bayer_designation_extension: 
                      bs_hr_number: 2095
    approx_rank_apparent_magnitude: 107
                apparent_magnitude: 2.65
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.98
         absolute_magnitude_varies: 0
        constellation_abbreviation: Aur
           constellation_full_name: Auriga
       constellation_name_genitive: Aurigae
              constellation_number: 21
             right_ascension_hours: 6
           right_ascension_minutes: 0
           right_ascension_seconds: 59
     right_ascension_decimal_hours: 6.01639
   right_ascension_decimal_degrees: 90.2458
               declination_degrees: 37
               declination_minutes: 12
               declination_seconds: 4
       declination_decimal_degrees: 37.2011
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 17. row ***************************
                       common_name: Almaaz
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 7
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 1605
    approx_rank_apparent_magnitude: 181
                apparent_magnitude: 3.03
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.95
         absolute_magnitude_varies: 0
        constellation_abbreviation: Aur
           constellation_full_name: Auriga
       constellation_name_genitive: Aurigae
              constellation_number: 21
             right_ascension_hours: 5
           right_ascension_minutes: 3
           right_ascension_seconds: 18
     right_ascension_decimal_hours: 5.055
   right_ascension_decimal_degrees: 75.825
               declination_degrees: 43
               declination_minutes: 50
               declination_seconds: 5
       declination_decimal_degrees: 43.8347
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 1
                             notes: 
*************************** 18. row ***************************
                       common_name: Hassaleh
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 3
    bayer_designation_greek_letter: iota
bayer_designation_greek_letter_tex: $\iota$
       bayer_designation_extension: 
                      bs_hr_number: 1577
    approx_rank_apparent_magnitude: 112
                apparent_magnitude: 2.69
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.29
         absolute_magnitude_varies: 0
        constellation_abbreviation: Aur
           constellation_full_name: Auriga
       constellation_name_genitive: Aurigae
              constellation_number: 21
             right_ascension_hours: 4
           right_ascension_minutes: 58
           right_ascension_seconds: 12.1
     right_ascension_decimal_hours: 4.97003
   right_ascension_decimal_degrees: 74.5504
               declination_degrees: 33
               declination_minutes: 11
               declination_seconds: 3
       declination_decimal_degrees: 33.1842
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 19. row ***************************
                       common_name: Izar
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 36
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 5506
    approx_rank_apparent_magnitude: 81
                apparent_magnitude: 2.35
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.69
         absolute_magnitude_varies: 0
        constellation_abbreviation: Boo
           constellation_full_name: Bo@otes
       constellation_name_genitive: Bo@otis
              constellation_number: 13
             right_ascension_hours: 14
           right_ascension_minutes: 45
           right_ascension_seconds: 47.7
     right_ascension_decimal_hours: 14.7633
   right_ascension_decimal_degrees: 221.449
               declination_degrees: 26
               declination_minutes: 59
               declination_seconds: 4
       declination_decimal_degrees: 26.9844
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 20. row ***************************
                       common_name: Muphrid
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 8
    bayer_designation_greek_letter: eta
bayer_designation_greek_letter_tex: $\eta$
       bayer_designation_extension: 
                      bs_hr_number: 5235
    approx_rank_apparent_magnitude: 110
                apparent_magnitude: 2.68
         apparent_magnitude_varies: 0
                absolute_magnitude: 2.41
         absolute_magnitude_varies: 0
        constellation_abbreviation: Boo
           constellation_full_name: Bo@otes
       constellation_name_genitive: Bo@otis
              constellation_number: 13
             right_ascension_hours: 13
           right_ascension_minutes: 55
           right_ascension_seconds: 33.9
     right_ascension_decimal_hours: 13.9261
   right_ascension_decimal_degrees: 208.891
               declination_degrees: 18
               declination_minutes: 18
               declination_seconds: 2
       declination_decimal_degrees: 18.3006
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 21. row ***************************
                       common_name: Arcturus
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 16
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 5340
    approx_rank_apparent_magnitude: 4
                apparent_magnitude: -0.05
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.31
         absolute_magnitude_varies: 0
        constellation_abbreviation: Boo
           constellation_full_name: Bo@otes
       constellation_name_genitive: Bo@otis
              constellation_number: 13
             right_ascension_hours: 14
           right_ascension_minutes: 16
           right_ascension_seconds: 30.3
     right_ascension_decimal_hours: 14.2751
   right_ascension_decimal_degrees: 214.126
               declination_degrees: 19
               declination_minutes: 5
               declination_seconds: 1
       declination_decimal_degrees: 19.0836
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 22. row ***************************
                       common_name: Seginus
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 27
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 5435
    approx_rank_apparent_magnitude: 183
                apparent_magnitude: 3.04
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.96
         absolute_magnitude_varies: 0
        constellation_abbreviation: Boo
           constellation_full_name: Bo@otes
       constellation_name_genitive: Bo@otis
              constellation_number: 13
             right_ascension_hours: 14
           right_ascension_minutes: 32
           right_ascension_seconds: 49.3
     right_ascension_decimal_hours: 14.547
   right_ascension_decimal_degrees: 218.205
               declination_degrees: 38
               declination_minutes: 13
               declination_seconds: 4
       declination_decimal_degrees: 38.2178
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 23. row ***************************
                       common_name: Cor Caroli 2
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha^2
bayer_designation_greek_letter_tex: $\alpha^2$
       bayer_designation_extension: 
                      bs_hr_number: 4915
    approx_rank_apparent_magnitude: 130
                apparent_magnitude: 2.98
         apparent_magnitude_varies: 1
                absolute_magnitude: 0.16
         absolute_magnitude_varies: 0
        constellation_abbreviation: CVn
           constellation_full_name: Canes Venatici
       constellation_name_genitive: Canum Venaticorum
              constellation_number: 38
             right_ascension_hours: 12
           right_ascension_minutes: 56
           right_ascension_seconds: 1.66622
     right_ascension_decimal_hours: 12.9338
   right_ascension_decimal_degrees: 194.007
               declination_degrees: 38
               declination_minutes: 19
               declination_seconds: 6.1541
       declination_decimal_degrees: 38.3184
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 1
               is_eclipsing_binary: 0
                             notes: 
*************************** 24. row ***************************
                       common_name: Mirzam
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 2
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 2294
    approx_rank_apparent_magnitude: 46
                apparent_magnitude: 1.98
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.95
         absolute_magnitude_varies: 0
        constellation_abbreviation: CMa
           constellation_full_name: Canis Major
       constellation_name_genitive: Canis Majoris
              constellation_number: 43
             right_ascension_hours: 6
           right_ascension_minutes: 23
           right_ascension_seconds: 30.9
     right_ascension_decimal_hours: 6.39192
   right_ascension_decimal_degrees: 95.8788
               declination_degrees: -17
               declination_minutes: 57
               declination_seconds: 5
       declination_decimal_degrees: -17.9514
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 25. row ***************************
                       common_name: $o^2$ Canis Majoris
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 24
    bayer_designation_greek_letter: omicron^2
bayer_designation_greek_letter_tex: $\omicron^2$
       bayer_designation_extension: 
                      bs_hr_number: 2653
    approx_rank_apparent_magnitude: 179
                apparent_magnitude: 3.02
         apparent_magnitude_varies: 0
                absolute_magnitude: -6.46
         absolute_magnitude_varies: 0
        constellation_abbreviation: CMa
           constellation_full_name: Canis Major
       constellation_name_genitive: Canis Majoris
              constellation_number: 0
             right_ascension_hours: 7
           right_ascension_minutes: 3
           right_ascension_seconds: 1.47211
     right_ascension_decimal_hours: 7.05041
   right_ascension_decimal_degrees: 105.756
               declination_degrees: -23
               declination_minutes: 49
               declination_seconds: 59.8523
       declination_decimal_degrees: -23.8333
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 26. row ***************************
                       common_name: Adhara
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 21
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 2618
    approx_rank_apparent_magnitude: 22
                apparent_magnitude: 1.5
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.1
         absolute_magnitude_varies: 0
        constellation_abbreviation: CMa
           constellation_full_name: Canis Major
       constellation_name_genitive: Canis Majoris
              constellation_number: 43
             right_ascension_hours: 6
           right_ascension_minutes: 59
           right_ascension_seconds: 21.2
     right_ascension_decimal_hours: 6.98922
   right_ascension_decimal_degrees: 104.838
               declination_degrees: -28
               declination_minutes: 59
               declination_seconds: 5
       declination_decimal_degrees: -28.9847
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 27. row ***************************
                       common_name: Wezen
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 25
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 2693
    approx_rank_apparent_magnitude: 36
                apparent_magnitude: 1.83
         apparent_magnitude_varies: 0
                absolute_magnitude: -6.87
         absolute_magnitude_varies: 0
        constellation_abbreviation: CMa
           constellation_full_name: Canis Major
       constellation_name_genitive: Canis Majoris
              constellation_number: 43
             right_ascension_hours: 7
           right_ascension_minutes: 9
           right_ascension_seconds: 8.6
     right_ascension_decimal_hours: 7.15239
   right_ascension_decimal_degrees: 107.286
               declination_degrees: -26
               declination_minutes: 25
               declination_seconds: 2
       declination_decimal_degrees: -26.4172
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 28. row ***************************
                       common_name: Aludra
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 31
    bayer_designation_greek_letter: eta
bayer_designation_greek_letter_tex: $\eta$
       bayer_designation_extension: 
                      bs_hr_number: 2827
    approx_rank_apparent_magnitude: 88
                apparent_magnitude: 2.45
         apparent_magnitude_varies: 0
                absolute_magnitude: -7.51
         absolute_magnitude_varies: 0
        constellation_abbreviation: CMa
           constellation_full_name: Canis Major
       constellation_name_genitive: Canis Majoris
              constellation_number: 43
             right_ascension_hours: 7
           right_ascension_minutes: 24
           right_ascension_seconds: 49.6
     right_ascension_decimal_hours: 7.41378
   right_ascension_decimal_degrees: 111.207
               declination_degrees: -29
               declination_minutes: 20
               declination_seconds: 2
       declination_decimal_degrees: -29.3339
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 29. row ***************************
                       common_name: Phurad
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 1
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 2282
    approx_rank_apparent_magnitude: 178
                apparent_magnitude: 3.02
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.05
         absolute_magnitude_varies: 0
        constellation_abbreviation: CMa
           constellation_full_name: Canis Major
       constellation_name_genitive: Canis Majoris
              constellation_number: 43
             right_ascension_hours: 6
           right_ascension_minutes: 21
           right_ascension_seconds: 1.4
     right_ascension_decimal_hours: 6.35039
   right_ascension_decimal_degrees: 95.2559
               declination_degrees: -30
               declination_minutes: 4
               declination_seconds: 2
       declination_decimal_degrees: -30.0672
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 30. row ***************************
                       common_name: Sirius
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 9
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 2491
    approx_rank_apparent_magnitude: 1
                apparent_magnitude: -1.46
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.43
         absolute_magnitude_varies: 0
        constellation_abbreviation: CMa
           constellation_full_name: Canis Major
       constellation_name_genitive: Canis Majoris
              constellation_number: 43
             right_ascension_hours: 6
           right_ascension_minutes: 45
           right_ascension_seconds: 57.4
     right_ascension_decimal_hours: 6.76594
   right_ascension_decimal_degrees: 101.489
               declination_degrees: -16
               declination_minutes: 44
               declination_seconds: 3
       declination_decimal_degrees: -16.7342
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 31. row ***************************
                       common_name: Gomeisa
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 3
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 2845
    approx_rank_apparent_magnitude: 153
                apparent_magnitude: 2.89
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.7
         absolute_magnitude_varies: 0
        constellation_abbreviation: CMi
           constellation_full_name: Canis Minor
       constellation_name_genitive: Canis Minoris
              constellation_number: 71
             right_ascension_hours: 7
           right_ascension_minutes: 28
           right_ascension_seconds: 9.2
     right_ascension_decimal_hours: 7.46922
   right_ascension_decimal_degrees: 112.038
               declination_degrees: 8
               declination_minutes: 15
               declination_seconds: 0
       declination_decimal_degrees: 8.25
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 32. row ***************************
                       common_name: Procyon
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 10
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 2943
    approx_rank_apparent_magnitude: 8
                apparent_magnitude: 0.36
         apparent_magnitude_varies: 0
                absolute_magnitude: 2.64
         absolute_magnitude_varies: 0
        constellation_abbreviation: CMi
           constellation_full_name: Canis Minor
       constellation_name_genitive: Canis Minoris
              constellation_number: 71
             right_ascension_hours: 7
           right_ascension_minutes: 40
           right_ascension_seconds: 16.3
     right_ascension_decimal_hours: 7.67119
   right_ascension_decimal_degrees: 115.068
               declination_degrees: 5
               declination_minutes: 10
               declination_seconds: 3
       declination_decimal_degrees: 5.1675
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 33. row ***************************
                       common_name: Dabih
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 9
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 7776
    approx_rank_apparent_magnitude: 184
                apparent_magnitude: 3.05
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.07
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cap
           constellation_full_name: Capricornus
       constellation_name_genitive: Capricorni
              constellation_number: 40
             right_ascension_hours: 20
           right_ascension_minutes: 22
           right_ascension_seconds: 2.9
     right_ascension_decimal_hours: 20.3675
   right_ascension_decimal_degrees: 305.513
               declination_degrees: -14
               declination_minutes: 43
               declination_seconds: 1
       declination_decimal_degrees: -14.7169
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 34. row ***************************
                       common_name: Deneb Algedi
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 49
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 8322
    approx_rank_apparent_magnitude: 145
                apparent_magnitude: 2.85
         apparent_magnitude_varies: 0
                absolute_magnitude: 2.49
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cap
           constellation_full_name: Capricornus
       constellation_name_genitive: Capricorni
              constellation_number: 40
             right_ascension_hours: 21
           right_ascension_minutes: 48
           right_ascension_seconds: 3.6
     right_ascension_decimal_hours: 21.801
   right_ascension_decimal_degrees: 327.015
               declination_degrees: -16
               declination_minutes: 2
               declination_seconds: 3
       declination_decimal_degrees: -16.0342
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 1
                             notes: 
*************************** 35. row ***************************
                       common_name: Aspidiske
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: iota
bayer_designation_greek_letter_tex: $\iota$
       bayer_designation_extension: 
                      bs_hr_number: 3699
    approx_rank_apparent_magnitude: 66
                apparent_magnitude: 2.21
         apparent_magnitude_varies: 1
                absolute_magnitude: -4.42
         absolute_magnitude_varies: 0
        constellation_abbreviation: Car
           constellation_full_name: Carina
       constellation_name_genitive: Carinae
              constellation_number: 34
             right_ascension_hours: 9
           right_ascension_minutes: 17
           right_ascension_seconds: 35.1
     right_ascension_decimal_hours: 9.29308
   right_ascension_decimal_degrees: 139.396
               declination_degrees: -59
               declination_minutes: 21
               declination_seconds: 12
       declination_decimal_degrees: -59.3533
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 36. row ***************************
                       common_name: Canopus
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 2326
    approx_rank_apparent_magnitude: 2
                apparent_magnitude: -0.73
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.64
         absolute_magnitude_varies: 0
        constellation_abbreviation: Car
           constellation_full_name: Carina
       constellation_name_genitive: Carinae
              constellation_number: 34
             right_ascension_hours: 6
           right_ascension_minutes: 24
           right_ascension_seconds: 21.8
     right_ascension_decimal_hours: 6.40606
   right_ascension_decimal_degrees: 96.0909
               declination_degrees: -52
               declination_minutes: 42
               declination_seconds: 23
       declination_decimal_degrees: -52.7064
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 37. row ***************************
                       common_name: $\upsilon$ Carin{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: upsilon
bayer_designation_greek_letter_tex: $\upsilon$
       bayer_designation_extension: 
                      bs_hr_number: 3890
    approx_rank_apparent_magnitude: 160
                apparent_magnitude: 2.92
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.56
         absolute_magnitude_varies: 0
        constellation_abbreviation: Car
           constellation_full_name: Carina
       constellation_name_genitive: Carinae
              constellation_number: 34
             right_ascension_hours: 9
           right_ascension_minutes: 47
           right_ascension_seconds: 33.8
     right_ascension_decimal_hours: 9.79272
   right_ascension_decimal_degrees: 146.891
               declination_degrees: -65
               declination_minutes: 9
               declination_seconds: 29
       declination_decimal_degrees: -65.1581
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 38. row ***************************
                       common_name: $\theta$ Carin{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: theta
bayer_designation_greek_letter_tex: $\theta$
       bayer_designation_extension: 
                      bs_hr_number: 4199
    approx_rank_apparent_magnitude: 121
                apparent_magnitude: 2.74
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.91
         absolute_magnitude_varies: 0
        constellation_abbreviation: Car
           constellation_full_name: Carina
       constellation_name_genitive: Carinae
              constellation_number: 34
             right_ascension_hours: 10
           right_ascension_minutes: 43
           right_ascension_seconds: 37.3
     right_ascension_decimal_hours: 10.727
   right_ascension_decimal_degrees: 160.905
               declination_degrees: -64
               declination_minutes: 29
               declination_seconds: 30
       declination_decimal_degrees: -64.4917
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 39. row ***************************
                       common_name: Avior
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 3307
    approx_rank_apparent_magnitude: 40
                apparent_magnitude: 1.87
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.57
         absolute_magnitude_varies: 0
        constellation_abbreviation: Car
           constellation_full_name: Carina
       constellation_name_genitive: Carinae
              constellation_number: 34
             right_ascension_hours: 8
           right_ascension_minutes: 22
           right_ascension_seconds: 53.5
     right_ascension_decimal_hours: 8.38153
   right_ascension_decimal_degrees: 125.723
               declination_degrees: -59
               declination_minutes: 34
               declination_seconds: 10
       declination_decimal_degrees: -59.5694
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 40. row ***************************
                       common_name: Miaplacidus
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 3685
    approx_rank_apparent_magnitude: 28
                apparent_magnitude: 1.67
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.99
         absolute_magnitude_varies: 0
        constellation_abbreviation: Car
           constellation_full_name: Carina
       constellation_name_genitive: Carinae
              constellation_number: 34
             right_ascension_hours: 9
           right_ascension_minutes: 13
           right_ascension_seconds: 23.7
     right_ascension_decimal_hours: 9.22325
   right_ascension_decimal_degrees: 138.349
               declination_degrees: -69
               declination_minutes: 47
               declination_seconds: 37
       declination_decimal_degrees: -69.7936
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 41. row ***************************
                       common_name: Caph
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 11
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 21
    approx_rank_apparent_magnitude: 74
                apparent_magnitude: 2.28
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.17
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cas
           constellation_full_name: Cassiopeia
       constellation_name_genitive: Cassiopeiae
              constellation_number: 25
             right_ascension_hours: 0
           right_ascension_minutes: 10
           right_ascension_seconds: 10.6
     right_ascension_decimal_hours: 0.169611
   right_ascension_decimal_degrees: 2.54417
               declination_degrees: 59
               declination_minutes: 15
               declination_seconds: 0
       declination_decimal_degrees: 59.25
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 42. row ***************************
                       common_name: Cih
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 27
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 264
    approx_rank_apparent_magnitude: 63
                apparent_magnitude: 2.15
         apparent_magnitude_varies: 1
                absolute_magnitude: -4.22
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cas
           constellation_full_name: Cassiopeia
       constellation_name_genitive: Cassiopeiae
              constellation_number: 25
             right_ascension_hours: 0
           right_ascension_minutes: 57
           right_ascension_seconds: 50.4
     right_ascension_decimal_hours: 0.964
   right_ascension_decimal_degrees: 14.46
               declination_degrees: 60
               declination_minutes: 48
               declination_seconds: 5
       declination_decimal_degrees: 60.8014
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 43. row ***************************
                       common_name: Schedar
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 18
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 168
    approx_rank_apparent_magnitude: 71
                apparent_magnitude: 2.24
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.99
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cas
           constellation_full_name: Cassiopeia
       constellation_name_genitive: Cassiopeiae
              constellation_number: 25
             right_ascension_hours: 0
           right_ascension_minutes: 41
           right_ascension_seconds: 34.1
     right_ascension_decimal_hours: 0.692806
   right_ascension_decimal_degrees: 10.3921
               declination_degrees: 56
               declination_minutes: 38
               declination_seconds: 1
       declination_decimal_degrees: 56.6336
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 44. row ***************************
                       common_name: Ruchbah
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 37
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 403
    approx_rank_apparent_magnitude: 109
                apparent_magnitude: 2.66
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.24
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cas
           constellation_full_name: Cassiopeia
       constellation_name_genitive: Cassiopeiae
              constellation_number: 25
             right_ascension_hours: 1
           right_ascension_minutes: 27
           right_ascension_seconds: 2.5
     right_ascension_decimal_hours: 1.45069
   right_ascension_decimal_degrees: 21.7604
               declination_degrees: 60
               declination_minutes: 19
               declination_seconds: 5
       declination_decimal_degrees: 60.3181
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 45. row ***************************
                       common_name: Muhlifain
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 4819
    approx_rank_apparent_magnitude: 64
                apparent_magnitude: 2.2
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.81
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 12
           right_ascension_minutes: 42
           right_ascension_seconds: 32.8
     right_ascension_decimal_hours: 12.7091
   right_ascension_decimal_degrees: 190.636
               declination_degrees: -49
               declination_minutes: 3
               declination_seconds: 40
       declination_decimal_degrees: -49.0611
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 46. row ***************************
                       common_name: $\iota$ Centauri
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: iota
bayer_designation_greek_letter_tex: $\iota$
       bayer_designation_extension: 
                      bs_hr_number: 5028
    approx_rank_apparent_magnitude: 124
                apparent_magnitude: 2.75
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.48
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 13
           right_ascension_minutes: 21
           right_ascension_seconds: 38.6
     right_ascension_decimal_hours: 13.3607
   right_ascension_decimal_degrees: 200.41
               declination_degrees: -36
               declination_minutes: 48
               declination_seconds: 34
       declination_decimal_degrees: -36.8094
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 47. row ***************************
                       common_name: $\epsilon$ Centauri
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 5132
    approx_rank_apparent_magnitude: 75
                apparent_magnitude: 2.29
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.02
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 13
           right_ascension_minutes: 41
           right_ascension_seconds: 4.3
     right_ascension_decimal_hours: 13.6845
   right_ascension_decimal_degrees: 205.268
               declination_degrees: -53
               declination_minutes: 33
               declination_seconds: 35
       declination_decimal_degrees: -53.5597
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 48. row ***************************
                       common_name: $\zeta$ Centauri
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 5231
    approx_rank_apparent_magnitude: 95
                apparent_magnitude: 2.55
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.81
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 13
           right_ascension_minutes: 56
           right_ascension_seconds: 42.2
     right_ascension_decimal_hours: 13.9451
   right_ascension_decimal_degrees: 209.176
               declination_degrees: -47
               declination_minutes: 22
               declination_seconds: 43
       declination_decimal_degrees: -47.3786
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 49. row ***************************
                       common_name: $\alpha$ Centauri
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: AB
                      bs_hr_number: 0
    approx_rank_apparent_magnitude: 3
                apparent_magnitude: -0.29
         apparent_magnitude_varies: 0
                absolute_magnitude: 4.06
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 14
           right_ascension_minutes: 39
           right_ascension_seconds: 35.0631
     right_ascension_decimal_hours: 14.6597
   right_ascension_decimal_degrees: 219.896
               declination_degrees: -60
               declination_minutes: 50
               declination_seconds: 15.0992
       declination_decimal_degrees: -60.8375
                         is_binary: 0
                       is_multiple: 3
               is_binary_component: 1
               is_eclipsing_binary: 0
                             notes: alpha Centauri is a triple star system.  The two brightest stars, A and B, are a binary component of the system.  For purposes of plotting on a spherical biangle for a paper model of a celestial sphere, this entry uses the celestial coordinates of the brighter star, alpha Centauri A.
*************************** 50. row ***************************
                       common_name: Hadar
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 5267
    approx_rank_apparent_magnitude: 11
                apparent_magnitude: 0.61
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.42
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 14
           right_ascension_minutes: 5
           right_ascension_seconds: 8.7
     right_ascension_decimal_hours: 14.0857
   right_ascension_decimal_degrees: 211.286
               declination_degrees: -60
               declination_minutes: 27
               declination_seconds: 41
       declination_decimal_degrees: -60.4614
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 51. row ***************************
                       common_name: Menkent
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 5
    bayer_designation_greek_letter: theta
bayer_designation_greek_letter_tex: $\theta$
       bayer_designation_extension: 
                      bs_hr_number: 5288
    approx_rank_apparent_magnitude: 53
                apparent_magnitude: 2.06
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.7
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 14
           right_ascension_minutes: 7
           right_ascension_seconds: 46.7
     right_ascension_decimal_hours: 14.1296
   right_ascension_decimal_degrees: 211.944
               declination_degrees: -36
               declination_minutes: 27
               declination_seconds: 3
       declination_decimal_degrees: -36.4508
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 52. row ***************************
                       common_name: $\eta$ Centauri
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: eta
bayer_designation_greek_letter_tex: $\eta$
       bayer_designation_extension: 
                      bs_hr_number: 5440
    approx_rank_apparent_magnitude: 79
                apparent_magnitude: 2.33
         apparent_magnitude_varies: 1
                absolute_magnitude: -2.55
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 14
           right_ascension_minutes: 36
           right_ascension_seconds: 41.4
     right_ascension_decimal_hours: 14.6115
   right_ascension_decimal_degrees: 219.173
               declination_degrees: -42
               declination_minutes: 14
               declination_seconds: 17
       declination_decimal_degrees: -42.2381
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 53. row ***************************
                       common_name: $\lambda$ Centauri
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: lambda
bayer_designation_greek_letter_tex: $\lambda$
       bayer_designation_extension: 
                      bs_hr_number: 4467
    approx_rank_apparent_magnitude: 191
                apparent_magnitude: 3.11
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.39
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 11
           right_ascension_minutes: 36
           right_ascension_seconds: 38.6
     right_ascension_decimal_hours: 11.6107
   right_ascension_decimal_degrees: 174.16
               declination_degrees: -63
               declination_minutes: 7
               declination_seconds: 20
       declination_decimal_degrees: -63.1222
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 54. row ***************************
                       common_name: Ke Kwan
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: kappa
bayer_designation_greek_letter_tex: $\kappa$
       bayer_designation_extension: 
                      bs_hr_number: 5576
    approx_rank_apparent_magnitude: 197
                apparent_magnitude: 3.13
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.96
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 15
           right_ascension_minutes: 0
           right_ascension_seconds: 22.3
     right_ascension_decimal_hours: 15.0062
   right_ascension_decimal_degrees: 225.093
               declination_degrees: -42
               declination_minutes: 10
               declination_seconds: 38
       declination_decimal_degrees: -42.1772
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 55. row ***************************
                       common_name: $\delta$ Centauri
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 4621
    approx_rank_apparent_magnitude: 99
                apparent_magnitude: 2.58
         apparent_magnitude_varies: 1
                absolute_magnitude: -2.84
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cen
           constellation_full_name: Centaurus
       constellation_name_genitive: Centauri
              constellation_number: 9
             right_ascension_hours: 12
           right_ascension_minutes: 9
           right_ascension_seconds: 19.5
     right_ascension_decimal_hours: 12.1554
   right_ascension_decimal_degrees: 182.331
               declination_degrees: -50
               declination_minutes: 49
               declination_seconds: 31
       declination_decimal_degrees: -50.8253
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 56. row ***************************
                       common_name: Alderamin
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 5
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 8162
    approx_rank_apparent_magnitude: 89
                apparent_magnitude: 2.45
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.58
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cep
           constellation_full_name: Cepheus
       constellation_name_genitive: Cephei
              constellation_number: 27
             right_ascension_hours: 21
           right_ascension_minutes: 19
           right_ascension_seconds: 1.2
     right_ascension_decimal_hours: 21.317
   right_ascension_decimal_degrees: 319.755
               declination_degrees: 62
               declination_minutes: 39
               declination_seconds: 5
       declination_decimal_degrees: 62.6514
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 57. row ***************************
                       common_name: Diphda
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 16
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 188
    approx_rank_apparent_magnitude: 51
                apparent_magnitude: 2.04
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.3
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cet
           constellation_full_name: Cetus
       constellation_name_genitive: Ceti
              constellation_number: 4
             right_ascension_hours: 0
           right_ascension_minutes: 44
           right_ascension_seconds: 31
     right_ascension_decimal_hours: 0.741944
   right_ascension_decimal_degrees: 11.1292
               declination_degrees: -17
               declination_minutes: 53
               declination_seconds: 0
       declination_decimal_degrees: -17.8833
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 58. row ***************************
                       common_name: Menkar
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 92
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 911
    approx_rank_apparent_magnitude: 93
                apparent_magnitude: 2.54
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.61
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cet
           constellation_full_name: Cetus
       constellation_name_genitive: Ceti
              constellation_number: 4
             right_ascension_hours: 3
           right_ascension_minutes: 3
           right_ascension_seconds: 14.9
     right_ascension_decimal_hours: 3.05414
   right_ascension_decimal_degrees: 45.8121
               declination_degrees: 4
               declination_minutes: 9
               declination_seconds: 4
       declination_decimal_degrees: 4.15111
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 59. row ***************************
                       common_name: Phact
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 1956
    approx_rank_apparent_magnitude: 106
                apparent_magnitude: 2.65
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.93
         absolute_magnitude_varies: 0
        constellation_abbreviation: Col
           constellation_full_name: Columba
       constellation_name_genitive: Columbae
              constellation_number: 54
             right_ascension_hours: 5
           right_ascension_minutes: 40
           right_ascension_seconds: 19.2
     right_ascension_decimal_hours: 5.672
   right_ascension_decimal_degrees: 85.08
               declination_degrees: -34
               declination_minutes: 3
               declination_seconds: 55
       declination_decimal_degrees: -34.0653
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 60. row ***************************
                       common_name: Wazn
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 2040
    approx_rank_apparent_magnitude: 193
                apparent_magnitude: 3.12
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.02
         absolute_magnitude_varies: 0
        constellation_abbreviation: Col
           constellation_full_name: Columba
       constellation_name_genitive: Columbae
              constellation_number: 54
             right_ascension_hours: 5
           right_ascension_minutes: 51
           right_ascension_seconds: 36.8
     right_ascension_decimal_hours: 5.86022
   right_ascension_decimal_degrees: 87.9033
               declination_degrees: -35
               declination_minutes: 45
               declination_seconds: 44
       declination_decimal_degrees: -35.7622
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 61. row ***************************
                       common_name: Alphecca
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 5
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 5793
    approx_rank_apparent_magnitude: 67
                apparent_magnitude: 2.22
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.42
         absolute_magnitude_varies: 0
        constellation_abbreviation: CrB
           constellation_full_name: Corona Borealis
       constellation_name_genitive: Coronae Borealis
              constellation_number: 73
             right_ascension_hours: 15
           right_ascension_minutes: 35
           right_ascension_seconds: 28.3
     right_ascension_decimal_hours: 15.5912
   right_ascension_decimal_degrees: 233.868
               declination_degrees: 26
               declination_minutes: 39
               declination_seconds: 1
       declination_decimal_degrees: 26.6503
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 1
                             notes: 
*************************** 62. row ***************************
                       common_name: Minkar
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 2
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 4630
    approx_rank_apparent_magnitude: 180
                apparent_magnitude: 3.02
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.82
         absolute_magnitude_varies: 0
        constellation_abbreviation: Crv
           constellation_full_name: Corvus
       constellation_name_genitive: Corvi
              constellation_number: 70
             right_ascension_hours: 12
           right_ascension_minutes: 11
           right_ascension_seconds: 4.7
     right_ascension_decimal_hours: 12.1846
   right_ascension_decimal_degrees: 182.769
               declination_degrees: -22
               declination_minutes: 43
               declination_seconds: 2
       declination_decimal_degrees: -22.7172
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 63. row ***************************
                       common_name: Gienah Ghurab
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 4
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 4662
    approx_rank_apparent_magnitude: 100
                apparent_magnitude: 2.58
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.94
         absolute_magnitude_varies: 0
        constellation_abbreviation: Crv
           constellation_full_name: Corvus
       constellation_name_genitive: Corvi
              constellation_number: 70
             right_ascension_hours: 12
           right_ascension_minutes: 16
           right_ascension_seconds: 45.6
     right_ascension_decimal_hours: 12.2793
   right_ascension_decimal_degrees: 184.189
               declination_degrees: -17
               declination_minutes: 38
               declination_seconds: 4
       declination_decimal_degrees: -17.6344
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 64. row ***************************
                       common_name: Algorel
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 7
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 4757
    approx_rank_apparent_magnitude: 163
                apparent_magnitude: 2.94
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.79
         absolute_magnitude_varies: 0
        constellation_abbreviation: Crv
           constellation_full_name: Corvus
       constellation_name_genitive: Corvi
              constellation_number: 70
             right_ascension_hours: 12
           right_ascension_minutes: 30
           right_ascension_seconds: 49.4
     right_ascension_decimal_hours: 12.5137
   right_ascension_decimal_degrees: 187.705
               declination_degrees: -16
               declination_minutes: 37
               declination_seconds: 0
       declination_decimal_degrees: -16.6167
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 65. row ***************************
                       common_name: Kraz
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 9
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 4786
    approx_rank_apparent_magnitude: 108
                apparent_magnitude: 2.65
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.51
         absolute_magnitude_varies: 0
        constellation_abbreviation: Crv
           constellation_full_name: Corvus
       constellation_name_genitive: Corvi
              constellation_number: 70
             right_ascension_hours: 12
           right_ascension_minutes: 35
           right_ascension_seconds: 21.7
     right_ascension_decimal_hours: 12.5894
   right_ascension_decimal_degrees: 188.841
               declination_degrees: -23
               declination_minutes: 29
               declination_seconds: 5
       declination_decimal_degrees: -23.4847
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 66. row ***************************
                       common_name: $\delta$ Crucis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 4656
    approx_rank_apparent_magnitude: 128
                apparent_magnitude: 2.79
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.45
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cru
           constellation_full_name: Crux
       constellation_name_genitive: Crucis
              constellation_number: 88
             right_ascension_hours: 12
           right_ascension_minutes: 16
           right_ascension_seconds: 8.3
     right_ascension_decimal_hours: 12.269
   right_ascension_decimal_degrees: 184.035
               declination_degrees: -58
               declination_minutes: 51
               declination_seconds: 6
       declination_decimal_degrees: -58.8517
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 67. row ***************************
                       common_name: Gacrux
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 4763
    approx_rank_apparent_magnitude: 25
                apparent_magnitude: 1.63
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.52
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cru
           constellation_full_name: Crux
       constellation_name_genitive: Crucis
              constellation_number: 88
             right_ascension_hours: 12
           right_ascension_minutes: 32
           right_ascension_seconds: 12.2
     right_ascension_decimal_hours: 12.5367
   right_ascension_decimal_degrees: 188.051
               declination_degrees: -57
               declination_minutes: 13
               declination_seconds: 0
       declination_decimal_degrees: -57.2167
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 68. row ***************************
                       common_name: Acrux
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 0
    approx_rank_apparent_magnitude: 13
                apparent_magnitude: 0.79
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.17
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cru
           constellation_full_name: Crux
       constellation_name_genitive: Crucis
              constellation_number: 88
             right_ascension_hours: 12
           right_ascension_minutes: 26
           right_ascension_seconds: 35.8952
     right_ascension_decimal_hours: 12.4433
   right_ascension_decimal_degrees: 186.65
               declination_degrees: -63
               declination_minutes: 5
               declination_seconds: 56.734
       declination_decimal_degrees: -63.0991
                         is_binary: 0
                       is_multiple: 6
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 69. row ***************************
                       common_name: Mimosa
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 4853
    approx_rank_apparent_magnitude: 20
                apparent_magnitude: 1.26
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.91
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cru
           constellation_full_name: Crux
       constellation_name_genitive: Crucis
              constellation_number: 88
             right_ascension_hours: 12
           right_ascension_minutes: 48
           right_ascension_seconds: 48.9
     right_ascension_decimal_hours: 12.8136
   right_ascension_decimal_degrees: 192.204
               declination_degrees: -59
               declination_minutes: 47
               declination_seconds: 22
       declination_decimal_degrees: -59.7894
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 70. row ***************************
                       common_name: Albireo
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 6
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 7417
    approx_rank_apparent_magnitude: 157
                apparent_magnitude: 2.9
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.31
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cyg
           constellation_full_name: Cygnus
       constellation_name_genitive: Cygni
              constellation_number: 16
             right_ascension_hours: 19
           right_ascension_minutes: 31
           right_ascension_seconds: 28.1
     right_ascension_decimal_hours: 19.5245
   right_ascension_decimal_degrees: 292.867
               declination_degrees: 27
               declination_minutes: 59
               declination_seconds: 5
       declination_decimal_degrees: 27.9847
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 71. row ***************************
                       common_name: $\delta$ Cygni
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 18
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 7528
    approx_rank_apparent_magnitude: 147
                apparent_magnitude: 2.86
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.74
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cyg
           constellation_full_name: Cygnus
       constellation_name_genitive: Cygni
              constellation_number: 16
             right_ascension_hours: 19
           right_ascension_minutes: 45
           right_ascension_seconds: 33.2
     right_ascension_decimal_hours: 19.7592
   right_ascension_decimal_degrees: 296.388
               declination_degrees: 45
               declination_minutes: 10
               declination_seconds: 3
       declination_decimal_degrees: 45.1675
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 72. row ***************************
                       common_name: Sadr
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 37
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 7796
    approx_rank_apparent_magnitude: 70
                apparent_magnitude: 2.23
         apparent_magnitude_varies: 0
                absolute_magnitude: -6.12
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cyg
           constellation_full_name: Cygnus
       constellation_name_genitive: Cygni
              constellation_number: 16
             right_ascension_hours: 20
           right_ascension_minutes: 22
           right_ascension_seconds: 53.6
     right_ascension_decimal_hours: 20.3816
   right_ascension_decimal_degrees: 305.724
               declination_degrees: 40
               declination_minutes: 19
               declination_seconds: 0
       declination_decimal_degrees: 40.3167
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 73. row ***************************
                       common_name: Deneb
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 50
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 7924
    approx_rank_apparent_magnitude: 19
                apparent_magnitude: 1.24
         apparent_magnitude_varies: 0
                absolute_magnitude: -8.74
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cyg
           constellation_full_name: Cygnus
       constellation_name_genitive: Cygni
              constellation_number: 16
             right_ascension_hours: 20
           right_ascension_minutes: 42
           right_ascension_seconds: 3.8
     right_ascension_decimal_hours: 20.7011
   right_ascension_decimal_degrees: 310.516
               declination_degrees: 45
               declination_minutes: 20
               declination_seconds: 5
       declination_decimal_degrees: 45.3347
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 74. row ***************************
                       common_name: Gienah
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 53
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 7949
    approx_rank_apparent_magnitude: 91
                apparent_magnitude: 2.48
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.76
         absolute_magnitude_varies: 0
        constellation_abbreviation: Cyg
           constellation_full_name: Cygnus
       constellation_name_genitive: Cygni
              constellation_number: 16
             right_ascension_hours: 20
           right_ascension_minutes: 46
           right_ascension_seconds: 57.6
     right_ascension_decimal_hours: 20.7827
   right_ascension_decimal_degrees: 311.74
               declination_degrees: 34
               declination_minutes: 2
               declination_seconds: 2
       declination_decimal_degrees: 34.0339
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 75. row ***************************
                       common_name: Eltanin
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 33
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 6705
    approx_rank_apparent_magnitude: 72
                apparent_magnitude: 2.24
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.04
         absolute_magnitude_varies: 0
        constellation_abbreviation: Dra
           constellation_full_name: Draco
       constellation_name_genitive: Draconis
              constellation_number: 8
             right_ascension_hours: 17
           right_ascension_minutes: 57
           right_ascension_seconds: 2.2
     right_ascension_decimal_hours: 17.9506
   right_ascension_decimal_degrees: 269.259
               declination_degrees: 51
               declination_minutes: 29
               declination_seconds: 1
       declination_decimal_degrees: 51.4836
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 76. row ***************************
                       common_name: Rastaban
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 23
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 6536
    approx_rank_apparent_magnitude: 129
                apparent_magnitude: 2.79
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.43
         absolute_magnitude_varies: 0
        constellation_abbreviation: Dra
           constellation_full_name: Draco
       constellation_name_genitive: Draconis
              constellation_number: 8
             right_ascension_hours: 17
           right_ascension_minutes: 30
           right_ascension_seconds: 51.1
     right_ascension_decimal_hours: 17.5142
   right_ascension_decimal_degrees: 262.713
               declination_degrees: 52
               declination_minutes: 17
               declination_seconds: 1
       declination_decimal_degrees: 52.2836
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 77. row ***************************
                       common_name: Tais
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 57
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 7310
    approx_rank_apparent_magnitude: 187
                apparent_magnitude: 3.07
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.63
         absolute_magnitude_varies: 0
        constellation_abbreviation: Dra
           constellation_full_name: Draco
       constellation_name_genitive: Draconis
              constellation_number: 8
             right_ascension_hours: 19
           right_ascension_minutes: 12
           right_ascension_seconds: 33.3
     right_ascension_decimal_hours: 19.2092
   right_ascension_decimal_degrees: 288.138
               declination_degrees: 67
               declination_minutes: 41
               declination_seconds: 3
       declination_decimal_degrees: 67.6842
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 78. row ***************************
                       common_name: Aldhibain
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 14
    bayer_designation_greek_letter: eta
bayer_designation_greek_letter_tex: $\eta$
       bayer_designation_extension: 
                      bs_hr_number: 6132
    approx_rank_apparent_magnitude: 120
                apparent_magnitude: 2.73
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.58
         absolute_magnitude_varies: 0
        constellation_abbreviation: Dra
           constellation_full_name: Draco
       constellation_name_genitive: Draconis
              constellation_number: 8
             right_ascension_hours: 16
           right_ascension_minutes: 24
           right_ascension_seconds: 14.7
     right_ascension_decimal_hours: 16.4041
   right_ascension_decimal_degrees: 246.062
               declination_degrees: 61
               declination_minutes: 28
               declination_seconds: 2
       declination_decimal_degrees: 61.4672
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 79. row ***************************
                       common_name: Acamar
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: theta^1
bayer_designation_greek_letter_tex: $\theta^1$
       bayer_designation_extension: 
                      bs_hr_number: 897
    approx_rank_apparent_magnitude: 151
                apparent_magnitude: 2.88
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.59
         absolute_magnitude_varies: 0
        constellation_abbreviation: Eri
           constellation_full_name: Eridanus
       constellation_name_genitive: Eridani
              constellation_number: 6
             right_ascension_hours: 2
           right_ascension_minutes: 58
           right_ascension_seconds: 15.6792
     right_ascension_decimal_hours: 2.97102
   right_ascension_decimal_degrees: 44.5653
               declination_degrees: -40
               declination_minutes: 18
               declination_seconds: 16.8457
       declination_decimal_degrees: -40.3047
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 1
               is_eclipsing_binary: 0
                             notes: Apparent magnitude and absolute magnitude may be those of the system rather than the single component theta^1 Eridani.
*************************** 80. row ***************************
                       common_name: Zaurak
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 34
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 1231
    approx_rank_apparent_magnitude: 165
                apparent_magnitude: 2.97
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.19
         absolute_magnitude_varies: 0
        constellation_abbreviation: Eri
           constellation_full_name: Eridanus
       constellation_name_genitive: Eridani
              constellation_number: 6
             right_ascension_hours: 3
           right_ascension_minutes: 58
           right_ascension_seconds: 53.6
     right_ascension_decimal_hours: 3.98156
   right_ascension_decimal_degrees: 59.7234
               declination_degrees: -13
               declination_minutes: 27
               declination_seconds: 2
       declination_decimal_degrees: -13.4506
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 81. row ***************************
                       common_name: Kursa
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 67
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 1666
    approx_rank_apparent_magnitude: 126
                apparent_magnitude: 2.78
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.6
         absolute_magnitude_varies: 0
        constellation_abbreviation: Eri
           constellation_full_name: Eridanus
       constellation_name_genitive: Eridani
              constellation_number: 6
             right_ascension_hours: 5
           right_ascension_minutes: 8
           right_ascension_seconds: 45.6
     right_ascension_decimal_hours: 5.146
   right_ascension_decimal_degrees: 77.19
               declination_degrees: -5
               declination_minutes: 3
               declination_seconds: 5
       declination_decimal_degrees: -5.05139
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 82. row ***************************
                       common_name: Achernar
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 472
    approx_rank_apparent_magnitude: 9
                apparent_magnitude: 0.45
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.77
         absolute_magnitude_varies: 0
        constellation_abbreviation: Eri
           constellation_full_name: Eridanus
       constellation_name_genitive: Eridani
              constellation_number: 6
             right_ascension_hours: 1
           right_ascension_minutes: 38
           right_ascension_seconds: 24
     right_ascension_decimal_hours: 1.64
   right_ascension_decimal_degrees: 24.6
               declination_degrees: -57
               declination_minutes: 8
               declination_seconds: 36
       declination_decimal_degrees: -57.1433
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 83. row ***************************
                       common_name: Castor
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 0
    approx_rank_apparent_magnitude: 23
                apparent_magnitude: 1.58
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.59
         absolute_magnitude_varies: 0
        constellation_abbreviation: Gem
           constellation_full_name: Gemini
       constellation_name_genitive: Geminorum
              constellation_number: 30
             right_ascension_hours: 7
           right_ascension_minutes: 34
           right_ascension_seconds: 35.863
     right_ascension_decimal_hours: 7.57663
   right_ascension_decimal_degrees: 113.649
               declination_degrees: 31
               declination_minutes: 53
               declination_seconds: 17.79
       declination_decimal_degrees: 31.8883
                         is_binary: 0
                       is_multiple: 6
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 84. row ***************************
                       common_name: Pollux
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 78
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 2990
    approx_rank_apparent_magnitude: 17
                apparent_magnitude: 1.14
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.07
         absolute_magnitude_varies: 0
        constellation_abbreviation: Gem
           constellation_full_name: Gemini
       constellation_name_genitive: Geminorum
              constellation_number: 30
             right_ascension_hours: 7
           right_ascension_minutes: 46
           right_ascension_seconds: 26.7
     right_ascension_decimal_hours: 7.77408
   right_ascension_decimal_degrees: 116.611
               declination_degrees: 27
               declination_minutes: 58
               declination_seconds: 4
       declination_decimal_degrees: 27.9678
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 85. row ***************************
                       common_name: Mebsuta
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 27
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 2473
    approx_rank_apparent_magnitude: 185
                apparent_magnitude: 3.06
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.15
         absolute_magnitude_varies: 0
        constellation_abbreviation: Gem
           constellation_full_name: Gemini
       constellation_name_genitive: Geminorum
              constellation_number: 30
             right_ascension_hours: 6
           right_ascension_minutes: 45
           right_ascension_seconds: 4.2
     right_ascension_decimal_hours: 6.75117
   right_ascension_decimal_degrees: 101.268
               declination_degrees: 25
               declination_minutes: 6
               declination_seconds: 4
       declination_decimal_degrees: 25.1011
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 86. row ***************************
                       common_name: Alhena
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 24
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 2421
    approx_rank_apparent_magnitude: 43
                apparent_magnitude: 1.93
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.6
         absolute_magnitude_varies: 0
        constellation_abbreviation: Gem
           constellation_full_name: Gemini
       constellation_name_genitive: Geminorum
              constellation_number: 30
             right_ascension_hours: 6
           right_ascension_minutes: 38
           right_ascension_seconds: 46.8
     right_ascension_decimal_hours: 6.64633
   right_ascension_decimal_degrees: 99.6949
               declination_degrees: 16
               declination_minutes: 22
               declination_seconds: 5
       declination_decimal_degrees: 16.3681
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 87. row ***************************
                       common_name: Tejat
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 13
    bayer_designation_greek_letter: mu
bayer_designation_greek_letter_tex: $\mu$
       bayer_designation_extension: 
                      bs_hr_number: 2286
    approx_rank_apparent_magnitude: 148
                apparent_magnitude: 2.87
         apparent_magnitude_varies: 1
                absolute_magnitude: -1.39
         absolute_magnitude_varies: 1
        constellation_abbreviation: Gem
           constellation_full_name: Gemini
       constellation_name_genitive: Geminorum
              constellation_number: 30
             right_ascension_hours: 6
           right_ascension_minutes: 24
           right_ascension_seconds: 4.8
     right_ascension_decimal_hours: 6.40133
   right_ascension_decimal_degrees: 96.02
               declination_degrees: 22
               declination_minutes: 30
               declination_seconds: 0
       declination_decimal_degrees: 22.5
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 88. row ***************************
                       common_name: Alnair
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 8425
    approx_rank_apparent_magnitude: 30
                apparent_magnitude: 1.74
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.72
         absolute_magnitude_varies: 0
        constellation_abbreviation: Gru
           constellation_full_name: Grus
       constellation_name_genitive: Gruis
              constellation_number: 45
             right_ascension_hours: 22
           right_ascension_minutes: 9
           right_ascension_seconds: 23.4
     right_ascension_decimal_hours: 22.1565
   right_ascension_decimal_degrees: 332.348
               declination_degrees: -46
               declination_minutes: 52
               declination_seconds: 14
       declination_decimal_degrees: -46.8706
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 89. row ***************************
                       common_name: Al Dhanab
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 8636
    approx_rank_apparent_magnitude: 58
                apparent_magnitude: 2.07
         apparent_magnitude_varies: 1
                absolute_magnitude: 1.52
         absolute_magnitude_varies: 0
        constellation_abbreviation: Gru
           constellation_full_name: Grus
       constellation_name_genitive: Gruis
              constellation_number: 45
             right_ascension_hours: 22
           right_ascension_minutes: 43
           right_ascension_seconds: 45.8
     right_ascension_decimal_hours: 22.7294
   right_ascension_decimal_degrees: 340.941
               declination_degrees: -46
               declination_minutes: 47
               declination_seconds: 14
       declination_decimal_degrees: -46.7872
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 90. row ***************************
                       common_name: $\gamma$ Gruis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 8353
    approx_rank_apparent_magnitude: 176
                apparent_magnitude: 3
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.97
         absolute_magnitude_varies: 0
        constellation_abbreviation: Gru
           constellation_full_name: Grus
       constellation_name_genitive: Gruis
              constellation_number: 45
             right_ascension_hours: 21
           right_ascension_minutes: 55
           right_ascension_seconds: 2.6
     right_ascension_decimal_hours: 21.9174
   right_ascension_decimal_degrees: 328.761
               declination_degrees: -37
               declination_minutes: 16
               declination_seconds: 37
       declination_decimal_degrees: -37.2769
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 91. row ***************************
                       common_name: Kornephoros
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 27
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 6148
    approx_rank_apparent_magnitude: 127
                apparent_magnitude: 2.78
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.5
         absolute_magnitude_varies: 0
        constellation_abbreviation: Her
           constellation_full_name: Hercules
       constellation_name_genitive: Herculis
              constellation_number: 5
             right_ascension_hours: 16
           right_ascension_minutes: 31
           right_ascension_seconds: 1
     right_ascension_decimal_hours: 16.5169
   right_ascension_decimal_degrees: 247.753
               declination_degrees: 21
               declination_minutes: 27
               declination_seconds: 0
       declination_decimal_degrees: 21.45
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 92. row ***************************
                       common_name: Rutilicus
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 40
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 6212
    approx_rank_apparent_magnitude: 133
                apparent_magnitude: 2.81
         apparent_magnitude_varies: 0
                absolute_magnitude: 2.64
         absolute_magnitude_varies: 0
        constellation_abbreviation: Her
           constellation_full_name: Hercules
       constellation_name_genitive: Herculis
              constellation_number: 5
             right_ascension_hours: 16
           right_ascension_minutes: 41
           right_ascension_seconds: 59.1
     right_ascension_decimal_hours: 16.6998
   right_ascension_decimal_degrees: 250.497
               declination_degrees: 31
               declination_minutes: 34
               declination_seconds: 1
       declination_decimal_degrees: 31.5669
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 93. row ***************************
                       common_name: $\pi$ Herculis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 67
    bayer_designation_greek_letter: pi
bayer_designation_greek_letter_tex: $\pi$
       bayer_designation_extension: 
                      bs_hr_number: 6418
    approx_rank_apparent_magnitude: 200
                apparent_magnitude: 3.16
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.1
         absolute_magnitude_varies: 0
        constellation_abbreviation: Her
           constellation_full_name: Hercules
       constellation_name_genitive: Herculis
              constellation_number: 5
             right_ascension_hours: 17
           right_ascension_minutes: 15
           right_ascension_seconds: 41.5
     right_ascension_decimal_hours: 17.2615
   right_ascension_decimal_degrees: 258.922
               declination_degrees: 36
               declination_minutes: 47
               declination_seconds: 2
       declination_decimal_degrees: 36.7839
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 94. row ***************************
                       common_name: Sarin
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 65
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 6410
    approx_rank_apparent_magnitude: 196
                apparent_magnitude: 3.12
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.21
         absolute_magnitude_varies: 0
        constellation_abbreviation: Her
           constellation_full_name: Hercules
       constellation_name_genitive: Herculis
              constellation_number: 5
             right_ascension_hours: 17
           right_ascension_minutes: 15
           right_ascension_seconds: 47.5
     right_ascension_decimal_hours: 17.2632
   right_ascension_decimal_degrees: 258.948
               declination_degrees: 24
               declination_minutes: 49
               declination_seconds: 0
       declination_decimal_degrees: 24.8167
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 95. row ***************************
                       common_name: Alphard
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 30
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 3748
    approx_rank_apparent_magnitude: 47
                apparent_magnitude: 1.98
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.7
         absolute_magnitude_varies: 0
        constellation_abbreviation: Hya
           constellation_full_name: Hydra
       constellation_name_genitive: Hydrae
              constellation_number: 1
             right_ascension_hours: 9
           right_ascension_minutes: 28
           right_ascension_seconds: 29.8
     right_ascension_decimal_hours: 9.47494
   right_ascension_decimal_degrees: 142.124
               declination_degrees: -8
               declination_minutes: 44
               declination_seconds: 2
       declination_decimal_degrees: -8.73389
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 96. row ***************************
                       common_name: $\zeta$ Hydr{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 16
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 3547
    approx_rank_apparent_magnitude: 189
                apparent_magnitude: 3.11
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.21
         absolute_magnitude_varies: 0
        constellation_abbreviation: Hya
           constellation_full_name: Hydra
       constellation_name_genitive: Hydrae
              constellation_number: 1
             right_ascension_hours: 8
           right_ascension_minutes: 56
           right_ascension_seconds: 22.2
     right_ascension_decimal_hours: 8.9395
   right_ascension_decimal_degrees: 134.092
               declination_degrees: 5
               declination_minutes: 52
               declination_seconds: 2
       declination_decimal_degrees: 5.86722
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 97. row ***************************
                       common_name: $\gamma$ Hydr{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 46
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 5020
    approx_rank_apparent_magnitude: 169
                apparent_magnitude: 2.99
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.05
         absolute_magnitude_varies: 0
        constellation_abbreviation: Hya
           constellation_full_name: Hydra
       constellation_name_genitive: Hydrae
              constellation_number: 1
             right_ascension_hours: 13
           right_ascension_minutes: 19
           right_ascension_seconds: 55.9
     right_ascension_decimal_hours: 13.3322
   right_ascension_decimal_degrees: 199.983
               declination_degrees: -23
               declination_minutes: 16
               declination_seconds: 0
       declination_decimal_degrees: -23.2667
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 98. row ***************************
                       common_name: $\nu$ Hydr{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: nu
bayer_designation_greek_letter_tex: $\nu$
       bayer_designation_extension: 
                      bs_hr_number: 4232
    approx_rank_apparent_magnitude: 190
                apparent_magnitude: 3.11
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.03
         absolute_magnitude_varies: 0
        constellation_abbreviation: Hya
           constellation_full_name: Hydra
       constellation_name_genitive: Hydrae
              constellation_number: 1
             right_ascension_hours: 10
           right_ascension_minutes: 50
           right_ascension_seconds: 32.3
     right_ascension_decimal_hours: 10.8423
   right_ascension_decimal_degrees: 162.635
               declination_degrees: -16
               declination_minutes: 17
               declination_seconds: 27
       declination_decimal_degrees: -16.2908
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 99. row ***************************
                       common_name: $\alpha$ Hydri
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 591
    approx_rank_apparent_magnitude: 146
                apparent_magnitude: 2.86
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.16
         absolute_magnitude_varies: 0
        constellation_abbreviation: Hyi
           constellation_full_name: Hydrus
       constellation_name_genitive: Hydri
              constellation_number: 61
             right_ascension_hours: 1
           right_ascension_minutes: 59
           right_ascension_seconds: 21.1
     right_ascension_decimal_hours: 1.98919
   right_ascension_decimal_degrees: 29.8379
               declination_degrees: -61
               declination_minutes: 28
               declination_seconds: 49
       declination_decimal_degrees: -61.4803
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 100. row ***************************
                       common_name: $\beta$ Hydri
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 98
    approx_rank_apparent_magnitude: 134
                apparent_magnitude: 2.82
         apparent_magnitude_varies: 0
                absolute_magnitude: 3.45
         absolute_magnitude_varies: 0
        constellation_abbreviation: Hyi
           constellation_full_name: Hydrus
       constellation_name_genitive: Hydri
              constellation_number: 61
             right_ascension_hours: 0
           right_ascension_minutes: 26
           right_ascension_seconds: 41.9
     right_ascension_decimal_hours: 0.444972
   right_ascension_decimal_degrees: 6.67458
               declination_degrees: -77
               declination_minutes: 9
               declination_seconds: 1
       declination_decimal_degrees: -77.1503
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 101. row ***************************
                       common_name: Persian
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 7869
    approx_rank_apparent_magnitude: 192
                apparent_magnitude: 3.11
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.65
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ind
           constellation_full_name: Indus
       constellation_name_genitive: Indi
              constellation_number: 49
             right_ascension_hours: 20
           right_ascension_minutes: 38
           right_ascension_seconds: 51.6
     right_ascension_decimal_hours: 20.6477
   right_ascension_decimal_degrees: 309.715
               declination_degrees: -47
               declination_minutes: 13
               declination_seconds: 32
       declination_decimal_degrees: -47.2256
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 102. row ***************************
                       common_name: Algieba
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 0
    approx_rank_apparent_magnitude: 49
                apparent_magnitude: 2
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.93
         absolute_magnitude_varies: 0
        constellation_abbreviation: Leo
           constellation_full_name: Leo
       constellation_name_genitive: Leonis
              constellation_number: 12
             right_ascension_hours: 10
           right_ascension_minutes: 19
           right_ascension_seconds: 58.3506
     right_ascension_decimal_hours: 10.3329
   right_ascension_decimal_degrees: 154.993
               declination_degrees: 19
               declination_minutes: 50
               declination_seconds: 29.3468
       declination_decimal_degrees: 19.8415
                         is_binary: 1
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 103. row ***************************
                       common_name: Regulus
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 32
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 3982
    approx_rank_apparent_magnitude: 21
                apparent_magnitude: 1.36
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.52
         absolute_magnitude_varies: 0
        constellation_abbreviation: Leo
           constellation_full_name: Leo
       constellation_name_genitive: Leonis
              constellation_number: 12
             right_ascension_hours: 10
           right_ascension_minutes: 9
           right_ascension_seconds: 21.3
     right_ascension_decimal_hours: 10.1559
   right_ascension_decimal_degrees: 152.339
               declination_degrees: 11
               declination_minutes: 52
               declination_seconds: 3
       declination_decimal_degrees: 11.8675
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 104. row ***************************
                       common_name: Ras Elased Australis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 17
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 3873
    approx_rank_apparent_magnitude: 167
                apparent_magnitude: 2.97
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.46
         absolute_magnitude_varies: 0
        constellation_abbreviation: Leo
           constellation_full_name: Leo
       constellation_name_genitive: Leonis
              constellation_number: 12
             right_ascension_hours: 9
           right_ascension_minutes: 46
           right_ascension_seconds: 53.9
     right_ascension_decimal_hours: 9.78164
   right_ascension_decimal_degrees: 146.725
               declination_degrees: 23
               declination_minutes: 41
               declination_seconds: 1
       declination_decimal_degrees: 23.6836
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 105. row ***************************
                       common_name: Denebola
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 94
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 4534
    approx_rank_apparent_magnitude: 62
                apparent_magnitude: 2.14
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.92
         absolute_magnitude_varies: 0
        constellation_abbreviation: Leo
           constellation_full_name: Leo
       constellation_name_genitive: Leonis
              constellation_number: 12
             right_ascension_hours: 11
           right_ascension_minutes: 50
           right_ascension_seconds: 0.1
     right_ascension_decimal_hours: 11.8334
   right_ascension_decimal_degrees: 177.501
               declination_degrees: 14
               declination_minutes: 28
               declination_seconds: 0
       declination_decimal_degrees: 14.4667
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 106. row ***************************
                       common_name: Zosma
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 68
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 4357
    approx_rank_apparent_magnitude: 96
                apparent_magnitude: 2.56
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.32
         absolute_magnitude_varies: 0
        constellation_abbreviation: Leo
           constellation_full_name: Leo
       constellation_name_genitive: Leonis
              constellation_number: 12
             right_ascension_hours: 11
           right_ascension_minutes: 15
           right_ascension_seconds: 5.4
     right_ascension_decimal_hours: 11.2515
   right_ascension_decimal_degrees: 168.773
               declination_degrees: 20
               declination_minutes: 25
               declination_seconds: 1
       declination_decimal_degrees: 20.4169
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 107. row ***************************
                       common_name: Arneb
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 11
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 1865
    approx_rank_apparent_magnitude: 98
                apparent_magnitude: 2.58
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.4
         absolute_magnitude_varies: 0
        constellation_abbreviation: Lep
           constellation_full_name: Lepus
       constellation_name_genitive: Leporis
              constellation_number: 51
             right_ascension_hours: 5
           right_ascension_minutes: 33
           right_ascension_seconds: 32.8
     right_ascension_decimal_hours: 5.55911
   right_ascension_decimal_degrees: 83.3867
               declination_degrees: -17
               declination_minutes: 48
               declination_seconds: 3
       declination_decimal_degrees: -17.8008
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 108. row ***************************
                       common_name: Nihal
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 9
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 1829
    approx_rank_apparent_magnitude: 132
                apparent_magnitude: 2.81
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.63
         absolute_magnitude_varies: 0
        constellation_abbreviation: Lep
           constellation_full_name: Lepus
       constellation_name_genitive: Leporis
              constellation_number: 51
             right_ascension_hours: 5
           right_ascension_minutes: 29
           right_ascension_seconds: 2.3
     right_ascension_decimal_hours: 5.48397
   right_ascension_decimal_degrees: 82.2596
               declination_degrees: -20
               declination_minutes: 44
               declination_seconds: 4
       declination_decimal_degrees: -20.7344
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 109. row ***************************
                       common_name: Zubeneschamali
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 27
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 5685
    approx_rank_apparent_magnitude: 102
                apparent_magnitude: 2.61
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.84
         absolute_magnitude_varies: 0
        constellation_abbreviation: Lib
           constellation_full_name: Libra
       constellation_name_genitive: Librae
              constellation_number: 29
             right_ascension_hours: 15
           right_ascension_minutes: 18
           right_ascension_seconds: 0.3
     right_ascension_decimal_hours: 15.3001
   right_ascension_decimal_degrees: 229.502
               declination_degrees: -9
               declination_minutes: 27
               declination_seconds: 0
       declination_decimal_degrees: -9.45
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 110. row ***************************
                       common_name: Zubenelgenubi
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 9
    bayer_designation_greek_letter: alpha^2
bayer_designation_greek_letter_tex: $\alpha^2$
       bayer_designation_extension: 
                      bs_hr_number: 5531
    approx_rank_apparent_magnitude: 105
                apparent_magnitude: 2.64
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.77
         absolute_magnitude_varies: 0
        constellation_abbreviation: Lib
           constellation_full_name: Libra
       constellation_name_genitive: Librae
              constellation_number: 29
             right_ascension_hours: 14
           right_ascension_minutes: 50
           right_ascension_seconds: 52.7131
     right_ascension_decimal_hours: 14.8651
   right_ascension_decimal_degrees: 222.977
               declination_degrees: -16
               declination_minutes: 2
               declination_seconds: 30.3955
       declination_decimal_degrees: -16.1167
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 1
               is_eclipsing_binary: 0
                             notes: 
*************************** 111. row ***************************
                       common_name: $\gamma$ Lupi
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 5776
    approx_rank_apparent_magnitude: 131
                apparent_magnitude: 2.8
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.4
         absolute_magnitude_varies: 0
        constellation_abbreviation: Lup
           constellation_full_name: Lupus
       constellation_name_genitive: Lupi
              constellation_number: 46
             right_ascension_hours: 15
           right_ascension_minutes: 36
           right_ascension_seconds: 22.8
     right_ascension_decimal_hours: 15.6063
   right_ascension_decimal_degrees: 234.095
               declination_degrees: -41
               declination_minutes: 13
               declination_seconds: 39
       declination_decimal_degrees: -41.2275
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 112. row ***************************
                       common_name: Ke Kouan
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 5571
    approx_rank_apparent_magnitude: 111
                apparent_magnitude: 2.68
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.35
         absolute_magnitude_varies: 0
        constellation_abbreviation: Lup
           constellation_full_name: Lupus
       constellation_name_genitive: Lupi
              constellation_number: 46
             right_ascension_hours: 14
           right_ascension_minutes: 59
           right_ascension_seconds: 45.1
     right_ascension_decimal_hours: 14.9959
   right_ascension_decimal_degrees: 224.939
               declination_degrees: -43
               declination_minutes: 12
               declination_seconds: 26
       declination_decimal_degrees: -43.2072
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 113. row ***************************
                       common_name: Men
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 5469
    approx_rank_apparent_magnitude: 78
                apparent_magnitude: 2.3
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.83
         absolute_magnitude_varies: 0
        constellation_abbreviation: Lup
           constellation_full_name: Lupus
       constellation_name_genitive: Lupi
              constellation_number: 46
             right_ascension_hours: 14
           right_ascension_minutes: 43
           right_ascension_seconds: 10.1
     right_ascension_decimal_hours: 14.7195
   right_ascension_decimal_degrees: 220.792
               declination_degrees: -47
               declination_minutes: 27
               declination_seconds: 59
       declination_decimal_degrees: -47.4664
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 114. row ***************************
                       common_name: $\alpha$ Lyncis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 40
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 3705
    approx_rank_apparent_magnitude: 198
                apparent_magnitude: 3.14
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.02
         absolute_magnitude_varies: 0
        constellation_abbreviation: Lyn
           constellation_full_name: Lynx
       constellation_name_genitive: Lyncis
              constellation_number: 28
             right_ascension_hours: 9
           right_ascension_minutes: 22
           right_ascension_seconds: 10.6
     right_ascension_decimal_hours: 9.36961
   right_ascension_decimal_degrees: 140.544
               declination_degrees: 34
               declination_minutes: 18
               declination_seconds: 4
       declination_decimal_degrees: 34.3011
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 115. row ***************************
                       common_name: Vega
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 3
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 7001
    approx_rank_apparent_magnitude: 5
                apparent_magnitude: 0.03
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.58
         absolute_magnitude_varies: 0
        constellation_abbreviation: Lyr
           constellation_full_name: Lyra
       constellation_name_genitive: Lyrae
              constellation_number: 52
             right_ascension_hours: 18
           right_ascension_minutes: 37
           right_ascension_seconds: 33.9
     right_ascension_decimal_hours: 18.6261
   right_ascension_decimal_degrees: 279.392
               declination_degrees: 38
               declination_minutes: 48
               declination_seconds: 0
       declination_decimal_degrees: 38.8
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 116. row ***************************
                       common_name: $\beta$ Musc{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 4844
    approx_rank_apparent_magnitude: 182
                apparent_magnitude: 3.04
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.86
         absolute_magnitude_varies: 0
        constellation_abbreviation: Mus
           constellation_full_name: Musca
       constellation_name_genitive: Muscae
              constellation_number: 77
             right_ascension_hours: 12
           right_ascension_minutes: 47
           right_ascension_seconds: 26.1
     right_ascension_decimal_hours: 12.7906
   right_ascension_decimal_degrees: 191.859
               declination_degrees: -68
               declination_minutes: 12
               declination_seconds: 32
       declination_decimal_degrees: -68.2089
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 117. row ***************************
                       common_name: $\alpha$ Musc{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 4798
    approx_rank_apparent_magnitude: 114
                apparent_magnitude: 2.69
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.17
         absolute_magnitude_varies: 0
        constellation_abbreviation: Mus
           constellation_full_name: Musca
       constellation_name_genitive: Muscae
              constellation_number: 77
             right_ascension_hours: 12
           right_ascension_minutes: 38
           right_ascension_seconds: 18.4
     right_ascension_decimal_hours: 12.6384
   right_ascension_decimal_degrees: 189.576
               declination_degrees: -69
               declination_minutes: 14
               declination_seconds: 14
       declination_decimal_degrees: -69.2372
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 118. row ***************************
                       common_name: Yed Prior
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 1
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 6056
    approx_rank_apparent_magnitude: 119
                apparent_magnitude: 2.73
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.86
         absolute_magnitude_varies: 0
        constellation_abbreviation: Oph
           constellation_full_name: Ophiuchus
       constellation_name_genitive: Ophiuchi
              constellation_number: 11
             right_ascension_hours: 16
           right_ascension_minutes: 15
           right_ascension_seconds: 19
     right_ascension_decimal_hours: 16.2553
   right_ascension_decimal_degrees: 243.83
               declination_degrees: -3
               declination_minutes: 44
               declination_seconds: 2
       declination_decimal_degrees: -3.73389
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 119. row ***************************
                       common_name: Cebalrai
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 60
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 6603
    approx_rank_apparent_magnitude: 125
                apparent_magnitude: 2.76
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.76
         absolute_magnitude_varies: 0
        constellation_abbreviation: Oph
           constellation_full_name: Ophiuchus
       constellation_name_genitive: Ophiuchi
              constellation_number: 11
             right_ascension_hours: 17
           right_ascension_minutes: 44
           right_ascension_seconds: 23.2
     right_ascension_decimal_hours: 17.7398
   right_ascension_decimal_degrees: 266.097
               declination_degrees: 4
               declination_minutes: 33
               declination_seconds: 3
       declination_decimal_degrees: 4.55083
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 120. row ***************************
                       common_name: Han
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 13
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 6175
    approx_rank_apparent_magnitude: 94
                apparent_magnitude: 2.54
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.2
         absolute_magnitude_varies: 0
        constellation_abbreviation: Oph
           constellation_full_name: Ophiuchus
       constellation_name_genitive: Ophiuchi
              constellation_number: 11
             right_ascension_hours: 16
           right_ascension_minutes: 38
           right_ascension_seconds: 10.8
     right_ascension_decimal_hours: 16.6363
   right_ascension_decimal_degrees: 249.544
               declination_degrees: -10
               declination_minutes: 36
               declination_seconds: 1
       declination_decimal_degrees: -10.6003
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 121. row ***************************
                       common_name: Sabik
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 35
    bayer_designation_greek_letter: eta
bayer_designation_greek_letter_tex: $\eta$
       bayer_designation_extension: 
                      bs_hr_number: 6378
    approx_rank_apparent_magnitude: 86
                apparent_magnitude: 2.43
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.37
         absolute_magnitude_varies: 0
        constellation_abbreviation: Oph
           constellation_full_name: Ophiuchus
       constellation_name_genitive: Ophiuchi
              constellation_number: 11
             right_ascension_hours: 17
           right_ascension_minutes: 11
           right_ascension_seconds: 26.4
     right_ascension_decimal_hours: 17.1907
   right_ascension_decimal_degrees: 257.861
               declination_degrees: -15
               declination_minutes: 44
               declination_seconds: 4
       declination_decimal_degrees: -15.7344
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 122. row ***************************
                       common_name: Rasalhague
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 55
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 6556
    approx_rank_apparent_magnitude: 59
                apparent_magnitude: 2.08
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.3
         absolute_magnitude_varies: 0
        constellation_abbreviation: Oph
           constellation_full_name: Ophiuchus
       constellation_name_genitive: Ophiuchi
              constellation_number: 11
             right_ascension_hours: 17
           right_ascension_minutes: 35
           right_ascension_seconds: 47.6
     right_ascension_decimal_hours: 17.5966
   right_ascension_decimal_degrees: 263.949
               declination_degrees: 12
               declination_minutes: 32
               declination_seconds: 5
       declination_decimal_degrees: 12.5347
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 123. row ***************************
                       common_name: Rigel
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 19
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 1713
    approx_rank_apparent_magnitude: 7
                apparent_magnitude: 0.15
         apparent_magnitude_varies: 1
                absolute_magnitude: -6.72
         absolute_magnitude_varies: 1
        constellation_abbreviation: Ori
           constellation_full_name: Orion
       constellation_name_genitive: Orionis
              constellation_number: 26
             right_ascension_hours: 5
           right_ascension_minutes: 15
           right_ascension_seconds: 25.7
     right_ascension_decimal_hours: 5.25714
   right_ascension_decimal_degrees: 78.8571
               declination_degrees: -8
               declination_minutes: 10
               declination_seconds: 5
       declination_decimal_degrees: -8.16806
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 124. row ***************************
                       common_name: Bellatrix
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 24
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 1790
    approx_rank_apparent_magnitude: 26
                apparent_magnitude: 1.64
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.72
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ori
           constellation_full_name: Orion
       constellation_name_genitive: Orionis
              constellation_number: 26
             right_ascension_hours: 5
           right_ascension_minutes: 26
           right_ascension_seconds: 7.5
     right_ascension_decimal_hours: 5.43542
   right_ascension_decimal_degrees: 81.5313
               declination_degrees: 6
               declination_minutes: 21
               declination_seconds: 5
       declination_decimal_degrees: 6.35139
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 125. row ***************************
                       common_name: Mintaka
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 34
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 1852
    approx_rank_apparent_magnitude: 73
                apparent_magnitude: 2.25
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.99
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ori
           constellation_full_name: Orion
       constellation_name_genitive: Orionis
              constellation_number: 26
             right_ascension_hours: 5
           right_ascension_minutes: 32
           right_ascension_seconds: 57.2
     right_ascension_decimal_hours: 5.54922
   right_ascension_decimal_degrees: 83.2383
               declination_degrees: 0
               declination_minutes: 17
               declination_seconds: 1
       declination_decimal_degrees: 0.283611
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 1
                             notes: 
*************************** 126. row ***************************
                       common_name: Hatysa
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 44
    bayer_designation_greek_letter: iota
bayer_designation_greek_letter_tex: $\iota$
       bayer_designation_extension: 
                      bs_hr_number: 1899
    approx_rank_apparent_magnitude: 123
                apparent_magnitude: 2.75
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.3
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ori
           constellation_full_name: Orion
       constellation_name_genitive: Orionis
              constellation_number: 26
             right_ascension_hours: 5
           right_ascension_minutes: 36
           right_ascension_seconds: 20.3
     right_ascension_decimal_hours: 5.60564
   right_ascension_decimal_degrees: 84.0846
               declination_degrees: -5
               declination_minutes: 53
               declination_seconds: 5
       declination_decimal_degrees: -5.88472
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 127. row ***************************
                       common_name: Alnilam
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 46
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 1903
    approx_rank_apparent_magnitude: 29
                apparent_magnitude: 1.69
         apparent_magnitude_varies: 0
                absolute_magnitude: -6.38
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ori
           constellation_full_name: Orion
       constellation_name_genitive: Orionis
              constellation_number: 26
             right_ascension_hours: 5
           right_ascension_minutes: 37
           right_ascension_seconds: 9.2
     right_ascension_decimal_hours: 5.61922
   right_ascension_decimal_degrees: 84.2883
               declination_degrees: -1
               declination_minutes: 11
               declination_seconds: 2
       declination_decimal_degrees: -1.18389
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 128. row ***************************
                       common_name: Alnitak
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 50
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 1948
    approx_rank_apparent_magnitude: 31
                apparent_magnitude: 1.75
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.25
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ori
           constellation_full_name: Orion
       constellation_name_genitive: Orionis
              constellation_number: 26
             right_ascension_hours: 5
           right_ascension_minutes: 41
           right_ascension_seconds: 41.6
     right_ascension_decimal_hours: 5.69489
   right_ascension_decimal_degrees: 85.4233
               declination_degrees: -1
               declination_minutes: 56
               declination_seconds: 0
       declination_decimal_degrees: -1.93333
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 129. row ***************************
                       common_name: Saiph
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 53
    bayer_designation_greek_letter: kappa
bayer_designation_greek_letter_tex: $\kappa$
       bayer_designation_extension: 
                      bs_hr_number: 2004
    approx_rank_apparent_magnitude: 56
                apparent_magnitude: 2.07
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.65
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ori
           constellation_full_name: Orion
       constellation_name_genitive: Orionis
              constellation_number: 26
             right_ascension_hours: 5
           right_ascension_minutes: 48
           right_ascension_seconds: 38.1
     right_ascension_decimal_hours: 5.81058
   right_ascension_decimal_degrees: 87.1587
               declination_degrees: -9
               declination_minutes: 39
               declination_seconds: 5
       declination_decimal_degrees: -9.65139
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 130. row ***************************
                       common_name: Betelgeuse
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 58
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 2061
    approx_rank_apparent_magnitude: 10
                apparent_magnitude: 0.55
         apparent_magnitude_varies: 1
                absolute_magnitude: -5.04
         absolute_magnitude_varies: 1
        constellation_abbreviation: Ori
           constellation_full_name: Orion
       constellation_name_genitive: Orionis
              constellation_number: 26
             right_ascension_hours: 5
           right_ascension_minutes: 56
           right_ascension_seconds: 10.4
     right_ascension_decimal_hours: 5.93622
   right_ascension_decimal_degrees: 89.0433
               declination_degrees: 7
               declination_minutes: 24
               declination_seconds: 3
       declination_decimal_degrees: 7.40083
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 131. row ***************************
                       common_name: Peacock
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 7790
    approx_rank_apparent_magnitude: 44
                apparent_magnitude: 1.93
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.82
         absolute_magnitude_varies: 0
        constellation_abbreviation: Pav
           constellation_full_name: Pavo
       constellation_name_genitive: Pavonis
              constellation_number: 44
             right_ascension_hours: 20
           right_ascension_minutes: 27
           right_ascension_seconds: 6
     right_ascension_decimal_hours: 20.4517
   right_ascension_decimal_degrees: 306.776
               declination_degrees: -56
               declination_minutes: 40
               declination_seconds: 27
       declination_decimal_degrees: -56.6742
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 132. row ***************************
                       common_name: Algenib
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 88
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 39
    approx_rank_apparent_magnitude: 137
                apparent_magnitude: 2.83
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.22
         absolute_magnitude_varies: 0
        constellation_abbreviation: Peg
           constellation_full_name: Pegasus
       constellation_name_genitive: Pegasi
              constellation_number: 7
             right_ascension_hours: 0
           right_ascension_minutes: 14
           right_ascension_seconds: 11.4
     right_ascension_decimal_hours: 0.2365
   right_ascension_decimal_degrees: 3.5475
               declination_degrees: 15
               declination_minutes: 17
               declination_seconds: 1
       declination_decimal_degrees: 15.2836
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 133. row ***************************
                       common_name: Scheat
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 53
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 8775
    approx_rank_apparent_magnitude: 87
                apparent_magnitude: 2.44
         apparent_magnitude_varies: 1
                absolute_magnitude: -1.49
         absolute_magnitude_varies: 0
        constellation_abbreviation: Peg
           constellation_full_name: Pegasus
       constellation_name_genitive: Pegasi
              constellation_number: 7
             right_ascension_hours: 23
           right_ascension_minutes: 4
           right_ascension_seconds: 40.4
     right_ascension_decimal_hours: 23.0779
   right_ascension_decimal_degrees: 346.168
               declination_degrees: 28
               declination_minutes: 11
               declination_seconds: 0
       declination_decimal_degrees: 28.1833
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 134. row ***************************
                       common_name: Markab
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 54
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 8781
    approx_rank_apparent_magnitude: 92
                apparent_magnitude: 2.49
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.67
         absolute_magnitude_varies: 0
        constellation_abbreviation: Peg
           constellation_full_name: Pegasus
       constellation_name_genitive: Pegasi
              constellation_number: 7
             right_ascension_hours: 23
           right_ascension_minutes: 5
           right_ascension_seconds: 41
     right_ascension_decimal_hours: 23.0947
   right_ascension_decimal_degrees: 346.421
               declination_degrees: 15
               declination_minutes: 18
               declination_seconds: 1
       declination_decimal_degrees: 15.3003
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 135. row ***************************
                       common_name: Matar
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 44
    bayer_designation_greek_letter: eta
bayer_designation_greek_letter_tex: $\eta$
       bayer_designation_extension: 
                      bs_hr_number: 8650
    approx_rank_apparent_magnitude: 161
                apparent_magnitude: 2.93
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.16
         absolute_magnitude_varies: 0
        constellation_abbreviation: Peg
           constellation_full_name: Pegasus
       constellation_name_genitive: Pegasi
              constellation_number: 7
             right_ascension_hours: 22
           right_ascension_minutes: 43
           right_ascension_seconds: 52.3
     right_ascension_decimal_hours: 22.7312
   right_ascension_decimal_degrees: 340.968
               declination_degrees: 30
               declination_minutes: 19
               declination_seconds: 0
       declination_decimal_degrees: 30.3167
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 136. row ***************************
                       common_name: Enif
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 8
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 8308
    approx_rank_apparent_magnitude: 82
                apparent_magnitude: 2.38
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.19
         absolute_magnitude_varies: 0
        constellation_abbreviation: Peg
           constellation_full_name: Pegasus
       constellation_name_genitive: Pegasi
              constellation_number: 7
             right_ascension_hours: 21
           right_ascension_minutes: 45
           right_ascension_seconds: 5.7
     right_ascension_decimal_hours: 21.7516
   right_ascension_decimal_degrees: 326.274
               declination_degrees: 9
               declination_minutes: 57
               declination_seconds: 3
       declination_decimal_degrees: 9.95083
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 137. row ***************************
                       common_name: Algol
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 26
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 936
    approx_rank_apparent_magnitude: 60
                apparent_magnitude: 2.09
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.18
         absolute_magnitude_varies: 0
        constellation_abbreviation: Per
           constellation_full_name: Perseus
       constellation_name_genitive: Persei
              constellation_number: 24
             right_ascension_hours: 3
           right_ascension_minutes: 9
           right_ascension_seconds: 22.8
     right_ascension_decimal_hours: 3.15633
   right_ascension_decimal_degrees: 47.345
               declination_degrees: 41
               declination_minutes: 1
               declination_seconds: 3
       declination_decimal_degrees: 41.0175
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 1
                             notes: 
*************************** 138. row ***************************
                       common_name: $\zeta$ Persei
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 44
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 1203
    approx_rank_apparent_magnitude: 140
                apparent_magnitude: 2.84
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.55
         absolute_magnitude_varies: 0
        constellation_abbreviation: Per
           constellation_full_name: Perseus
       constellation_name_genitive: Persei
              constellation_number: 24
             right_ascension_hours: 3
           right_ascension_minutes: 55
           right_ascension_seconds: 18
     right_ascension_decimal_hours: 3.92167
   right_ascension_decimal_degrees: 58.8251
               declination_degrees: 31
               declination_minutes: 56
               declination_seconds: 1
       declination_decimal_degrees: 31.9336
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 139. row ***************************
                       common_name: $\epsilon$ Persei
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 45
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 1220
    approx_rank_apparent_magnitude: 155
                apparent_magnitude: 2.9
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.19
         absolute_magnitude_varies: 0
        constellation_abbreviation: Per
           constellation_full_name: Perseus
       constellation_name_genitive: Persei
              constellation_number: 24
             right_ascension_hours: 3
           right_ascension_minutes: 59
           right_ascension_seconds: 6.1
     right_ascension_decimal_hours: 3.98503
   right_ascension_decimal_degrees: 59.7754
               declination_degrees: 40
               declination_minutes: 3
               declination_seconds: 4
       declination_decimal_degrees: 40.0511
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 140. row ***************************
                       common_name: Mirfak
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 33
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 1017
    approx_rank_apparent_magnitude: 33
                apparent_magnitude: 1.8
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.49
         absolute_magnitude_varies: 0
        constellation_abbreviation: Per
           constellation_full_name: Perseus
       constellation_name_genitive: Persei
              constellation_number: 24
             right_ascension_hours: 3
           right_ascension_minutes: 25
           right_ascension_seconds: 39.2
     right_ascension_decimal_hours: 3.42756
   right_ascension_decimal_degrees: 51.4134
               declination_degrees: 49
               declination_minutes: 55
               declination_seconds: 3
       declination_decimal_degrees: 49.9175
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 141. row ***************************
                       common_name: $\gamma$ Persei
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 23
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 915
    approx_rank_apparent_magnitude: 159
                apparent_magnitude: 2.91
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.57
         absolute_magnitude_varies: 0
        constellation_abbreviation: Per
           constellation_full_name: Perseus
       constellation_name_genitive: Persei
              constellation_number: 24
             right_ascension_hours: 3
           right_ascension_minutes: 6
           right_ascension_seconds: 8.9
     right_ascension_decimal_hours: 3.10247
   right_ascension_decimal_degrees: 46.537
               declination_degrees: 53
               declination_minutes: 34
               declination_seconds: 3
       declination_decimal_degrees: 53.5675
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 142. row ***************************
                       common_name: $\delta$ Persei
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 39
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 1122
    approx_rank_apparent_magnitude: 177
                apparent_magnitude: 3.01
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.04
         absolute_magnitude_varies: 0
        constellation_abbreviation: Per
           constellation_full_name: Perseus
       constellation_name_genitive: Persei
              constellation_number: 24
             right_ascension_hours: 3
           right_ascension_minutes: 44
           right_ascension_seconds: 15
     right_ascension_decimal_hours: 3.7375
   right_ascension_decimal_degrees: 56.0625
               declination_degrees: 47
               declination_minutes: 50
               declination_seconds: 4
       declination_decimal_degrees: 47.8344
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 143. row ***************************
                       common_name: Ankaa
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 99
    approx_rank_apparent_magnitude: 84
                apparent_magnitude: 2.4
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.52
         absolute_magnitude_varies: 0
        constellation_abbreviation: Phe
           constellation_full_name: Phoenix
       constellation_name_genitive: Phoenicis
              constellation_number: 37
             right_ascension_hours: 0
           right_ascension_minutes: 27
           right_ascension_seconds: 11.7
     right_ascension_decimal_hours: 0.45325
   right_ascension_decimal_degrees: 6.79875
               declination_degrees: -42
               declination_minutes: 12
               declination_seconds: 20
       declination_decimal_degrees: -42.2056
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 144. row ***************************
                       common_name: Fomalhaut
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 24
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 8728
    approx_rank_apparent_magnitude: 18
                apparent_magnitude: 1.15
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.72
         absolute_magnitude_varies: 0
        constellation_abbreviation: PsA
           constellation_full_name: Piscis Austrinus
       constellation_name_genitive: Piscis Austrini
              constellation_number: 60
             right_ascension_hours: 22
           right_ascension_minutes: 57
           right_ascension_seconds: 39.0465
     right_ascension_decimal_hours: 22.9608
   right_ascension_decimal_degrees: 344.412
               declination_degrees: -29
               declination_minutes: 37
               declination_seconds: 20.05
       declination_decimal_degrees: -29.6222
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 145. row ***************************
                       common_name: $\tau$ Puppis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: tau
bayer_designation_greek_letter_tex: $\tau$
       bayer_designation_extension: 
                      bs_hr_number: 2553
    approx_rank_apparent_magnitude: 162
                apparent_magnitude: 2.94
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.8
         absolute_magnitude_varies: 0
        constellation_abbreviation: Pup
           constellation_full_name: Puppis
       constellation_name_genitive: Puppis
              constellation_number: 20
             right_ascension_hours: 6
           right_ascension_minutes: 50
           right_ascension_seconds: 23.7
     right_ascension_decimal_hours: 6.83992
   right_ascension_decimal_degrees: 102.599
               declination_degrees: -50
               declination_minutes: 38
               declination_seconds: 14
       declination_decimal_degrees: -50.6372
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 146. row ***************************
                       common_name: $\pi$ Puppis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: pi
bayer_designation_greek_letter_tex: $\pi$
       bayer_designation_extension: 
                      bs_hr_number: 2773
    approx_rank_apparent_magnitude: 116
                apparent_magnitude: 2.71
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.92
         absolute_magnitude_varies: 0
        constellation_abbreviation: Pup
           constellation_full_name: Puppis
       constellation_name_genitive: Puppis
              constellation_number: 20
             right_ascension_hours: 7
           right_ascension_minutes: 17
           right_ascension_seconds: 47.8
     right_ascension_decimal_hours: 7.29661
   right_ascension_decimal_degrees: 109.449
               declination_degrees: -37
               declination_minutes: 7
               declination_seconds: 54
       declination_decimal_degrees: -37.1317
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 147. row ***************************
                       common_name: Naos
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 3165
    approx_rank_apparent_magnitude: 65
                apparent_magnitude: 2.21
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.95
         absolute_magnitude_varies: 0
        constellation_abbreviation: Pup
           constellation_full_name: Puppis
       constellation_name_genitive: Puppis
              constellation_number: 20
             right_ascension_hours: 8
           right_ascension_minutes: 4
           right_ascension_seconds: 14.1
     right_ascension_decimal_hours: 8.07058
   right_ascension_decimal_degrees: 121.059
               declination_degrees: -40
               declination_minutes: 3
               declination_seconds: 22
       declination_decimal_degrees: -40.0561
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 148. row ***************************
                       common_name: Turais
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 15
    bayer_designation_greek_letter: rho
bayer_designation_greek_letter_tex: $\rho$
       bayer_designation_extension: 
                      bs_hr_number: 3185
    approx_rank_apparent_magnitude: 138
                apparent_magnitude: 2.83
         apparent_magnitude_varies: 0
                absolute_magnitude: 1.41
         absolute_magnitude_varies: 0
        constellation_abbreviation: Pup
           constellation_full_name: Puppis
       constellation_name_genitive: Puppis
              constellation_number: 20
             right_ascension_hours: 8
           right_ascension_minutes: 8
           right_ascension_seconds: 19.9
     right_ascension_decimal_hours: 8.13886
   right_ascension_decimal_degrees: 122.083
               declination_degrees: -24
               declination_minutes: 21
               declination_seconds: 3
       declination_decimal_degrees: -24.3508
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 149. row ***************************
                       common_name: Kaus Borealis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 22
    bayer_designation_greek_letter: lambda
bayer_designation_greek_letter_tex: $\lambda$
       bayer_designation_extension: 
                      bs_hr_number: 6913
    approx_rank_apparent_magnitude: 136
                apparent_magnitude: 2.82
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.95
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sgr
           constellation_full_name: Sagittarius
       constellation_name_genitive: Sagittarii
              constellation_number: 15
             right_ascension_hours: 18
           right_ascension_minutes: 29
           right_ascension_seconds: 6.7
     right_ascension_decimal_hours: 18.4852
   right_ascension_decimal_degrees: 277.278
               declination_degrees: -25
               declination_minutes: 24
               declination_seconds: 3
       declination_decimal_degrees: -25.4008
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 150. row ***************************
                       common_name: Alnasl
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 10
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 6746
    approx_rank_apparent_magnitude: 168
                apparent_magnitude: 2.98
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.63
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sgr
           constellation_full_name: Sagittarius
       constellation_name_genitive: Sagittarii
              constellation_number: 15
             right_ascension_hours: 18
           right_ascension_minutes: 6
           right_ascension_seconds: 59.8
     right_ascension_decimal_hours: 18.1166
   right_ascension_decimal_degrees: 271.749
               declination_degrees: -30
               declination_minutes: 25
               declination_seconds: 2
       declination_decimal_degrees: -30.4172
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 151. row ***************************
                       common_name: $\eta$ Sagittarii
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: eta
bayer_designation_greek_letter_tex: $\eta$
       bayer_designation_extension: 
                      bs_hr_number: 6832
    approx_rank_apparent_magnitude: 188
                apparent_magnitude: 3.1
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.2
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sgr
           constellation_full_name: Sagittarius
       constellation_name_genitive: Sagittarii
              constellation_number: 15
             right_ascension_hours: 18
           right_ascension_minutes: 18
           right_ascension_seconds: 52.7
     right_ascension_decimal_hours: 18.3146
   right_ascension_decimal_degrees: 274.719
               declination_degrees: -36
               declination_minutes: 45
               declination_seconds: 16
       declination_decimal_degrees: -36.7544
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 152. row ***************************
                       common_name: Kaus Meridionalis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 19
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 6859
    approx_rank_apparent_magnitude: 117
                apparent_magnitude: 2.72
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.14
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sgr
           constellation_full_name: Sagittarius
       constellation_name_genitive: Sagittarii
              constellation_number: 15
             right_ascension_hours: 18
           right_ascension_minutes: 22
           right_ascension_seconds: 10.7
     right_ascension_decimal_hours: 18.3696
   right_ascension_decimal_degrees: 275.544
               declination_degrees: -29
               declination_minutes: 49
               declination_seconds: 0
       declination_decimal_degrees: -29.8167
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 153. row ***************************
                       common_name: Kaus Australis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 20
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 6879
    approx_rank_apparent_magnitude: 37
                apparent_magnitude: 1.84
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.39
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sgr
           constellation_full_name: Sagittarius
       constellation_name_genitive: Sagittarii
              constellation_number: 15
             right_ascension_hours: 18
           right_ascension_minutes: 25
           right_ascension_seconds: 24
     right_ascension_decimal_hours: 18.4233
   right_ascension_decimal_degrees: 276.349
               declination_degrees: -34
               declination_minutes: 22
               declination_seconds: 2
       declination_decimal_degrees: -34.3672
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 154. row ***************************
                       common_name: Nunki
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 34
    bayer_designation_greek_letter: sigma
bayer_designation_greek_letter_tex: $\sigma$
       bayer_designation_extension: 
                      bs_hr_number: 7121
    approx_rank_apparent_magnitude: 52
                apparent_magnitude: 2.05
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.14
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sgr
           constellation_full_name: Sagittarius
       constellation_name_genitive: Sagittarii
              constellation_number: 15
             right_ascension_hours: 18
           right_ascension_minutes: 56
           right_ascension_seconds: 24.7
     right_ascension_decimal_hours: 18.9402
   right_ascension_decimal_degrees: 284.103
               declination_degrees: -26
               declination_minutes: 16
               declination_seconds: 2
       declination_decimal_degrees: -26.2672
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 155. row ***************************
                       common_name: Albaldah
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 41
    bayer_designation_greek_letter: pi
bayer_designation_greek_letter_tex: $\pi$
       bayer_designation_extension: 
                      bs_hr_number: 7264
    approx_rank_apparent_magnitude: 152
                apparent_magnitude: 2.88
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.77
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sgr
           constellation_full_name: Sagittarius
       constellation_name_genitive: Sagittarii
              constellation_number: 15
             right_ascension_hours: 19
           right_ascension_minutes: 10
           right_ascension_seconds: 51.8
     right_ascension_decimal_hours: 19.1811
   right_ascension_decimal_degrees: 287.717
               declination_degrees: -20
               declination_minutes: 59
               declination_seconds: 3
       declination_decimal_degrees: -20.9842
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 156. row ***************************
                       common_name: Ascella
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 38
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 7194
    approx_rank_apparent_magnitude: 101
                apparent_magnitude: 2.6
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.42
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sgr
           constellation_full_name: Sagittarius
       constellation_name_genitive: Sagittarii
              constellation_number: 15
             right_ascension_hours: 19
           right_ascension_minutes: 3
           right_ascension_seconds: 47.2
     right_ascension_decimal_hours: 19.0631
   right_ascension_decimal_degrees: 285.947
               declination_degrees: -29
               declination_minutes: 51
               declination_seconds: 0
       declination_decimal_degrees: -29.85
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 157. row ***************************
                       common_name: Antares
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 21
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 6134
    approx_rank_apparent_magnitude: 15
                apparent_magnitude: 0.95
         apparent_magnitude_varies: 1
                absolute_magnitude: -5.39
         absolute_magnitude_varies: 1
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 16
           right_ascension_minutes: 30
           right_ascension_seconds: 32.7
     right_ascension_decimal_hours: 16.5091
   right_ascension_decimal_degrees: 247.637
               declination_degrees: -26
               declination_minutes: 28
               declination_seconds: 1
       declination_decimal_degrees: -26.4669
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 158. row ***************************
                       common_name: Girtab
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: kappa
bayer_designation_greek_letter_tex: $\kappa$
       bayer_designation_extension: 
                      bs_hr_number: 6580
    approx_rank_apparent_magnitude: 83
                apparent_magnitude: 2.39
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.38
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 17
           right_ascension_minutes: 43
           right_ascension_seconds: 46.1
     right_ascension_decimal_hours: 17.7295
   right_ascension_decimal_degrees: 265.943
               declination_degrees: -39
               declination_minutes: 2
               declination_seconds: 16
       declination_decimal_degrees: -39.0378
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 159. row ***************************
                       common_name: Sargas
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: theta
bayer_designation_greek_letter_tex: $\theta$
       bayer_designation_extension: 
                      bs_hr_number: 6553
    approx_rank_apparent_magnitude: 39
                apparent_magnitude: 1.86
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.75
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 17
           right_ascension_minutes: 38
           right_ascension_seconds: 39
     right_ascension_decimal_hours: 17.6442
   right_ascension_decimal_degrees: 264.663
               declination_degrees: -43
               declination_minutes: 0
               declination_seconds: 28
       declination_decimal_degrees: -43.0078
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 160. row ***************************
                       common_name: Shaula
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 35
    bayer_designation_greek_letter: lambda
bayer_designation_greek_letter_tex: $\lambda$
       bayer_designation_extension: 
                      bs_hr_number: 6527
    approx_rank_apparent_magnitude: 24
                apparent_magnitude: 1.62
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.05
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 17
           right_ascension_minutes: 34
           right_ascension_seconds: 52
     right_ascension_decimal_hours: 17.5811
   right_ascension_decimal_degrees: 263.716
               declination_degrees: -37
               declination_minutes: 6
               declination_seconds: 5
       declination_decimal_degrees: -37.1014
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 161. row ***************************
                       common_name: $\pi$ Scorpii
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 6
    bayer_designation_greek_letter: pi
bayer_designation_greek_letter_tex: $\pi$
       bayer_designation_extension: 
                      bs_hr_number: 5944
    approx_rank_apparent_magnitude: 154
                apparent_magnitude: 2.89
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.85
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 15
           right_ascension_minutes: 59
           right_ascension_seconds: 58.5
     right_ascension_decimal_hours: 15.9996
   right_ascension_decimal_degrees: 239.994
               declination_degrees: -26
               declination_minutes: 9
               declination_seconds: 5
       declination_decimal_degrees: -26.1514
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 162. row ***************************
                       common_name: Lesath
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 34
    bayer_designation_greek_letter: upsilon
bayer_designation_greek_letter_tex: $\upsilon$
       bayer_designation_extension: 
                      bs_hr_number: 6508
    approx_rank_apparent_magnitude: 115
                apparent_magnitude: 2.7
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.31
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 17
           right_ascension_minutes: 32
           right_ascension_seconds: 1.4
     right_ascension_decimal_hours: 17.5337
   right_ascension_decimal_degrees: 263.006
               declination_degrees: -37
               declination_minutes: 18
               declination_seconds: 3
       declination_decimal_degrees: -37.3008
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 163. row ***************************
                       common_name: $\mu^1$ Scorpii
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: mu^1
bayer_designation_greek_letter_tex: $\mu^1$
       bayer_designation_extension: 
                      bs_hr_number: 6247
    approx_rank_apparent_magnitude: 175
                apparent_magnitude: 3
         apparent_magnitude_varies: 0
                absolute_magnitude: -4.01
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 16
           right_ascension_minutes: 53
           right_ascension_seconds: 7.6
     right_ascension_decimal_hours: 16.8854
   right_ascension_decimal_degrees: 253.281
               declination_degrees: -38
               declination_minutes: 4
               declination_seconds: 39
       declination_decimal_degrees: -38.0775
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 164. row ***************************
                       common_name: Wei
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 26
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 6241
    approx_rank_apparent_magnitude: 77
                apparent_magnitude: 2.29
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.78
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 16
           right_ascension_minutes: 51
           right_ascension_seconds: 21.9
     right_ascension_decimal_hours: 16.8561
   right_ascension_decimal_degrees: 252.842
               declination_degrees: -34
               declination_minutes: 19
               declination_seconds: 3
       declination_decimal_degrees: -34.3175
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 165. row ***************************
                       common_name: $\tau$ Scorpii
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 23
    bayer_designation_greek_letter: tau
bayer_designation_greek_letter_tex: $\tau$
       bayer_designation_extension: 
                      bs_hr_number: 6165
    approx_rank_apparent_magnitude: 135
                apparent_magnitude: 2.82
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.78
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 16
           right_ascension_minutes: 37
           right_ascension_seconds: 2.2
     right_ascension_decimal_hours: 16.6173
   right_ascension_decimal_degrees: 249.26
               declination_degrees: -28
               declination_minutes: 15
               declination_seconds: 1
       declination_decimal_degrees: -28.2503
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 166. row ***************************
                       common_name: $\iota^1$ Scorpii
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: iota^1
bayer_designation_greek_letter_tex: $\iota^1$
       bayer_designation_extension: 
                      bs_hr_number: 6615
    approx_rank_apparent_magnitude: 170
                apparent_magnitude: 2.99
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.71
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 17
           right_ascension_minutes: 48
           right_ascension_seconds: 52.8
     right_ascension_decimal_hours: 17.8147
   right_ascension_decimal_degrees: 267.22
               declination_degrees: -40
               declination_minutes: 7
               declination_seconds: 56
       declination_decimal_degrees: -40.1322
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 167. row ***************************
                       common_name: Alniyat
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 20
    bayer_designation_greek_letter: sigma
bayer_designation_greek_letter_tex: $\sigma$
       bayer_designation_extension: 
                      bs_hr_number: 6084
    approx_rank_apparent_magnitude: 156
                apparent_magnitude: 2.9
         apparent_magnitude_varies: 1
                absolute_magnitude: -3.86
         absolute_magnitude_varies: 1
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 16
           right_ascension_minutes: 22
           right_ascension_seconds: 19
     right_ascension_decimal_hours: 16.3719
   right_ascension_decimal_degrees: 245.579
               declination_degrees: -25
               declination_minutes: 38
               declination_seconds: 0
       declination_decimal_degrees: -25.6333
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 168. row ***************************
                       common_name: Dschubba
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 7
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 5953
    approx_rank_apparent_magnitude: 76
                apparent_magnitude: 2.29
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.16
         absolute_magnitude_varies: 0
        constellation_abbreviation: Sco
           constellation_full_name: Scorpius
       constellation_name_genitive: Scorpii
              constellation_number: 33
             right_ascension_hours: 16
           right_ascension_minutes: 1
           right_ascension_seconds: 25.8
     right_ascension_decimal_hours: 16.0238
   right_ascension_decimal_degrees: 240.357
               declination_degrees: -22
               declination_minutes: 40
               declination_seconds: 2
       declination_decimal_degrees: -22.6672
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 169. row ***************************
                       common_name: Unukalhai
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 24
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 5854
    approx_rank_apparent_magnitude: 103
                apparent_magnitude: 2.63
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.87
         absolute_magnitude_varies: 0
        constellation_abbreviation: Ser
           constellation_full_name: Serpens
       constellation_name_genitive: Serpentis
              constellation_number: 23
             right_ascension_hours: 15
           right_ascension_minutes: 45
           right_ascension_seconds: 10.8
     right_ascension_decimal_hours: 15.753
   right_ascension_decimal_degrees: 236.295
               declination_degrees: 6
               declination_minutes: 22
               declination_seconds: 0
       declination_decimal_degrees: 6.36667
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 170. row ***************************
                       common_name: Alcyone
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 25
    bayer_designation_greek_letter: eta
bayer_designation_greek_letter_tex: $\eta$
       bayer_designation_extension: 
                      bs_hr_number: 1165
    approx_rank_apparent_magnitude: 143
                apparent_magnitude: 2.85
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.41
         absolute_magnitude_varies: 0
        constellation_abbreviation: Tau
           constellation_full_name: Taurus
       constellation_name_genitive: Tauri
              constellation_number: 17
             right_ascension_hours: 3
           right_ascension_minutes: 48
           right_ascension_seconds: 35.3
     right_ascension_decimal_hours: 3.80981
   right_ascension_decimal_degrees: 57.1471
               declination_degrees: 24
               declination_minutes: 9
               declination_seconds: 4
       declination_decimal_degrees: 24.1511
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 171. row ***************************
                       common_name: Aldebaran
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 87
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 1457
    approx_rank_apparent_magnitude: 14
                apparent_magnitude: 0.86
         apparent_magnitude_varies: 1
                absolute_magnitude: -0.64
         absolute_magnitude_varies: 1
        constellation_abbreviation: Tau
           constellation_full_name: Taurus
       constellation_name_genitive: Tauri
              constellation_number: 17
             right_ascension_hours: 4
           right_ascension_minutes: 36
           right_ascension_seconds: 59.1
     right_ascension_decimal_hours: 4.61642
   right_ascension_decimal_degrees: 69.2463
               declination_degrees: 16
               declination_minutes: 32
               declination_seconds: 4
       declination_decimal_degrees: 16.5344
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 172. row ***************************
                       common_name: Elnath
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 112
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 1791
    approx_rank_apparent_magnitude: 27
                apparent_magnitude: 1.66
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.36
         absolute_magnitude_varies: 0
        constellation_abbreviation: Tau
           constellation_full_name: Taurus
       constellation_name_genitive: Tauri
              constellation_number: 17
             right_ascension_hours: 5
           right_ascension_minutes: 27
           right_ascension_seconds: 27.8
     right_ascension_decimal_hours: 5.45772
   right_ascension_decimal_degrees: 81.8658
               declination_degrees: 28
               declination_minutes: 37
               declination_seconds: 1
       declination_decimal_degrees: 28.6169
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 173. row ***************************
                       common_name: Alheka
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 123
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 1910
    approx_rank_apparent_magnitude: 166
                apparent_magnitude: 2.97
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.56
         absolute_magnitude_varies: 0
        constellation_abbreviation: Tau
           constellation_full_name: Taurus
       constellation_name_genitive: Tauri
              constellation_number: 17
             right_ascension_hours: 5
           right_ascension_minutes: 38
           right_ascension_seconds: 45.1
     right_ascension_decimal_hours: 5.64586
   right_ascension_decimal_degrees: 84.6879
               declination_degrees: 21
               declination_minutes: 9
               declination_seconds: 0
       declination_decimal_degrees: 21.15
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 174. row ***************************
                       common_name: $\beta$ Trianguli
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 4
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 622
    approx_rank_apparent_magnitude: 172
                apparent_magnitude: 3
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.09
         absolute_magnitude_varies: 0
        constellation_abbreviation: Tri
           constellation_full_name: Triangulum
       constellation_name_genitive: Trianguli
              constellation_number: 78
             right_ascension_hours: 2
           right_ascension_minutes: 10
           right_ascension_seconds: 39.1
     right_ascension_decimal_hours: 2.17753
   right_ascension_decimal_degrees: 32.663
               declination_degrees: 35
               declination_minutes: 4
               declination_seconds: 2
       declination_decimal_degrees: 35.0672
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 175. row ***************************
                       common_name: $\beta$ Trianguli Australis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 5897
    approx_rank_apparent_magnitude: 139
                apparent_magnitude: 2.83
         apparent_magnitude_varies: 0
                absolute_magnitude: 2.38
         absolute_magnitude_varies: 0
        constellation_abbreviation: TrA
           constellation_full_name: Triangulum Australe
       constellation_name_genitive: Trianguli Australis
              constellation_number: 83
             right_ascension_hours: 15
           right_ascension_minutes: 56
           right_ascension_seconds: 47.3
     right_ascension_decimal_hours: 15.9465
   right_ascension_decimal_degrees: 239.197
               declination_degrees: -63
               declination_minutes: 29
               declination_seconds: 9
       declination_decimal_degrees: -63.4858
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 176. row ***************************
                       common_name: Atria
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 6217
    approx_rank_apparent_magnitude: 42
                apparent_magnitude: 1.92
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.61
         absolute_magnitude_varies: 0
        constellation_abbreviation: TrA
           constellation_full_name: Triangulum Australe
       constellation_name_genitive: Trianguli Australis
              constellation_number: 83
             right_ascension_hours: 16
           right_ascension_minutes: 48
           right_ascension_seconds: 39.8951
     right_ascension_decimal_hours: 16.8111
   right_ascension_decimal_degrees: 252.166
               declination_degrees: -69
               declination_minutes: 1
               declination_seconds: 39.7626
       declination_decimal_degrees: -69.0277
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 177. row ***************************
                       common_name: $\gamma$ Trianguli Australis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 5671
    approx_rank_apparent_magnitude: 149
                apparent_magnitude: 2.87
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.87
         absolute_magnitude_varies: 0
        constellation_abbreviation: TrA
           constellation_full_name: Triangulum Australe
       constellation_name_genitive: Trianguli Australis
              constellation_number: 0
             right_ascension_hours: 15
           right_ascension_minutes: 18
           right_ascension_seconds: 54.582
     right_ascension_decimal_hours: 15.3152
   right_ascension_decimal_degrees: 229.728
               declination_degrees: -68
               declination_minutes: 40
               declination_seconds: 46.3654
       declination_decimal_degrees: -68.6795
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 178. row ***************************
                       common_name: $\alpha$ Tucan{\ae}
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 8502
    approx_rank_apparent_magnitude: 150
                apparent_magnitude: 2.87
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.05
         absolute_magnitude_varies: 0
        constellation_abbreviation: Tuc
           constellation_full_name: Tucana
       constellation_name_genitive: Tucanae
              constellation_number: 48
             right_ascension_hours: 22
           right_ascension_minutes: 19
           right_ascension_seconds: 45.2
     right_ascension_decimal_hours: 22.3292
   right_ascension_decimal_degrees: 334.938
               declination_degrees: -60
               declination_minutes: 10
               declination_seconds: 0
       declination_decimal_degrees: -60.1667
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 179. row ***************************
                       common_name: Talita
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 9
    bayer_designation_greek_letter: iota
bayer_designation_greek_letter_tex: $\iota$
       bayer_designation_extension: 
                      bs_hr_number: 3569
    approx_rank_apparent_magnitude: 194
                apparent_magnitude: 3.12
         apparent_magnitude_varies: 0
                absolute_magnitude: 2.29
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMa
           constellation_full_name: Ursa Major
       constellation_name_genitive: Ursae Majoris
              constellation_number: 3
             right_ascension_hours: 9
           right_ascension_minutes: 0
           right_ascension_seconds: 28
     right_ascension_decimal_hours: 9.00778
   right_ascension_decimal_degrees: 135.117
               declination_degrees: 47
               declination_minutes: 58
               declination_seconds: 0
       declination_decimal_degrees: 47.9667
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 180. row ***************************
                       common_name: Tania Australis
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 34
    bayer_designation_greek_letter: mu
bayer_designation_greek_letter_tex: $\mu$
       bayer_designation_extension: 
                      bs_hr_number: 4069
    approx_rank_apparent_magnitude: 186
                apparent_magnitude: 3.06
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.35
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMa
           constellation_full_name: Ursa Major
       constellation_name_genitive: Ursae Majoris
              constellation_number: 3
             right_ascension_hours: 10
           right_ascension_minutes: 23
           right_ascension_seconds: 25.5
     right_ascension_decimal_hours: 10.3904
   right_ascension_decimal_degrees: 155.856
               declination_degrees: 41
               declination_minutes: 24
               declination_seconds: 2
       declination_decimal_degrees: 41.4006
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 1
                             notes: 
*************************** 181. row ***************************
                       common_name: Merak
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 48
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 4295
    approx_rank_apparent_magnitude: 80
                apparent_magnitude: 2.34
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.41
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMa
           constellation_full_name: Ursa Major
       constellation_name_genitive: Ursae Majoris
              constellation_number: 3
             right_ascension_hours: 11
           right_ascension_minutes: 2
           right_ascension_seconds: 56.8
     right_ascension_decimal_hours: 11.0491
   right_ascension_decimal_degrees: 165.736
               declination_degrees: 56
               declination_minutes: 16
               declination_seconds: 5
       declination_decimal_degrees: 56.2681
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 182. row ***************************
                       common_name: Dubhe
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 50
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 4301
    approx_rank_apparent_magnitude: 34
                apparent_magnitude: 1.8
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.09
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMa
           constellation_full_name: Ursa Major
       constellation_name_genitive: Ursae Majoris
              constellation_number: 3
             right_ascension_hours: 11
           right_ascension_minutes: 4
           right_ascension_seconds: 51.2
     right_ascension_decimal_hours: 11.0809
   right_ascension_decimal_degrees: 166.214
               declination_degrees: 61
               declination_minutes: 39
               declination_seconds: 0
       declination_decimal_degrees: 61.65
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 183. row ***************************
                       common_name: $\psi$ Ursae Majoris
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 52
    bayer_designation_greek_letter: psi
bayer_designation_greek_letter_tex: $\psi$
       bayer_designation_extension: 
                      bs_hr_number: 4335
    approx_rank_apparent_magnitude: 173
                apparent_magnitude: 3
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.27
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMa
           constellation_full_name: Ursa Major
       constellation_name_genitive: Ursae Majoris
              constellation_number: 3
             right_ascension_hours: 11
           right_ascension_minutes: 10
           right_ascension_seconds: 41.8
     right_ascension_decimal_hours: 11.1783
   right_ascension_decimal_degrees: 167.674
               declination_degrees: 44
               declination_minutes: 23
               declination_seconds: 5
       declination_decimal_degrees: 44.3847
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 184. row ***************************
                       common_name: Phecda
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 64
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 4554
    approx_rank_apparent_magnitude: 85
                apparent_magnitude: 2.41
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.36
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMa
           constellation_full_name: Ursa Major
       constellation_name_genitive: Ursae Majoris
              constellation_number: 3
             right_ascension_hours: 11
           right_ascension_minutes: 54
           right_ascension_seconds: 47.8
     right_ascension_decimal_hours: 11.9133
   right_ascension_decimal_degrees: 178.699
               declination_degrees: 53
               declination_minutes: 35
               declination_seconds: 3
       declination_decimal_degrees: 53.5842
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 185. row ***************************
                       common_name: Alioth
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 77
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 4905
    approx_rank_apparent_magnitude: 32
                apparent_magnitude: 1.77
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.2
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMa
           constellation_full_name: Ursa Major
       constellation_name_genitive: Ursae Majoris
              constellation_number: 3
             right_ascension_hours: 12
           right_ascension_minutes: 54
           right_ascension_seconds: 50.3
     right_ascension_decimal_hours: 12.914
   right_ascension_decimal_degrees: 193.71
               declination_degrees: 55
               declination_minutes: 51
               declination_seconds: 3
       declination_decimal_degrees: 55.8508
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 186. row ***************************
                       common_name: Mizar
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 79
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
       bayer_designation_extension: 
                      bs_hr_number: 5054
    approx_rank_apparent_magnitude: 69
                apparent_magnitude: 2.23
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.33
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMa
           constellation_full_name: Ursa Major
       constellation_name_genitive: Ursae Majoris
              constellation_number: 3
             right_ascension_hours: 13
           right_ascension_minutes: 24
           right_ascension_seconds: 40.1
     right_ascension_decimal_hours: 13.4111
   right_ascension_decimal_degrees: 201.167
               declination_degrees: 54
               declination_minutes: 49
               declination_seconds: 4
       declination_decimal_degrees: 54.8178
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 187. row ***************************
                       common_name: Alkaid
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 85
    bayer_designation_greek_letter: eta
bayer_designation_greek_letter_tex: $\eta$
       bayer_designation_extension: 
                      bs_hr_number: 5191
    approx_rank_apparent_magnitude: 38
                apparent_magnitude: 1.86
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.59
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMa
           constellation_full_name: Ursa Major
       constellation_name_genitive: Ursae Majoris
              constellation_number: 3
             right_ascension_hours: 13
           right_ascension_minutes: 48
           right_ascension_seconds: 16.1
     right_ascension_decimal_hours: 13.8045
   right_ascension_decimal_degrees: 207.067
               declination_degrees: 49
               declination_minutes: 13
               declination_seconds: 1
       declination_decimal_degrees: 49.2169
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 188. row ***************************
                       common_name: Polaris
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 1
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 424
    approx_rank_apparent_magnitude: 48
                apparent_magnitude: 1.99
         apparent_magnitude_varies: 1
                absolute_magnitude: -3.62
         absolute_magnitude_varies: 1
        constellation_abbreviation: UMi
           constellation_full_name: Ursa Minor
       constellation_name_genitive: Ursae Minoris
              constellation_number: 56
             right_ascension_hours: 2
           right_ascension_minutes: 55
           right_ascension_seconds: 0
     right_ascension_decimal_hours: 2.91667
   right_ascension_decimal_degrees: 43.75
               declination_degrees: 89
               declination_minutes: 20
               declination_seconds: 3
       declination_decimal_degrees: 89.3342
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 189. row ***************************
                       common_name: Kochab
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 7
    bayer_designation_greek_letter: beta
bayer_designation_greek_letter_tex: $\beta$
       bayer_designation_extension: 
                      bs_hr_number: 5563
    approx_rank_apparent_magnitude: 57
                apparent_magnitude: 2.07
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.87
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMi
           constellation_full_name: Ursa Minor
       constellation_name_genitive: Ursae Minoris
              constellation_number: 56
             right_ascension_hours: 14
           right_ascension_minutes: 50
           right_ascension_seconds: 40.2
     right_ascension_decimal_hours: 14.8445
   right_ascension_decimal_degrees: 222.667
               declination_degrees: 74
               declination_minutes: 4
               declination_seconds: 4
       declination_decimal_degrees: 74.0678
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 190. row ***************************
                       common_name: Pherkad Major
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 13
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 5735
    approx_rank_apparent_magnitude: 174
                apparent_magnitude: 3
         apparent_magnitude_varies: 0
                absolute_magnitude: -2.84
         absolute_magnitude_varies: 0
        constellation_abbreviation: UMi
           constellation_full_name: Ursa Minor
       constellation_name_genitive: Ursae Minoris
              constellation_number: 56
             right_ascension_hours: 15
           right_ascension_minutes: 20
           right_ascension_seconds: 42.8
     right_ascension_decimal_hours: 15.3452
   right_ascension_decimal_degrees: 230.178
               declination_degrees: 71
               declination_minutes: 46
               declination_seconds: 0
       declination_decimal_degrees: 71.7667
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 191. row ***************************
                       common_name: $\mu$ Velorum
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: mu
bayer_designation_greek_letter_tex: $\mu$
       bayer_designation_extension: 
                      bs_hr_number: 4216
    approx_rank_apparent_magnitude: 113
                apparent_magnitude: 2.69
         apparent_magnitude_varies: 0
                absolute_magnitude: -0.06
         absolute_magnitude_varies: 0
        constellation_abbreviation: Vel
           constellation_full_name: Vela
       constellation_name_genitive: Velorum
              constellation_number: 32
             right_ascension_hours: 10
           right_ascension_minutes: 47
           right_ascension_seconds: 34.2
     right_ascension_decimal_hours: 10.7928
   right_ascension_decimal_degrees: 161.892
               declination_degrees: -49
               declination_minutes: 31
               declination_seconds: 6
       declination_decimal_degrees: -49.5183
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 192. row ***************************
                       common_name: Koo She
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: delta
bayer_designation_greek_letter_tex: $\delta$
       bayer_designation_extension: 
                      bs_hr_number: 3485
    approx_rank_apparent_magnitude: 45
                apparent_magnitude: 1.95
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.01
         absolute_magnitude_varies: 0
        constellation_abbreviation: Vel
           constellation_full_name: Vela
       constellation_name_genitive: Velorum
              constellation_number: 32
             right_ascension_hours: 8
           right_ascension_minutes: 45
           right_ascension_seconds: 12.9
     right_ascension_decimal_hours: 8.75358
   right_ascension_decimal_degrees: 131.304
               declination_degrees: -54
               declination_minutes: 46
               declination_seconds: 38
       declination_decimal_degrees: -54.7772
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 193. row ***************************
                       common_name: Regor
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: gamma
bayer_designation_greek_letter_tex: $\gamma$
       bayer_designation_extension: 
                      bs_hr_number: 0
    approx_rank_apparent_magnitude: 35
                apparent_magnitude: 1.81
         apparent_magnitude_varies: 0
                absolute_magnitude: -5.25
         absolute_magnitude_varies: 0
        constellation_abbreviation: Vel
           constellation_full_name: Vela
       constellation_name_genitive: Velorum
              constellation_number: 32
             right_ascension_hours: 8
           right_ascension_minutes: 9
           right_ascension_seconds: 31.9501
     right_ascension_decimal_hours: 8.15888
   right_ascension_decimal_degrees: 122.383
               declination_degrees: -47
               declination_minutes: 20
               declination_seconds: 11.7108
       declination_decimal_degrees: -47.3366
                         is_binary: 0
                       is_multiple: 4
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 194. row ***************************
                       common_name: N Velorum
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: N
bayer_designation_greek_letter_tex: 
       bayer_designation_extension: 
                      bs_hr_number: 3803
    approx_rank_apparent_magnitude: 199
                apparent_magnitude: 3.16
         apparent_magnitude_varies: 0
                absolute_magnitude: -1.15
         absolute_magnitude_varies: 0
        constellation_abbreviation: Vel
           constellation_full_name: Vela
       constellation_name_genitive: Velorum
              constellation_number: 0
             right_ascension_hours: 9
           right_ascension_minutes: 31
           right_ascension_seconds: 13.3189
     right_ascension_decimal_hours: 9.52037
   right_ascension_decimal_degrees: 142.806
               declination_degrees: -57
               declination_minutes: 2
               declination_seconds: 3.7578
       declination_decimal_degrees: -57.0344
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 195. row ***************************
                       common_name: Markeb
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: kappa
bayer_designation_greek_letter_tex: $\kappa$
       bayer_designation_extension: 
                      bs_hr_number: 3734
    approx_rank_apparent_magnitude: 90
                apparent_magnitude: 2.47
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.62
         absolute_magnitude_varies: 0
        constellation_abbreviation: Vel
           constellation_full_name: Vela
       constellation_name_genitive: Velorum
              constellation_number: 32
             right_ascension_hours: 9
           right_ascension_minutes: 22
           right_ascension_seconds: 41.2
     right_ascension_decimal_hours: 9.37811
   right_ascension_decimal_degrees: 140.672
               declination_degrees: -55
               declination_minutes: 5
               declination_seconds: 25
       declination_decimal_degrees: -55.0903
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 196. row ***************************
                       common_name: Suhail
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
    bayer_designation_greek_letter: lambda
bayer_designation_greek_letter_tex: $\lambda$
       bayer_designation_extension: 
                      bs_hr_number: 3634
    approx_rank_apparent_magnitude: 68
                apparent_magnitude: 2.23
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.99
         absolute_magnitude_varies: 0
        constellation_abbreviation: Vel
           constellation_full_name: Vela
       constellation_name_genitive: Velorum
              constellation_number: 32
             right_ascension_hours: 9
           right_ascension_minutes: 8
           right_ascension_seconds: 40.7
     right_ascension_decimal_hours: 9.14464
   right_ascension_decimal_degrees: 137.17
               declination_degrees: -43
               declination_minutes: 30
               declination_seconds: 29
       declination_decimal_degrees: -43.5081
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 197. row ***************************
                       common_name: Vindemiatrix
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 47
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
       bayer_designation_extension: 
                      bs_hr_number: 4932
    approx_rank_apparent_magnitude: 144
                apparent_magnitude: 2.85
         apparent_magnitude_varies: 0
                absolute_magnitude: 0.37
         absolute_magnitude_varies: 0
        constellation_abbreviation: Vir
           constellation_full_name: Virgo
       constellation_name_genitive: Virginis
              constellation_number: 2
             right_ascension_hours: 13
           right_ascension_minutes: 3
           right_ascension_seconds: 5.9
     right_ascension_decimal_hours: 13.0516
   right_ascension_decimal_degrees: 195.774
               declination_degrees: 10
               declination_minutes: 51
               declination_seconds: 3
       declination_decimal_degrees: 10.8508
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 198. row ***************************
                       common_name: Spica
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 67
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
       bayer_designation_extension: 
                      bs_hr_number: 5056
    approx_rank_apparent_magnitude: 16
                apparent_magnitude: 0.97
         apparent_magnitude_varies: 0
                absolute_magnitude: -3.56
         absolute_magnitude_varies: 0
        constellation_abbreviation: Vir
           constellation_full_name: Virgo
       constellation_name_genitive: Virginis
              constellation_number: 2
             right_ascension_hours: 13
           right_ascension_minutes: 26
           right_ascension_seconds: 10.2
     right_ascension_decimal_hours: 13.4362
   right_ascension_decimal_degrees: 201.543
               declination_degrees: -11
               declination_minutes: 15
               declination_seconds: 2
       declination_decimal_degrees: -11.2506
                         is_binary: 0
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
*************************** 199. row ***************************
                       common_name: Porrima
                        greek_name: 
                        latin_name: 
                       arabic_name: 
      flamsteed_designation_number: 0
        constellation_abbreviation: Vir
           constellation_full_name: Virgo
       constellation_name_genitive: Virginis
              constellation_number: 2
                         is_binary: 1
                       is_multiple: 0
               is_binary_component: 0
               is_eclipsing_binary: 0
                             notes: 
199 rows in set (0.00 sec)

select distinct constellation_full_name from Stars where approx_rank_apparent_magnitude > 0
and approx_rank_apparent_magnitude <= 200 order by constellation_full_name;


select distinct constellation_full_name, constellation_name_genitive, constellation_abbreviation
from Stars order by constellation_full_name;

select approx_rank_apparent_magnitude, common_name,
bayer_designation_greek_letter, bayer_designation_greek_letter_tex,
constellation_full_name, bs_hr_number, apparent_magnitude,
apparent_magnitude_varies, absolute_magnitude,
absolute_magnitude_varies, right_ascension_hours,
right_ascension_minutes, right_ascension_seconds,
right_ascension_decimal_hours, right_ascension_decimal_degrees,
declination_degrees, declination_minutes, declination_seconds,
declination_decimal_degrees from Stars where approx_rank_apparent_magnitude > 200
and approx_rank_apparent_magnitude <= 210 order by approx_rank_apparent_magnitude\G


*************************** 1. row ***************************
    approx_rank_apparent_magnitude: 201
                       common_name: 
    bayer_designation_greek_letter: nu
bayer_designation_greek_letter_tex: $\nu$
           constellation_full_name: Puppis
                      bs_hr_number: 2451
                apparent_magnitude: 1000
         apparent_magnitude_varies: 0
                absolute_magnitude: 0
         absolute_magnitude_varies: 0
             right_ascension_hours: 6
           right_ascension_minutes: 38
           right_ascension_seconds: 19.7
     right_ascension_decimal_hours: 6.63881
   right_ascension_decimal_degrees: 99.5822
               declination_degrees: -43
               declination_minutes: 12
               declination_seconds: 47
       declination_decimal_degrees: -43.2131
*************************** 2. row ***************************
    approx_rank_apparent_magnitude: 202
                       common_name: Al Haud
    bayer_designation_greek_letter: theta
bayer_designation_greek_letter_tex: $\theta$
           constellation_full_name: Ursa Major
                      bs_hr_number: 3775
                apparent_magnitude: 1000
         apparent_magnitude_varies: 0
                absolute_magnitude: 0
         absolute_magnitude_varies: 0
             right_ascension_hours: 9
           right_ascension_minutes: 34
           right_ascension_seconds: 5.1
     right_ascension_decimal_hours: 9.56808
   right_ascension_decimal_degrees: 143.521
               declination_degrees: 51
               declination_minutes: 35
               declination_seconds: 3
       declination_decimal_degrees: 51.5842
*************************** 3. row ***************************
    approx_rank_apparent_magnitude: 203
                       common_name: Aldhibah
    bayer_designation_greek_letter: zeta
bayer_designation_greek_letter_tex: $\zeta$
           constellation_full_name: Draco
                      bs_hr_number: 6396
                apparent_magnitude: 1000
         apparent_magnitude_varies: 0
                absolute_magnitude: 0
         absolute_magnitude_varies: 0
             right_ascension_hours: 17
           right_ascension_minutes: 8
           right_ascension_seconds: 50.6
     right_ascension_decimal_hours: 17.1474
   right_ascension_decimal_degrees: 257.211
               declination_degrees: 65
               declination_minutes: 41
               declination_seconds: 3
       declination_decimal_degrees: 65.6842
*************************** 4. row ***************************
    approx_rank_apparent_magnitude: 204
                       common_name: 
    bayer_designation_greek_letter: phi
bayer_designation_greek_letter_tex: $\phi$
           constellation_full_name: Sagittarius
                      bs_hr_number: 7039
                apparent_magnitude: 1000
         apparent_magnitude_varies: 0
                absolute_magnitude: 0
         absolute_magnitude_varies: 0
             right_ascension_hours: 18
           right_ascension_minutes: 46
           right_ascension_seconds: 48.7
     right_ascension_decimal_hours: 18.7802
   right_ascension_decimal_degrees: 281.703
               declination_degrees: -26
               declination_minutes: 58
               declination_seconds: 1
       declination_decimal_degrees: -26.9669
*************************** 5. row ***************************
    approx_rank_apparent_magnitude: 205
                       common_name: Hoedus II
    bayer_designation_greek_letter: eta
bayer_designation_greek_letter_tex: $\eta$
           constellation_full_name: Auriga
                      bs_hr_number: 1641
                apparent_magnitude: 1000
         apparent_magnitude_varies: 0
                absolute_magnitude: 0
         absolute_magnitude_varies: 0
             right_ascension_hours: 5
           right_ascension_minutes: 7
           right_ascension_seconds: 48.9
     right_ascension_decimal_hours: 5.13025
   right_ascension_decimal_degrees: 76.9538
               declination_degrees: 41
               declination_minutes: 15
               declination_seconds: 2
       declination_decimal_degrees: 41.2506
*************************** 6. row ***************************
    approx_rank_apparent_magnitude: 206
                       common_name: 
    bayer_designation_greek_letter: alpha
bayer_designation_greek_letter_tex: $\alpha$
           constellation_full_name: Circinus
                      bs_hr_number: 5463
                apparent_magnitude: 1000
         apparent_magnitude_varies: 0
                absolute_magnitude: 0
         absolute_magnitude_varies: 0
             right_ascension_hours: 14
           right_ascension_minutes: 44
           right_ascension_seconds: 1.4
     right_ascension_decimal_hours: 14.7337
   right_ascension_decimal_degrees: 221.005
               declination_degrees: -65
               declination_minutes: 3
               declination_seconds: 15
       declination_decimal_degrees: -65.0542
*************************** 7. row ***************************
    approx_rank_apparent_magnitude: 208
                       common_name: 
    bayer_designation_greek_letter: epsilon
bayer_designation_greek_letter_tex: $\epsilon$
           constellation_full_name: Lepus
                      bs_hr_number: 1654
                apparent_magnitude: 1000
         apparent_magnitude_varies: 0
                absolute_magnitude: 0
         absolute_magnitude_varies: 0
             right_ascension_hours: 5
           right_ascension_minutes: 6
           right_ascension_seconds: 14.7
     right_ascension_decimal_hours: 5.10408
   right_ascension_decimal_degrees: 76.5612
               declination_degrees: -22
               declination_minutes: 20
               declination_seconds: 5
       declination_decimal_degrees: -22.3347
*************************** 8. row ***************************
    approx_rank_apparent_magnitude: 209
                       common_name: 
    bayer_designation_greek_letter: kappa
bayer_designation_greek_letter_tex: $\kappa$
           constellation_full_name: Ophiuchus
                      bs_hr_number: 6299
                apparent_magnitude: 1000
         apparent_magnitude_varies: 0
                absolute_magnitude: 0
         absolute_magnitude_varies: 0
             right_ascension_hours: 16
           right_ascension_minutes: 58
           right_ascension_seconds: 32.7
     right_ascension_decimal_hours: 16.9757
   right_ascension_decimal_degrees: 254.635
               declination_degrees: 9
               declination_minutes: 20
               declination_seconds: 5
       declination_decimal_degrees: 9.33472
*************************** 9. row ***************************
    approx_rank_apparent_magnitude: 210
                       common_name: 
    bayer_designation_greek_letter: G
bayer_designation_greek_letter_tex: 
           constellation_full_name: Scorpius
                      bs_hr_number: 6630
                apparent_magnitude: 1000
         apparent_magnitude_varies: 0
                absolute_magnitude: 0
         absolute_magnitude_varies: 0
             right_ascension_hours: 17
           right_ascension_minutes: 49
           right_ascension_seconds: 51.4808
     right_ascension_decimal_hours: 17.831
   right_ascension_decimal_degrees: 267.465
               declination_degrees: -37
               declination_minutes: 2
               declination_seconds: 35.8975
       declination_decimal_degrees: -37.0433


select "&&&";


select approx_rank_apparent_magnitude, common_name,
bayer_designation_greek_letter, bayer_designation_greek_letter_tex,
constellation_full_name, bs_hr_number, apparent_magnitude,
apparent_magnitude_varies, absolute_magnitude,
absolute_magnitude_varies, right_ascension_hours,
right_ascension_minutes, right_ascension_seconds,
right_ascension_decimal_hours, right_ascension_decimal_degrees,
declination_degrees, declination_minutes, declination_seconds,
declination_decimal_degrees from Stars where approx_rank_apparent_magnitude > 0
and approx_rank_apparent_magnitude <= 200 order by
approx_rank_apparent_magnitude\G

select approx_rank_apparent_magnitude from Stars where approx_rank_apparent_magnitude > 0
and approx_rank_apparent_magnitude <= 200 order by
approx_rank_apparent_magnitude\G

select approx_rank_apparent_magnitude, common_name from Stars where approx_rank_apparent_magnitude = 97;

select * from Stars where common_name = "Graffias"\G


from Stars where approx_rank_apparent_magnitude = 97;


replace into Stars (
common_name,
approx_rank_apparent_magnitude,
apparent_magnitude,
absolute_magnitude,
bayer_designation_greek_letter,
bayer_designation_greek_letter_tex,
constellation_name_genitive,
constellation_abbreviation,
constellation_full_name,
constellation_number,
right_ascension_hours,
right_ascension_minutes,
right_ascension_seconds,
declination_degrees,
declination_minutes,
declination_seconds,
is_multiple,
is_binary_component,
bs_hr_number
)
values (
"Graffias",
97,
2.56,
-3.50,
"beta",
"$\\beta$",
"Scorpii",
"Sco",
"Scorpius",
33,
16, -- Right ascension
5,
26.23198,
-19, -- Declination
48,
19.6300,
3,
1,
5984
);


delete from Stars where common_name = "Graffias"\G

select * from Stars where common_name = "Graffias"\G


https://en.wikipedia.org/wiki/Beta_Scorpii
show columns from Constellations;
select rank_constellation from Constellations where name = "Scorpius";

https://simbad.u-strasbg.fr/simbad/sim-id?Ident=beta+Sco

replace into Stars


97. Beta Scorpii              Graffias          16 05 -19.8  353.1 +23.7  B1V+B2V       2.56  -3.50    6.15 1.12   530



Apparent magnitude (V) 	2.62[2]

HR 5984

-- constellation_full_name, 


show columns from Stars;

select * from Stars where common_name = "sirius"\G

select * from Stars where approx_rank_apparent_magnitude > 0 order by approx_rank_apparent_magnitude
limit 1\G


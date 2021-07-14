/home/laurence/3DLDF-3.0/astronmy/stars_with_celestial_coordinates.txt

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

/* !! START HERE:  LDF 2021.06.16.  Get info for this star:  */ 

insert into Stars (approx_rank_apparent_magnitude, common_name, bayer_designation_greek_letter, constellation_name_genitive)
values (105,  "Zubenelgenubi", "Alpha", "Librae");

update Stars set constellation_full_name = "Libra" where common_name = "Zubenelgenubi";

update Stars set bs_hr_number = 5530 where common_name = "Zubenelgenubi";

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

Apparent magnitude (V) 	[2] (1.33 + 1.75)[3]

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

Constellation 	Vela
Right ascension 	08h 09m 31.95013s[1]
Declination 	–47° 20′ 11.7108″[1]
Apparent magnitude (V) 	1.83[2] (1.81 - 1.87[3])

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

Apparent magnitude (V) 	1.91[2]

HR 6217

/* *** (3) */

/* ** (2) */

A


Apparent magnitude (V) 	1.93[2]
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

-- Right ascension 	10h 19m 58.35056s[1]
-- Declination 	+19° 50′ 29.3468″[1]

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

Right ascension 	02h 03m 53.95229s[1]
Declination 	+42° 19′ 47.0223″[1]
Apparent magnitude (V) 	2.27[2]
quadruple star system


/* *** (3) Graffias  */

/* !! START HERE:  LDF 2021.07.13.  */ 

97. Beta Scorpii              Graffias          16 05 -19.8  353.1 +23.7  B1V+B2V       2.56  -3.50    6.15 1.12   530

/* *** (3) Delta Piscium  (for "quadrant" model (sample5)).  */

select * from Stars where declination_decimal_degrees > 0 and declination_decimal_degrees < 11.25 and
right_ascension_decimal_degrees > 0 and right_ascension_decimal_degrees < 22.5\G


update Stars set common_name = "$\\delta$ Piscium" where bs_hr_number = 224;

select * from Stars where common_name = "$\\delta$ Piscium"\G

apparent visual magnitude of +4.4,

HR 224,

-- common_name != ""\G
-- and approx_rank_apparent_magnitude > 0


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

/* * (1) */


/* Local Variables:            */
/* mode:SQL                    */
/* outline-minor-mode:t        */
/* outline-regexp:"/\\* [*]+" */
/* End:                        */


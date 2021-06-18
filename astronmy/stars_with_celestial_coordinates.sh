#! /bin/bash

#### * (1) Top

#### /home/laurence/3DLDF-3.0/astronmy/stars_with_celestial_coordinates.sh
#### Created by Laurence D. Finston (LDF) Wed 16 Jun 2021 10:14:31 AM CEST

#### * (1)

#### * (1) Copyright and License.

#### This file is part of GNU 3DLDF, a package for three-dimensional drawing.  
#### Copyright (C) 2021 The Free Software Foundation, Inc.

#### GNU 3DLDF is free software; you can redistribute it and/or modify 
#### it under the terms of the GNU General Public License as published by 
#### the Free Software Foundation; either version 3 of the License, or 
#### (at your option) any later version.  

#### GNU 3DLDF is distributed in the hope that it will be useful, 
#### but WITHOUT ANY WARRANTY; without even the implied warranty of 
#### MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
#### GNU General Public License for more details.  

#### You should have received a copy of the GNU General Public License 
#### along with GNU 3DLDF; if not, write to the Free Software 
#### Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

#### GNU 3DLDF is a GNU package.  
#### It is part of the GNU Project of the  
#### Free Software Foundation 
#### and is published under the GNU General Public License. 
#### See the website http://www.gnu.org 
#### for more information.   
#### GNU 3DLDF is available for downloading from 
#### http://www.gnu.org/software/3dldf/LDF.html.

#### Please send bug reports to Laurence.Finston@gmx.de
#### The mailing list help-3dldf@gnu.org is available for people to 
#### ask other users for help.  
#### The mailing list info-3dldf@gnu.org is for sending 
#### announcements to users. To subscribe to these mailing lists, send an 
#### email with ``subscribe <email-address>'' as the subject.  

#### The author can be contacted at: 

#### Laurence D. Finston 		   
#### c/o Free Software Foundation, Inc. 
#### 51 Franklin St, Fifth Floor 	   
#### Boston, MA  02110-1301  	   
#### USA                                

#### Laurence.Finston@gmx.de


echo "/* stars_output.sql */" > stars_output.sql
echo "" >> stars_output.sql

func1()
{
   echo $1 $2 $3

a=`echo "select bayer_designation_greek_letter from Stars where \
   bayer_designation_greek_letter = \"$2\" and constellation_name_genitive = \"$3\";" | mysql --batch --silent 3dldf`

echo "a == $a"

if test -z "$a" 
then
   echo "a is empty.  a == \"$a\""
   echo "$1 $2 $3" >> stars_output.sql
   echo >> stars_output.sql
else
   echo "a is non-empty.  a == \"$a\""
   echo "Sending update command to MySQL server."
   b=`echo "update Stars set approx_rank_apparent_magnitude = $1 where \
         bayer_designation_greek_letter = \"$2\" \
         and constellation_name_genitive = \"$3\";select row_count();" | mysql --batch --silent 3dldf`
   echo "Exit status of update command:  $?"
   echo "b == $b"
   if test "$b" == "1"
   then
      echo "Row changed."
   elif test "$b" == "0"
   then
      echo "No row changed."
   else
      echo "b not 0 or 1, invalid."
   fi
fi

echo 

}

#### !! START HERE!: LDF 2021.06.16.  Check this.

# -- Not found
# -- update Stars set approx_rank_apparent_magnitude = 130, common_name = "Cor Caroli" where bayer_designation_greek_letter = "Alpha"
# -- and constellation_name_genitive = "Canum Venaticorum";


func1 139 Beta "Trianguli Australis"
func1 149 Gamma "Trianguli Australis"
func1 172 Beta Trianguli 
func1 173 Psi "Ursae Majoris"           
func1 179 Omicron^2 "Canis Majoris"
func1 281 Sigma "Canis Majoris"
func1 286 Kappa "Canis Majoris"


exit 0


func1 75 Epsilon Centauri
func1 79 Eta Centauri
func1 75 Epsilon Centauri                             
func1 79 Eta Centauri                                
func1 99 Delta Centauri                               
func1 107 Theta Aurigae                               
func1 113 Mu Velorum                                  
func1 114 Alpha Muscae                                
func1 116 Pi Puppis                                   
func1 121 Theta Carinae                               
func1 124 Iota Centauri                               
func1 128 Delta Crucis                                
func1 131 Gamma Lupi                                  
func1 134 Beta Hydri                                  
func1 135 Tau Scorpii                                 
func1 139 Beta Trianguli Australis                    
func1 140 Zeta Persei                                 
func1 141 Beta Arae                                   
func1 147 Delta Cygni                                 
func1 149 Gamma Trianguli Australis                   
func1 150 Alpha Tucanae                               
func1 154 Pi Scorpii                                  
func1 155 Epsilon Persei                              
func1 159 Gamma Persei                                
func1 160 Upsilon Carinae                             
func1 162 Tau Puppis                                  
func1 169 Gamma Hydrae                                
func1 170 Iota^1 Scorpii                               
func1 172 Beta Trianguli                              
func1 173 Psi Ursae Majoris                           
func1 175 Mu^1 Scorpii
func1 176 Gamma Gruis                                 
func1 177 Delta Persei                                
func1 179 Omicron^2 Canis Majoris
func1 182 Beta Muscae                                 
func1 188 Eta Sagittarii                              
func1 189 Zeta Hydrae                                 
func1 190 Nu Hydrae                                   
func1 191 Lambda Centauri                             
func1 195 Zeta Arae                                   
func1 198 Alpha Lyncis                                
func1 199 N Velorum                                   
func1 200 Pi Herculis                                 
func1 201 Nu Puppis                                   
func1 204 Phi Sagittarii                              
func1 206 Alpha Circini                               
func1 208 Epsilon Leporis                             
func1 209 Kappa Ophiuchi                              
func1 210 G Scorpii                                   
func1 211 Zeta Cygni                                  
func1 213 Delta Lupi                                  
func1 217 Alpha Pictoris                              
func1 218 Theta Aquilae                               
func1 219 Sigma Puppis                                
func1 220 Pi Hydrae                                   
func1 223 Gamma Hydri                                 
func1 224 Delta Andromedae                            
func1 225 Theta Ophiuchi                              
func1 227 Mu Leporis                                  
func1 228 Omega Carinae                               
func1 230 Alpha Doradus                               
func1 231 p Carinae                                   
func1 232 Mu Centauri                                 
func1 235 Gamma Arae                                  
func1 236 Beta Phoenicis                              
func1 239 Eta Scorpii                                 
func1 240 Nu Ophiuchi                                 
func1 241 Tau Sagittarii                              
func1 242 Alpha Reticuli                              
func1 249 Delta Aquilae                               
func1 250 Epsilon Lupi                                
func1 252 Epsilon Hydrae                              
func1 254 q Carinae                                   
func1 256 Zeta Cephei                                 
func1 257 Theta^2 Tauri                                
func1 258 Gamma Phoenicis                             
func1 259 Lambda Tauri                                
func1 260 Nu Centauri                                 
func1 261 Zeta Lupi                                   
func1 262 Eta Cephei                                  
func1 265 Eta Lupi                                    
func1 266 Mu Herculis                                 
func1 267 Beta Pavonis                                
func1 268 a Carinae                                   
func1 275 Chi Carinae                                 
func1 276 Delta Bootis                                
func1 278 Eta Leonis                                  
func1 279 Eta Herculis                                
func1 280 Tau Ceti                                    
func1 281 Sigma Canis Majoris                         
func1 284 Alpha Telescopii                            
func1 285 Epsilon Gruis                               
func1 286 Kappa Canis Majoris
func1 288 Iota Cephei                                 
func1 289 Gamma Sagittae                              
func1 294 Xi^2 Sagittarii                              
func1 298 Xi Hydrae                                   
func1 299 Mu Serpentis                                
func1 300 Xi Serpentis                                

exit 0

#### * (1)

## Local Variables:
## mode:Text
## End:

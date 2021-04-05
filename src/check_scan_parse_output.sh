#! /bin/bash

#### check_scan_parse_output.sh
#### 3DLDF-2.0.4/src/check_scan_parse_output.sh
#### Created by Laurence D. Finston (LDF) Sun May 19 16:48:34 CEST 2013

#### * Copyright and License.

#### This file is part of GNU 3DLDF, a package for three-dimensional drawing. 
#### Copyright (C) 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021 The Free Software Foundation 

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

#echo "Arg 1 == $1"
#echo "Arg 2 == $2"

if test -e "$2"
then
   echo "$2 exists"
   diff --brief --ignore-all-space --ignore-blank-lines \
        --ignore-matching-lines='^[[:space:]]*\(#line\|/\*\)' $1 $2 
   r=$?
   if test $r -eq 1
   then
      echo "$2 has changed."
      mv $1 $2
   else
      echo "$2 is unchanged."
   fi
else
   echo "$2 does not exist"
   mv $1 $2
fi 

exit 0

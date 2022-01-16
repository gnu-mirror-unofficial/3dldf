#! /bin/bash

#### compile_parser.sh
#### /home/laurence/3DLDF-2.0.4/src/compile_parser.sh

#### Created Mon 22 Mar 2021 08:44:22 AM CET by Laurence D. Finston (LDF)

#### * Copyright and License.

#### This file is part of GNU 3DLDF, a package for three-dimensional drawing. 
#### Copyright (C) 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022 The Free Software Foundation, Inc.

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

#echo $1

if [ -f ./parser.o ];  
then 
    echo -n "parser.o exists. ";  
    echo -n "Do you want to compile parser.c++? (y/n) ";  ## Actually, any character other than 
    read X;                                               ## 'y' or 'Y' causes compilation to be skipped. 
    #echo "X == $X"; 
    if test $X == "y" || test $X == "Y"; 
    then
	make parser.c++
	echo "Compiling 'parser.c++'.  This may take awhile ... ";
	$1 -c -o parser.o parser.c++
    else 
	echo "Not compiling 'parser.c++'.";
    fi 
else 
    echo "parser.o doesn't exist.  Making parser.o"; 
    echo "Compiling 'parser.c++'.  This may take awhile ... ";
    $1 -c -o parser.o parser.c++
fi

#     if [[ $X -eq 'y' ]];
#     then
# 	echo "X == y";
#     else
# 	echo "X != y";
#     fi; 
# else
#     echo "parser.o doesn't exist.  Making parser.o"; 
#     echo "Compiling 'parser.c++'.  This may take awhile ... ";
# fi

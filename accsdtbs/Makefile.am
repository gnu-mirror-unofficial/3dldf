#### accsdtbs/Makefile.am
#### Created by Laurence D. Finston (LDF) Wed 15 Sep 2021 07:10:07 AM CEST

#### * Copyright and License.

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

#### Please send bug reports to Laurence.Finston@@gmx.de
#### The mailing list help-3dldf@gnu.org is available for people to 
#### ask other users for help.  
#### The mailing list info-3dldf@gnu.org is for sending 
#### announcements to users. To subscribe to these mailing lists, send an 
#### email with "subscribe <email-address>" as the subject.  

#### The author can be contacted at: 

#### Laurence D. Finston 
#### c/o Free Software Foundation, Inc. 
#### 51 Franklin St, Fifth Floor 
#### Boston, MA  02110-1301  
#### USA

#### Laurence.Finston@gmx.de 


## * Top.

# ** Variables.

#### Automatic Variables.  For more, see Section 10.5.3, "Automatic Variables"
#### of the Make info manual.
#### LDF 2009.12.29.

#### $@:  Target
#### $<:  First prerequisite
#### $^:  The names of all the prerequisites, with spaces between them.
#### $*:  The stem with which an implicit rule matches

## * (1) Top.

# ** (2) Variables.

bin_PROGRAMS = accsdtbs$(EXEEXT)

accsdtbs_SOURCES = accsdtbs.web accsgtpt.web

EXTRA_DIST = accsdtbs.cxx accsgtpt.cxx accsgtpt.hxx Makefile.in

CLEANFILES := accsdtbs.cxx accsgtpt.cxx accsgtpt.hxx accsdtbs.o accsgtpt.o
 
AM_CXXFLAGS = -fpermissive -fdiagnostics-show-option -Wno-return-type

# AM_LDFLAGS = -lgsl -lgslcblas -lm #### Using this didn't work.  LIBS must passed 
#                                   #### to 'configure'.  LDF 2013.11.06.

#### ** (2) Rules

starinfo_constellations.tex: accsdtbs$(EXEEXT)
	accsdtbs$(EXEEXT) --stars-query --limit 200 --write-tex --constellation-sort

.PHONY: run

run: accsdtbs$(EXEEXT)
	accsdtbs$(EXEEXT) --stars-query --limit 200 --write-tex --constellation-sort

accsdtbs$(EXEEXT): accsdtbs.o accsgtpt.o
	g++ -o $@ $^ -lmysqlclient

accsdtbs.o: accsdtbs.cxx accsgtpt.hxx
	g++ -I/usr/include/mysql -c -o accsdtbs.o accsdtbs.cxx

accsdtbs.cxx: accsdtbs.web
	$(CTANGLE) accsdtbs.web - accsdtbs.cxx

accsgtpt.o: accsgtpt.cxx 
	g++ -I/usr/include/mysql -c -o accsgtpt.o accsgtpt.cxx

accsgtpt.cxx accsgtpt.hxx: accsgtpt.web
	$(CTANGLE) accsgtpt.web - accsgtpt.cxx

.PHONY: purge-a

purge-a:
	rm -f accsdtbs.cxx accsdtbs.o accsdtbs$(EXEEXT) accsgtpt.cxx accsgtpt.hxx accsgtpt.o


# 
# @echo "CXX == $(CXX)"
# @echo "CXXLINK == $(CXXLINK)"
# @echo "CXXFLAGS == $(CXXFLAGS)"

## Local Variables:
## mode:Makefile
## outline-minor-mode:t
## outline-regexp:"## *\\*+"
## abbrev-mode:t
## End:

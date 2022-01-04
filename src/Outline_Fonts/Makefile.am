#### src/Outline_Fonts/Makefile.am
#### Created by Laurence D. Finston (LDF) Fri 24 Dec 2021 07:16:44 AM CET

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


## * (1) Top.

# ** (2) Variables.

#### Automatic Variables.  For more, see Section 10.5.3, "Automatic Variables"
#### of the Make info manual.
#### LDF 2009.12.29.

#### $@:  Target
#### $<:  First prerequisite
#### $^:  The names of all the prerequisites, with spaces between them.
#### $*:  The stem with which an implicit rule matches

.PHONY: eps
.PHONY: dvi
.PHONY: ps
.PHONY: pdf

eps: ttemp065.eps # hollow_ssb065.eps # 
dvi: ttemp.dvi    # hollow_ssb.dvi    # 
ps:  ttemp.ps     # hollow_ssb.ps     #  
pdf: ttemp.pdf    # hollow_ssb.pdf    #

ttemp065.eps ttemp165.eps: ttemp.mp outline_ttemp.mac
	mpost -tex=etex -numbersystem "double" ttemp.mp

ttemp.dvi: ttemp.txt ttemp065.eps ttemp165.eps
	tex ttemp.txt

ttemp.ps: ttemp.dvi
	dvips -o ttemp.ps ttemp.dvi

ttemp.pdf: ttemp.ps
	ps2pdf ttemp.ps

hollow_ssb065.eps hollow_ssb165.eps: hollow_ssb.mp outline_hollow_ssb.mac
	mpost -tex=etex -numbersystem "double" hollow_ssb.mp

hollow_ssb.dvi: hollow_ssb.txt hollow_ssb065.eps hollow_ssb165.eps
	tex hollow_ssb.txt

hollow_ssb.ps: hollow_ssb.dvi
	dvips -o hollow_ssb.ps hollow_ssb.dvi

hollow_ssb.pdf: hollow_ssb.ps
	ps2pdf hollow_ssb.ps
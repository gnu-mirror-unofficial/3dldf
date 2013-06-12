#### Makefile.am
#### [...]/3dldf/doc/Makefile.am
 
#### This file is part of 3DLDF, a package for three-dimensional drawing. 
#### Copyright (C) 2013 The Free Software Foundation

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

#### ("@@" stands for a single at-sign in the following paragraph.) 

#### Please send bug reports to Laurence.Finston@@gmx.de
#### The mailing list help-3dldf@@gnu.org is available for people to 
#### ask other users for help.  
#### The mailing list info-3dldf@@gnu.org is for sending 
#### announcements to users. To subscribe to these mailing lists, send an 
#### email with ``subscribe <email-address>'' as the subject.  

#### The author can be contacted at: 

#### Laurence D. Finston                  
#### c/o Free Software Foundation, Inc.  
#### 51 Franklin St, Fifth Floor          
#### Boston, MA  02110-1301              
#### USA                                 

#### Laurence.Finston@@gmx.de (@@ stands for a single "at" sign.)


#### Automatic Variables.  For more, see Section 10.5.3, "Automatic Variables"
#### of the Make info manual.
#### LDF 2009.12.29.

#### $@:  Target
#### $<:  First prerequisite
#### $^:  The names of all the prerequisites, with spaces between them.
#### $*:  The stem with which an implicit rule matches

#OLDDOCDIR := olddoc

#export OLDDOCDIR

#SUBDIRS = $(OLDDOCDIR) 

3DLDF_TEXINFO := 3DLDF.texi concidx.texi dttypidx.texi fdl.texi funcidx.texi \
                 intro.texi invoking.texi varidx.texi


.PHONY: all

all: 3DLDF.dvi 3DLDF.ps 3DLDF.pdf 3DLDF.html 3DLDF.info

3DLDF.dvi: $(3DLDF_TEXINFO)
	env LATEX=tex texi2dvi 3DLDF.texi

3DLDF.ps: 3DLDF.dvi
	dvips -o $@ $<

3DLDF.pdf: 3DLDF.ps
	ps2pdf $< 2>/dev/null

.PHONY: dvi ps pdf

dvi: 3DLDF.dvi

ps: 3DLDF.ps

pdf: 3DLDF.pdf

3DLDF.info: $(3DLDF_TEXINFO)
	makeinfo 3DLDF.texi

.PHONY: info

info: 3DLDF.info

3DLDF.html: $(3DLDF_TEXINFO)
	makeinfo --html --no-split 3DLDF.texi


.PHONY: html

html: 3DLDF.html


PURGEFILES = 3DLDF.aux 3DLDF.cb 3DLDF.cm 3DLDF.cp 3DLDF.ct 3DLDF.cv \
             3DLDF.fn 3DLDF.ky 3DLDF.log 3DLDF.pg 3DLDF.toc 3DLDF.tp \
             3DLDF.vr

CLEANFILES = $(PURGEFILES) 3DLDF.dvi 3DLDF.html 3DLDF.info 3DLDF.ps 3DLDF.pdf 

.PHONY: purge

purge: 
	rm -f $(PURGEFILES)




## Makefile.am
# Created by Laurence Finston.
   
#### This file is part of GNU 3DLDF, a package for three-dimensional drawing. 
#### Copyright (C) 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013 The Free Software Foundation

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
#### email with "subscribe <email-address>" as the subject.  

#### The author can be contacted at: 

#### Laurence D. Finston                  
#### c/o Free Software Foundation, Inc.  
#### 51 Franklin St, Fifth Floor          
#### Boston, MA  02110-1301              
#### USA                                  

#### Laurence.Finston@gmx.de




ACLOCAL_AMFLAGS = -I m4

SRCDIR     := src

export SRCDIR

vpath %.web $(SRCDIR)
vpath %.h $(SRCDIR)
vpath %.c $(SRCDIR)
vpath %.o $(SRCDIR)


EXTRA_DIST = 00INFO 00NEWS 00README ChangeLog reconfig.sh

.DELETE_ON_ERROR :

SUBDIRS = $(SRCDIR) 


.PHONY: dummy
dummy:
	echo "distdir = $(distdir)"
	$(MAKE) dummy -C $(SRCDIR)


.PHONY: info
info:
	@echo "info in 3DLDF-<Version>/Makefile.am."
	$(MAKE) info -C $(SRCDIR)


.PHONY: info-recursive
info-recursive:
	@echo "info-recursive in 3DLDF-<Version>/Makefile.am."
	$(MAKE) info-recursive -C $(SRCDIR)


.PHONY : 3dldf
3dldf : 
	$(MAKE) 3dldf -C $(SRCDIR)



.PHONY : ps
ps : 
	@echo Running \"make ps\" in $(SRCDIR)
	$(MAKE) ps -C $(SRCDIR)


.PHONY : 3DLDFput.mp
3DLDFput.mp:
	@echo Running \"make 3DLDFput.mp\" in $(SRCDIR)
	$(MAKE) 3DLDFput.mp -C $(SRCDIR)

.PHONY : ldf
ldf : 3DLDFput.mp
	@echo Running \"make ldf\" in $(SRCDIR)
	$(MAKE) ldf -C $(SRCDIR)

.PHONY : 3
3 : 
	@echo Running \"make 3\" in $(SRCDIR)
	$(MAKE) 3 -C $(SRCDIR)

.PHONY : mp
mp : 
	@echo Running \"make mp\" in $(SRCDIR)
	$(MAKE) mp -C $(SRCDIR)


.PHONY : run
run: 
	@echo Running \"make run\" in $(SRCDIR)
	$(MAKE) run -C $(SRCDIR)

.PHONY : purge
purge:
	$(MAKE) purge -C $(SRCDIR)
	@echo "Deleting $(distdir).tar.gz (the tarball containing the distribution)."
	-rm -f $(distdir).tar.gz

TAGS : 
	$(MAKE) TAGS -C $(SRCDIR)

## Local Variables:
## mode:Makefile
## End:

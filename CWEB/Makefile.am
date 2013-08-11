#### 3DLDF-2.0/CWEB/Makefile.am
#### Created by Laurence D. Finston (LDF).

#### $Id: Makefile.am 3857 2013-04-23 15:09:10Z lfinsto $
  
#### * Copyright and License.

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




# $Id: Makefile.am 3857 2013-04-23 15:09:10Z lfinsto $

## * Top.

# ** Variables.


## * (1) Top.

# ** (2) Variables.

bin_PROGRAMS = 3dldf prbsnflx

3dldf_SOME_CWEBS = loader.web pspglb.web io.web gsltmplt.web creatnew.web pntrvctr.web \
                   primes.web complex.web matrices.web colors.web transfor.web \
                   pens.web dashptrn.web \
                   shapes.web \
                   pictures.web points.web lines.web planes.web \
                   nurbs.web paths.web \
                   curves.web polygons.web triangle.web \
                   rectangs.web conicsct.web ellipses.web \
                   circles.web ellpsslc.web crclslc.web \
                   parabola.web hyprbola.web cncsctlt.web \
                   arc.web helices.web \
                   origami.web solids.web solfaced.web \
                   cuboid.web polyhed.web ddchdrn.web rhtchdrn.web \
                   plyhdslc.web cones.web \
                   cylinder.web ellpsoid.web spheres.web sphrdevl.web parabold.web \
                   paraellp.web parahypr.web glyphs.web \
                   pctfncs0.web utility.web pntrvcf0.web \
                   predctes.web scanprse.web figures.web 

# examples.web # LDF 2004.02.01.  Not including.


3dldf_headers := $(3dldf_SOME_CWEBS:.web=.h) 

3dldf_more_headers := parser.h++ parser.h parser2.h++ parser2.h scan.h scanner2.h++ scanprsf.h imetfncs.h \
                      deftfncs.h sctpcrt.h sctpfncs.h prrfnc0.h main.h

3dldf_header_timers  := $(3dldf_SOME_CWEBS:.web=.tim) 

3dldf_more_header_timers := scan.tim imetfncs.tim deftfncs.tim  \
                            scanprsf.tim sctpcrt.tim sctpfncs.tim \
                            prrfnc0.tim

3dldf_cweb_timers  := $(3dldf_SOME_CWEBS:.web=.tmw) scan.tmw scanprsf.tmw \
                      imetfncs.tmw deftfncs.tmw sctpcrt.tmw  \
                      sctpfncs.tmw prrfnc0.tmw main.tmw

nodist_3dldf_SOURCES = $(3dldf_SOME_CWEBS:.web=.cxx) scan.cxx scanprsf.cxx \
                       imetfncs.cxx  deftfncs.cxx sctpcrt.cxx sctpfncs.cxx \
                       prrfnc0.cxx main.cxx

3dldf_c_files = $(nodist_3dldf_SOURCES:.cxx=.c)
3dldf_rpo_files = $(nodist_3dldf_SOURCES:.cxx=.rpo)


3dldf_CWEBS   := $(3dldf_SOME_CWEBS) scan.web scanprsf.web \
                 imetfncs.web deftfncs.web sctpcrt.web sctpfncs.web \
                 prrfnc0.web main.web

3dldf_PARSER_FILES := arcexpr.w arcvexpr.w cmpxassn.w cmpxexpr.w cmpxvxpr.w \
                      cslcmnd.w cslexpr.w cslvexpr.w \
                      fcscmnd.w \
                      mtrxassn.w mtrxexpr.w mtrxvxpr.w \
                      parser.w passign.w pblexpr.w \
                      pblvexpr.w pbpexpr.w \
                      pbpvexpr.w pbsndecl.w pcbvexpr.w pcirexpr.w \
		      pclrcmnd.w pclvexpr.w pcnvexpr.w pcolexpr.w pcommand.w \
		      pcondit.w pconexpr.w pcrclslc.w pcrvexpr.w pcubexpr.w \
                      pcylexpr.w pcyvexpr.w pdpvexpr.w \
                      pdrwcmnd.w pdshexpr.w pedvexpr.w peldexpr.w \
                      pellexpr.w pellpslc.w pelvexpr.w peqexpr.w \
                      pfcvexpr.w pfgopcmd.w pfocexpr.w pfuncfin.w \
                      pglvexpr.w pglyexpr.w pgrpcmnd.w \
                      phlxexpr.w phpvexpr.w phxvexpr.w phypexpr.w \
                      pinptcmd.w \
                      plblcmnd.w pldfdcl.w \
                      ploops.w pmacros.w pnbvexpr.w pnmvexpr.w \
                      pnrbexpr.w pnumexpr.w \
		      popassgn.w poptions.w porgexpr.w porvexpr.w ppbvexpr.w ppdvexpr.w \
                      ppenexpr.w \
                      ppgvexpr.w pphdexpr.w pphvexpr.w ppicexpr.w pplhdslc.w \
                      pplnexpr.w pplnvxpr.w pplvexpr.w ppntexpr.w ppnvexpr.w \
                      pprbexpr.w pprdexpr.w pprgstmt.w ppthexpr.w pptvexpr.w \
                      ppygexpr.w \
                      prcvexpr.w \
		      precexpr.w prpvexpr.w prplexpr.w psetcmnd.w \
                      pshowcmd.w psphexpr.w pspvexpr.w pstrexpr.w \
                      pstvexpr.w ptfvexpr.w \
                      ptglexpr.w ptgvexpr.w \
                      ptokdecl.w ptrfcmnd.w \
                      ptrnexpr.w pullexpr.w pullvxpr.w pvariabl.w pvcmncmd.w \
                      reverse.w setarc.w setmatrx.w spdvexpr.w spdvvexp.w

prbsnflx_SOURCES = prbsnflx.l++


# Apparently, 'prbsnflx.c++' is already included in the distribution, 
# but I don't know why.  LDF 2005.04.10.

### I thought that including these files in the distribution
### would keep 'parser.c++', which is also included, from being rebuilt, 
### but it didn't work.
### LDF 2005.04.12.
###           parser.tbh parser.tby 

#### Removed.  LDF 2009.08.20.
#### ./RCS/.rcsfreeze.log

#### Removed.  LDF 2009.08.26.
#### set_registers.el 
#### ./EXAMPLES/TANGENTS/tngnts_1.ldf 
#### ./EXAMPLES/TANGENTS/tngnts_1.txt

EXTRA_DIST =  $(3dldf_CWEBS) $(3dldf_PARSER_FILES) \
              3DLDFadd.mac 3DLDFp02.web 3DLDFp03.web 3DLDFprg.mac 3DLDFprg.web 3DLDFtex.bas \
              3DLDFtex.tex 3DLDFmp.mp 3DLDFtex.ps 3DLDFtex.pdf \
              biblio.web ChangeLog conveps.c conveps.web \
              cpyrtasc.txt cpyrtc.txt cpyrtcpp.txt cpyrtel.txt cpyrtss.txt \
              cpyrttex.txt cpyrtweb.txt \
              fdl.txt gctng3DL gcwv3DL gpl.tex \
              parser.c++ parser.h parser.h++ parser.output \
              parser.y++ \
              parser2.web parser2.c++ parser2.h++ parser2.y++ \
              polyhed.lmc \
              prbsnflx.c++ prbsnflx.l++ prelims.web \
              runit sample.ldf sample0.ldf sample1.ldf sample2.ldf \
              scanner2.web scanner2.c++ scanner2.l++ scanner2.h++ \
              sundials.lmc sndl_samp.tex \
              testbnry.c++ tstbison tsthdweb \
              utils.el \
              ./CWEBPTCH/ccomm-3D.ch ./CWEBPTCH/common.c \
              ./CWEBPTCH/common.h ./CWEBPTCH/common.w \
              ./CWEBPTCH/ctangle.c ./CWEBPTCH/ctangle.w \
              ./CWEBPTCH/ctang-3D.ch ./CWEBPTCH/cweav-3D.ch \
              ./CWEBPTCH/cweave.c ./CWEBPTCH/cweave.w ./CWEBPTCH/prod.w 

# -frepo is needed because I'm now using template functions.
# LDF 2003.12.31.

# -Wall  LDF 2004.02.01.  Not using '-Wall' because it's annoying.

# LDF 2004.02.01.  Added '-pthread'.

AM_CXXFLAGS = -frepo -pthread -lgsl -lgslcblas -lm

#### Bug fix:  Added './'.  LDF 2010.12.29.

CWEAVE = ./cweav3DL 
CTANGLE = ./ctang3DL

# examples.o # LDF 2004.02.01.  Not including.

## Added '3dldf_OBS'.  It's the prerequisite to the rule for building
## '3dldf'.  It's needed so that 'parser.o', 
## and 'main.o' are built in the correct order.  
## The sources of 'parser.o' have different naming conventions 
## than the other CWEB and C++ files, so it would be difficult or
## impossible to get Automake to generate '3dldf_OBJECTS'  correctly.
## LDF 2004.03.26.  

3dldf_OBS = loader.o pspglb.o io.o gsltmplt.o creatnew.o pntrvctr.o primes.o \
            complex.o matrices.o colors.o transfor.o \
            pens.o dashptrn.o shapes.o pictures.o points.o lines.o planes.o \
            nurbs.o paths.o curves.o polygons.o triangle.o rectangs.o \
            conicsct.o ellipses.o \
            circles.o ellpsslc.o crclslc.o parabola.o hyprbola.o cncsctlt.o \
            arc.o helices.o origami.o \
            solids.o solfaced.o cuboid.o \
            polyhed.o ddchdrn.o  rhtchdrn.o plyhdslc.o cones.o cylinder.o \
            ellpsoid.o spheres.o sphrdevl.o \
            parabold.o paraellp.o parahypr.o glyphs.o pctfncs0.o utility.o \
            pntrvcf0.o predctes.o scanprse.o figures.o \
            parser.o scan.o scanprsf.o imetfncs.o deftfncs.o sctpcrt.o \
            sctpfncs.o prrfnc0.o scanner2.o parser2.o main.o


# This is needed, because 3dldf fails with a "Segmentation fault", if
# the executable is linked using $(3dldf_OBS).  This may cause
# problems, if '3dldf' isn't built using the GNU C++ compiler (GCC). 


3dldf_OBS_REVERSED = main.o parser2.o scanner2.o prrfnc0.o sctpfncs.o sctpcrt.o deftfncs.o imetfncs.o \
                     scanprsf.o \
                     scan.o parser.o figures.o  \
                     scanprse.o predctes.o pntrvcf0.o utility.o pctfncs0.o glyphs.o \
                     parahypr.o paraellp.o parabold.o sphrdevl.o spheres.o \
                     ellpsoid.o \
                     cylinder.o cones.o plyhdslc.o rhtchdrn.o ddchdrn.o \
                     polyhed.o \
                     cuboid.o  solfaced.o solids.o \
                     origami.o helices.o arc.o cncsctlt.o hyprbola.o \
                     parabola.o \
                     crclslc.o ellpsslc.o circles.o \
                     ellipses.o conicsct.o rectangs.o triangle.o \
                     polygons.o curves.o \
                     paths.o nurbs.o \
                     planes.o lines.o points.o pictures.o shapes.o transfor.o \
                     dashptrn.o pens.o \
                     colors.o matrices.o complex.o primes.o pntrvctr.o creatnew.o \
                     gsltmplt.o io.o pspglb.o loader.o

# 3dldf_mpgens contains the Encapsulated PostScript (EPS) files 
# generated by Metapost, 
# and a couple of other files, also generated by MetaPost.  
# LDF 2003.11.16.

3dldf_mpgens = 3DLDFmp.0 3DLDFmp.1* 3DLDFmp.2* 3DLDFmp.3* 3DLDFmp.4* \
               3DLDFmp.5* \
               3DLDFmp.6* 3DLDFmp.7* 3DLDFmp.8* 3DLDFmp.8* 3DLDFmp.9* \
               3DLDFmp1*.eps 3DLDFmp2*.eps 3DLDFmp3*.eps 3DLDFmp4*.eps \
               3DLDFmp5*.eps 3DLDFmp6*.eps 3DLDFmp7*.eps 3DLDFmp8*.eps \
               3DLDFmp8*.eps 3DLDFmp9*.eps \
               3DLDFmp.log 3DLDFmp.mpx


CLEANFILES := $(3dldf_c_files) $(3dldf_rpo_files) \
              $(3dldf_mpgens) \
              3DLDFp02.idx 3DLDFp02.log 3DLDFp02.scn \
              3DLDFp02.toc \
              3DLDFp03.idx 3DLDFp03.log 3DLDFp03.scn \
              3DLDFp03.toc \
              3DLDFprg.idx 3DLDFprg.log 3DLDFprg.scn \
              3DLDFprg.toc \
              3DLDFtex.dvi 3DLDFtex.log 3DLDFtex.ps \
              Makefile \
              $(3dldf_headers) $(3dldf_more_headers) $(3dldf_header_timers) \
              $(3dldf_more_header_timers) main.tim $(3dldf_cweb_timers) \
              $(nodist_3dldf_SOURCES) $(3dldf_OBJECTS) \
              ctang3DL \
              config.h stamp-h stamp-h1 parser.tby parser.tbh parser.h


# mostlyclean leaves the .cxx, .h, .tim, and '.rpo' files, 
# but deletes the '.c' files and the object files. 
# LDF 2004.09.02. 

MOSTLYCLEANFILES := $(3dldf_c_files) $(3dldf_mpgens) \
                    3DLDFp02.idx \
		    3DLDFp02.log 3DLDFp02.scn \
		    3DLDFp02.toc \
                    3DLDFp03.idx \
		    3DLDFp03.log 3DLDFp03.scn \
		    3DLDFp03.toc \
                    3DLDFprg.idx \
		    3DLDFprg.log 3DLDFprg.scn \
		    3DLDFprg.toc \
		    3DLDFtex.dvi 3DLDFtex.log 3DLDFtex.ps 

MAINTAINERCLEANFILES := $(3dldf_c_files) $(3dldf_rpo_files) \
			$(3dldf_mpgens) \
                        3DLDFp02.idx 3DLDFp02.log \
			3DLDFp02.scn \
			3DLDFp02.toc \
                        3DLDFp03.idx 3DLDFp03.log \
			3DLDFp03.scn \
			3DLDFp03.toc \
                        3DLDFprg.idx 3DLDFprg.log \
			3DLDFprg.scn \
			3DLDFprg.toc \
			3DLDFtex.dvi 3DLDFtex.log 3DLDFtex.ps \
			Makefile \
			$(3dldf_headers) $(3dldf_more_headers) $(3dldf_header_timers) \
			$(3dldf_more_header_timers) main.tim $(3dldf_cweb_timers) \
			$(nodist_3dldf_SOURCES) $(3dldf_OBJECTS) \
			config.h stamp-h stamp-h1 \
			3DLDFp02.dvi 3DLDFp02.ps \
			3DLDFp03.dvi 3DLDFp03.ps \
                        3DLDFprg.dvi 3DLDFprg.ps

## * Rules.

.PHONY : dummy
dummy:
	@echo "dummy in CWEB/Makefile.am."

.PHONY : cpl
cpl: 3dldf

## ** (2) 3dldf.

3dldf: $(3dldf_OBS) 
	-rm -f -r 3dldf
	@echo "Linking 3dldf"
	$(CXXLINK) @LIBS@ $(3dldf_OBS_REVERSED)

ctang3DL:
	$(SHELL) $(srcdir)/gctng3DL

## START HERE:  Add dependencies.  LDF 2008.02.03.

cweav3DL: ./CWEBPTCH/cweav-3D.ch
	$(SHELL) $(srcdir)/gcwv3DL


## ** (2) Parser 2 and Scanner 2

#### LDF 2009.11.04.
#### Added this section.

parser2.y++ : parser2.web prbsnflx$(EXEEXT)
	$(CTANGLE) parser2.web
	./prbsnflx$(EXEEXT) parser2.c parser2.y++


parser2.c++ parser2.h++ : parser2.y++ 
	$(YACC) --debug -d -o parser2.c++ parser2.y++

parser2.o: parser2.c++ parser2.h++ scanner2.h++ 
	$(CXX) $(AM_CXXFLAGS) -c -o parser2.o parser2.c++

scanner2.o: scanner2.c++ scanner2.c++ parser2.h++ 
	$(CXX) $(AM_CXXFLAGS) -c -o scanner2.o scanner2.c++

scanner2.c++ scanner2.h++ : scanner2.l++ 
	flex -o scanner2.c++  scanner2.l++

scanner2.l++ : scanner2.web prbsnflx$(EXEEXT)
	$(CTANGLE) scanner2.web
	./prbsnflx$(EXEEXT) scanner2.c scanner2.l++

## ** Parser.

## LDF 2004.03.21.
## Please note:  The build rules for 'parser.o' may
## fail if the Bison input file, the C++ file, or the header
## file fails to exist.  If any of them
## do, the best thing to do is to touch the CWEB file 'parser.w' 
## This will cause the missing files to be regenerated.  

## *** Parser.

parser.o: $(3dldf_header_timers) parser.tby prbsnflx parser.c++
	@echo "Compiling \`parser.c++'.  This may take a minute or so ..."
	@if test "$(LDF_PRIVATE)"; then time $(CXX) -c -g $(CPPFLAGS) parser.c++; else \
        $(CXX) -c -g $(CPPFLAGS) parser.c++; fi; 


parser.c++: parser.tby

#### LOG:
####
#### LDF 2004.08.20.
#### Removed compiler options because 'parser.c++' compiled too slowly.
####
#### LDF 2004.08.21.
#### Put '-g' option back.
####
#### END LOG.

#### $(CXX) -c $(CXXFLAGS) $(AM_CXXFLAGS) parser.c++


parser.tby : $(3dldf_PARSER_FILES) prbsnflx$(EXEEXT) ctang3DL
	$(SHELL) $(srcdir)/tstbison parser $(srcdir)/ctang3DL $(YACC) \
           "$(3dldf_PARSER_FILES)"
####
	@cat cpyrtcpp.txt > AAAtmp.txt
	@echo >> AAAtmp.txt
	@echo "/* Please note:  The license for the skeleton" >> AAAtmp.txt
	@echo "parser generated by GNU Bison appears below, along with a special \"exception\"." >> AAAtmp.txt
	@echo "That exception does not apply to this file, \`parser.c++'." >> AAAtmp.txt
	@echo "The GNU General Public License applies without exceptions to this file.  */" >> AAAtmp.txt
	@echo >> AAAtmp.txt
	@echo >> AAAtmp.txt
	@cat parser.c++ >> AAAtmp.txt
	@mv AAAtmp.txt parser.c++
###
	@cat cpyrtcpp.txt > AAAtmp.txt
	@echo >> AAAtmp.txt
	@echo "/* Please note:  The license for the skeleton" >> AAAtmp.txt
	@echo "parser generated by GNU Bison appears below, along with a special \"exception\"." >> AAAtmp.txt
	@echo "That exception does not apply to this file, \`parser.h++'." >> AAAtmp.txt
	@echo "The GNU General Public License applies without exceptions to this file.  */" >> AAAtmp.txt
	@echo >> AAAtmp.txt
	@echo >> AAAtmp.txt
	@cat parser.h++ >> AAAtmp.txt
	@mv AAAtmp.txt parser.h++
###
	@cat cpyrtasc.txt > AAAtmp.txt
	@echo >> AAAtmp.txt
	@cat parser.output >> AAAtmp.txt
	@mv AAAtmp.txt parser.output
###
	@cat cpyrtcpp.txt > AAAtmp.txt
	@echo >> AAAtmp.txt
	@cat parser.h >> AAAtmp.txt
	@mv AAAtmp.txt parser.h

## *** prbsnflx

## 'prbsnflx' is a trivial Flex program that removes the '#line'
## preprocessor commands and the comments that 'ctangle' writes to
## 'parser.c'.  It's called in
## 'tstbison'.
## LDF 2004.03.26.

prbsnflx$(EXEEXT): prbsnflx.c++ 
	g++ -o prbsnflx prbsnflx.c++

prbsnflx.c++: prbsnflx.l++
	flex -oprbsnflx.c++ prbsnflx.l++ 
	@cat cpyrtcpp.txt > AAAtmp.txt
	@echo >> AAAtmp.txt
	@cat prbsnflx.c++ >> AAAtmp.txt
	@mv AAAtmp.txt prbsnflx.c++

## ** CWEB/C++ sources.

loader.o: loader.tmw

pspglb.o: loader.tim pspglb.tmw 

io.o: loader.tim pspglb.tim io.tmw

gsltmplt.o: loader.tim pspglb.tim io.tim gsltmplt.tmw 

creatnew.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tmw

pntrvctr.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tmw

primes.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tmw

complex.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim \
           primes.tim complex.tmw

matrices.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim \
            primes.tim complex.tim matrices.tmw

colors.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
          complex.tim matrices.tim colors.tmw
  
transfor.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            primes.tim complex.tim matrices.tim colors.tim transfor.tmw

pens.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
        complex.tim matrices.tim colors.tim transfor.tim pens.tmw

dashptrn.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim pens.tim dashptrn.tmw

shapes.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
          complex.tim matrices.tim colors.tim transfor.tim pens.tim dashptrn.tim shapes.tmw

pictures.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tmw

points.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
          complex.tim matrices.tim colors.tim transfor.tim \
          pens.tim dashptrn.tim shapes.tim pictures.tim points.tmw

lines.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
         complex.tim matrices.tim colors.tim transfor.tim \
         pens.tim dashptrn.tim shapes.tim pictures.tim points.tim lines.tmw

planes.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
          complex.tim matrices.tim colors.tim transfor.tim \
          pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
          lines.tim planes.tmw

nurbs.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
         complex.tim matrices.tim colors.tim transfor.tim \
         pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
         lines.tim planes.tim \
         nurbs.tmw

paths.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
         complex.tim matrices.tim colors.tim transfor.tim \
         pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
         lines.tim planes.tim nurbs.tim \
         paths.tmw

curves.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
          complex.tim matrices.tim colors.tim transfor.tim \
          pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
          lines.tim planes.tim nurbs.tim \
          paths.tim curves.tmw

polygons.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim lines.tim \
            planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tmw

triangle.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim polygons.tim triangle.tmw

rectangs.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim lines.tim \
            planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tmw

conicsct.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim lines.tim \
            planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tmw

ellipses.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim lines.tim \
            planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tim ellipses.tmw

circles.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
           pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
           lines.tim planes.tim nurbs.tim \
           paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
           conicsct.tim ellipses.tim circles.tmw


ellpsslc.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tim ellipses.tim circles.tim ellpsslc.tmw


crclslc.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim \
           primes.tim complex.tim matrices.tim colors.tim transfor.tim \
           pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
           lines.tim planes.tim nurbs.tim \
           paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
           conicsct.tim ellipses.tim circles.tim ellpsslc.tim crclslc.tmw


parabola.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tim ellipses.tim circles.tim ellpsslc.tim crclslc.tim \
            parabola.tmw

hyprbola.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tim ellipses.tim circles.tim ellpsslc.tim crclslc.tim \
            parabola.tim hyprbola.tmw

cncsctlt.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tim ellipses.tim circles.tim ellpsslc.tim crclslc.tim \
            parabola.tim hyprbola.tim cncsctlt.tmw
 
arc.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim \
       primes.tim \
       complex.tim matrices.tim colors.tim transfor.tim \
       pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
       lines.tim planes.tim nurbs.tim \
       paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
       conicsct.tim ellipses.tim circles.tim ellpsslc.tim crclslc.tim \
       parabola.tim hyprbola.tim cncsctlt.tim arc.tmw

helices.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
           pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
           lines.tim planes.tim nurbs.tim \
           paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
           conicsct.tim ellipses.tim circles.tim ellpsslc.tim crclslc.tim \
           parabola.tim hyprbola.tim cncsctlt.tim arc.tim helices.tmw



origami.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
           pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
           lines.tim planes.tim nurbs.tim \
           paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
           conicsct.tim ellipses.tim circles.tim ellpsslc.tim crclslc.tim \
           parabola.tim hyprbola.tim cncsctlt.tim arc.tim helices.tim \
           origami.tmw


#### patterns.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
####             complex.tim matrices.tim colors.tim transfor.tim \
####             pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
####             lines.tim planes.tim nurbs.tim \
####             paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
####             ellipses.tim circles.tim ellpsslc.tim crclslc.tim \
####          	 parabola.tim hyprbola.tim cncsctlt.tim arc.tim helices.tim \
####          	 origami.tim patterns.tmw

solids.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
          complex.tim matrices.tim colors.tim transfor.tim \
          pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
          lines.tim planes.tim nurbs.tim \
          paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
          conicsct.tim ellipses.tim \
          circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
          arc.tim helices.tim origami.tim \
          solids.tmw

solfaced.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tmw

cuboid.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
          complex.tim matrices.tim colors.tim transfor.tim \
          pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
          lines.tim planes.tim nurbs.tim \
          paths.tim curves.tim polygons.tim triangle.tim \
          rectangs.tim conicsct.tim ellipses.tim \
          circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
          arc.tim helices.tim origami.tim solids.tim solfaced.tim \
          cuboid.tmw

polyhed.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
           pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
           lines.tim planes.tim nurbs.tim \
           paths.tim curves.tim polygons.tim triangle.tim \
           rectangs.tim conicsct.tim ellipses.tim \
           circles.tim ellpsslc.tim crclslc.tim \
           parabola.tim hyprbola.tim cncsctlt.tim arc.tim helices.tim origami.tim \
           solids.tim solfaced.tim cuboid.tim \
           polyhed.tmw

ddchdrn.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
           pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
           lines.tim planes.tim nurbs.tim \
           paths.tim curves.tim polygons.tim triangle.tim \
           rectangs.tim conicsct.tim ellipses.tim \
           circles.tim ellpsslc.tim crclslc.tim \
           parabola.tim hyprbola.tim cncsctlt.tim arc.tim helices.tim origami.tim \
           solids.tim solfaced.tim cuboid.tim \
           polyhed.tim ddchdrn.tmw

rhtchdrn.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim \
            pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim \
            rectangs.tim conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim \
            parabola.tim hyprbola.tim cncsctlt.tim arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim cuboid.tim \
            polyhed.tim ddchdrn.tim rhtchdrn.tmw

plyhdslc.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim \
            rectangs.tim conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim \
            parabola.tim hyprbola.tim cncsctlt.tim arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim cuboid.tim \
            polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tmw

cones.o:    loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim \
            rectangs.tim conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim cuboid.tim \
            polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tmw


cylinder.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim \
            rectangs.tim conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim cuboid.tim \
            polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tmw

ellpsoid.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim \
            cuboid.tim polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tmw

spheres.o:  loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim \
            cuboid.tim polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim \
            ellpsoid.tim spheres.tmw


sphrdevl.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim \
            cuboid.tim polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim \
            ellpsoid.tim spheres.tim sphrdevl.tmw

parabold.o:  loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
             complex.tim matrices.tim colors.tim transfor.tim \
             pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
             lines.tim planes.tim nurbs.tim \
             paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
             conicsct.tim ellipses.tim \
             circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
             arc.tim helices.tim origami.tim \
             solids.tim solfaced.tim \
             cuboid.tim polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim \
             ellpsoid.tim spheres.tim sphrdevl.tim parabold.tmw

paraellp.o:  loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
             complex.tim matrices.tim colors.tim transfor.tim \
             pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
             lines.tim planes.tim nurbs.tim \
             paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
             conicsct.tim ellipses.tim \
             circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
             arc.tim helices.tim origami.tim \
             solids.tim solfaced.tim \
             cuboid.tim polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim \
             ellpsoid.tim spheres.tim sphrdevl.tim parabold.tim paraellp.tmw

parahypr.o:  loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
             complex.tim matrices.tim colors.tim transfor.tim \
             pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
             lines.tim planes.tim nurbs.tim \
             paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
             conicsct.tim ellipses.tim \
             circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
             arc.tim helices.tim origami.tim \
             solids.tim solfaced.tim \
             cuboid.tim polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim \
             ellpsoid.tim spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tmw

glyphs.o:  loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
            conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim \
            cuboid.tim polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim \
            ellpsoid.tim spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tmw

pctfncs0.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim \
            rectangs.tim conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim cuboid.tim \
            polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
            spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim pctfncs0.tmw


utility.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
           pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
           lines.tim planes.tim nurbs.tim \
           paths.tim curves.tim polygons.tim triangle.tim \
           rectangs.tim conicsct.tim ellipses.tim \
           circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
           arc.tim helices.tim origami.tim \
           solids.tim solfaced.tim cuboid.tim \
           polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
           spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim pctfncs0.tim utility.tmw

pntrvcf0.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
           pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
           lines.tim planes.tim nurbs.tim \
           paths.tim curves.tim polygons.tim triangle.tim \
           rectangs.tim conicsct.tim ellipses.tim \
           circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
           arc.tim helices.tim origami.tim \
           solids.tim solfaced.tim cuboid.tim \
           polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
           spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim pctfncs0.tim \
           utility.tmw pntrvcf0.tmw



predctes.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim \
            rectangs.tim conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim \
            cuboid.tim \
            polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
            spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim \
            pctfncs0.tim utility.tim pntrvcf0.tim predctes.tmw


scanprse.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim \
            rectangs.tim conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim \
            cuboid.tim \
            polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
            spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim \
            pctfncs0.tim utility.tim pntrvcf0.tim predctes.tim scanprse.tmw


figures.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
           pens.tim dashptrn.tim shapes.tim pictures.tim \
           points.tim lines.tim planes.tim nurbs.tim \
           paths.tim curves.tim polygons.tim triangle.tim rectangs.tim \
           conicsct.tim ellipses.tim \
           circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
           arc.tim helices.tim origami.tim \
           solids.tim solfaced.tim cuboid.tim \
           polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
           spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim pctfncs0.tim \
           utility.tim pntrvcf0.tim predctes.tim scanprse.tim figures.tmw


scan.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
        complex.tim matrices.tim colors.tim transfor.tim \
        pens.tim dashptrn.tim shapes.tim pictures.tim points.tim lines.tim \
        planes.tim nurbs.tim \
        paths.tim curves.tim polygons.tim triangle.tim \
        rectangs.tim conicsct.tim ellipses.tim \
        circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
        arc.tim helices.tim origami.tim \
        solids.tim solfaced.tim cuboid.tim \
        polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
        spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim pctfncs0.tim \
        utility.tim pntrvcf0.tim predctes.tim scanprse.tim \
        figures.tim parser.tbh scan.tmw

scanprsf.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim lines.tim \
            planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim \
            rectangs.tim conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim cuboid.tim \
            polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
            spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim pctfncs0.tim \
            utility.tim pntrvcf0.tim predctes.tim scanprse.tim \
            figures.tim parser.tbh scan.tim scanprsf.tmw

imetfncs.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
        pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
        lines.tim planes.tim nurbs.tim \
        paths.tim curves.tim polygons.tim triangle.tim \
        rectangs.tim conicsct.tim ellipses.tim \
        circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
        arc.tim helices.tim origami.tim \
        solids.tim solfaced.tim cuboid.tim \
        polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
        spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim pctfncs0.tim \
        utility.tim pntrvcf0.tim predctes.tim scanprse.tim \
        figures.tim parser.tbh scan.tim scanprsf.tim imetfncs.tmw

deftfncs.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
        pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
        lines.tim planes.tim nurbs.tim \
        paths.tim curves.tim polygons.tim triangle.tim rectangs.tim conicsct.tim \
        ellipses.tim \
        circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
        arc.tim helices.tim origami.tim \
        solids.tim solfaced.tim cuboid.tim \
        polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
        spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim pctfncs0.tim \
        utility.tim pntrvcf0.tim predctes.tim scanprse.tim \
        figures.tim parser.tbh scan.tim scanprsf.tim imetfncs.tim deftfncs.tmw

sctpcrt.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
        pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
        lines.tim planes.tim nurbs.tim \
        paths.tim curves.tim polygons.tim triangle.tim \
        rectangs.tim conicsct.tim ellipses.tim \
        circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
        arc.tim helices.tim origami.tim \
        solids.tim solfaced.tim cuboid.tim \
        polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
        spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim pctfncs0.tim \
        utility.tim pntrvcf0.tim predctes.tim scanprse.tim figures.tim \
        parser.tbh scan.tim scanprsf.tim imetfncs.tim deftfncs.tim sctpcrt.tmw


sctpfncs.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
            complex.tim matrices.tim colors.tim transfor.tim \
            pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
            lines.tim planes.tim nurbs.tim \
            paths.tim curves.tim polygons.tim triangle.tim \
            rectangs.tim conicsct.tim ellipses.tim \
            circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
            arc.tim helices.tim origami.tim \
            solids.tim solfaced.tim cuboid.tim \
            polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim ellpsoid.tim \
            spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim \
            glyphs.tim pctfncs0.tim utility.tim pntrvcf0.tim predctes.tim scanprse.tim \
            figures.tim \
            parser.tbh scan.tim scanprsf.tim imetfncs.tim deftfncs.tim \
            sctpcrt.tim sctpfncs.tmw

prrfnc0.o: loader.tim pspglb.tim io.tim gsltmplt.tim creatnew.tim pntrvctr.tim primes.tim \
           complex.tim matrices.tim colors.tim transfor.tim \
           pens.tim dashptrn.tim shapes.tim pictures.tim points.tim \
           lines.tim planes.tim nurbs.tim \
           paths.tim curves.tim polygons.tim triangle.tim \
           rectangs.tim conicsct.tim ellipses.tim \
           circles.tim ellpsslc.tim crclslc.tim parabola.tim hyprbola.tim cncsctlt.tim \
           arc.tim helices.tim origami.tim \
           solids.tim solfaced.tim cuboid.tim \
           polyhed.tim ddchdrn.tim rhtchdrn.tim plyhdslc.tim cones.tim cylinder.tim \
           spheres.tim sphrdevl.tim parabold.tim paraellp.tim parahypr.tim glyphs.tim \
           ellpsoid.tim pctfncs0.tim utility.tim pntrvcf0.tim \
           predctes.tim scanprse.tim figures.tim \
           parser.tbh scan.tim scanprsf.tim imetfncs.tim deftfncs.tim \
           sctpcrt.tim sctpfncs.tim prrfnc0.tmw

## *** (3) main.o.

main.o: $(3dldf_header_timers) parser.tbh $(3dldf_more_header_timers) main.tmw 

# ### Commented-out.  Currently, main.web is the only CWEB file that
# ### doesn't create a header.  If I add any others, I can comment this
# ### back in.  Better test to make sure it works, though! LDF 2003.12.01.
# # no_header_tmw = main.tmw 

# # $(no_header_tmw) : %.tmw : %.web
# # 	@echo "Retangling $<"
# # 	$(CTANGLE) $<
# # 	mv $*.c $@

# # tsthdweb is a shell script.  Its name stands for "test header and
# # CWEB files".  It tests whether the files generated by ctangle
# # have changed since the last
# # time it was run.  See tsthdweb for more information.

# The files are compared in such a way that white space and lines
# starting with comments or "#line" preprocessor commands are
# ignored.  This ensures that only actual code is compared.  Please
# note, however, that whitespace within strings is also ignored!  For
# example, 'cout << "abc def";' is considered to be the same as 
# 'cout << "abc    def";'.
# LDF 2003.11.16.

# I tried testing the C++ and header files without using a shell
# script, but I couldn't get the conditional code to work here in this
# file.  LDF 2003.11.16.

## ** Implicit rules.

%.tmw: %.web ctang3DL
	-cp -p $*.h $*.hbk
	$(SHELL) $(srcdir)/tsthdweb $* 0 $(srcdir)/ctang3DL
	@cat cpyrtcpp.txt > AAAtmp.txt
	@echo >> AAAtmp.txt
	@cat $*.cxx >> AAAtmp.txt
	@mv AAAtmp.txt $*.cxx

%.tim: 
	@echo "$@ doesn't exist. Touching $@"
	touch $@

parser.tbh: 
	@echo "parser.tbh doesn't exist. Touching parser.tbh.@"
	touch parser.tbh


$(nodist_3dldf_SOURCES) $(3dldf_headers): ctang3DL
	@echo "$@ doesn't exist. Calling tsthdweb $*"
	$(SHELL) $(srcdir)/tsthdweb $* 0 $(srcdir)/ctang3DL


%.pdf: %.ps
	ps2pdf $*.ps

%.ps: %.dvi
	dvips -o $*.ps $*.dvi

%.dvi: %.mp %.txt
	mpost $*.mp && tex $*.txt

%.mp: %.ldf 3dldf
	./3dldf $*.ldf

## * (1) Running 3dldf and generating files.

## The "run" target and its prerequisites are for generating the 
## PostScript file containing the drawings.  LDF 2003.11.11.

.PHONY : sample

sample : sample2.mp 3DLDFtex.ps.gz 3DLDFtex.pdf.gz currsmpl.tgz 

.PHONY : currsmpl.tgz

currsmpl.tgz : 
	if test ! -d currsmpl; then mkdir currsmpl;fi;
	rm -f currsmpl.tgz currsmpl/*
	cp 3DLDFtex.bas 3DLDFtex.tex 3DLDFtex.ps 3DLDFtex.pdf \
           *.lmc \
           sample2.ldf sample2.mp 3DLDFmp.mp currsmpl
	tar cf - currsmpl | gzip > currsmpl.tgz
	rm -f currsmpl/*

.PHONY : run
run : 3DLDFtex.ps 3DLDFtex.pdf 

3DLDFtex.pdf.gz : 3DLDFtex.pdf
	rm -f 3DLDFtex.pdf.gz
	cp -f 3DLDFtex.pdf YYY.pdf
	gzip 3DLDFtex.pdf
	mv -f YYY.pdf 3DLDFtex.pdf 

3DLDFtex.pdf : 3DLDFtex.ps
	ps2pdf 3DLDFtex.ps 3DLDFtex.pdf

3DLDFtex.ps.gz : 3DLDFtex.ps
	rm -f 3DLDFtex.ps.gz
	cp 3DLDFtex.ps YYY.ps
	gzip 3DLDFtex.ps
	mv -f YYY.ps 3DLDFtex.ps 

3DLDFtex.ps : 3DLDFtex.dvi
	@echo "Running dvips on 3DLDFtex.dvi to create 3DLDFtex.ps."
	dvips -o 3DLDFtex.ps 3DLDFtex

3DLDFtex.dvi : 3DLDFtex.tex 3DLDFtex.bas 3DLDFmp.mp sample2.mp
	@echo "Running MetaPost on 3DLDFmp.mp to create EPS files."
	mpost 3DLDFmp.mp
	@echo "Running TeX on 3DLDFtex.tex to create 3DLDFtex.dvi."
	tex 3DLDFtex

.PHONY : ldf
ldf : sample2.mp 

sample2.mp : sample2.ldf  3dldf
	@echo "Running \`runit'."
	$(SHELL) $(srcdir)/runit
	@mv -f sample2.mp YYY.mp
	@cp -f cpyrttex.txt sample2.mp
	@chmod u+w sample2.mp
	@cat YYY.mp >> sample2.mp
	@rm -f YYY.mp

## The ".ps" target is for generating the _3DLDF User and Reference Manual_ and 
## _3DLDF: The Program_ in PostScript format.  There's an implicit target 
## for the .dvi files.  LDF 2003.11.11.


.PHONY : pdf
pdf: 3DLDFprg.pdf 3DLDFp02.pdf 3DLDFp03.pdf

.PHONY : ps
ps: 3DLDFprg.ps 3DLDFp02.ps 3DLDFp03.ps

.PHONY : dvi
dvi : 3DLDFprg.dvi 3DLDFp02.dvi 3DLDFp03.dvi

## ** (2)


3DLDFprg.pdf: 3DLDFprg.ps
	@echo Running \"ps2pdf 3DLDFprg.ps\"
	ps2pdf 3DLDFprg.ps


3DLDFprg.ps: 3DLDFprg.dvi
	@echo Running \"dvips -o 3DLDFprg.ps 3DLDFprg.dvi\"
	dvips -o 3DLDFprg.ps 3DLDFprg.dvi

3DLDFprg.dvi: 3DLDFadd.mac 3DLDFprg.tex cwebmac.tex 
	@echo 1 > partfile.tex
	@echo "\\openout\\functexifile=func1.texi" > otflnms.tex
	@echo Running \"tex 3DLDFprg.tex\"
	tex 3DLDFprg.tex

3DLDFprg.tex: 3DLDFadd.mac 3DLDFprg.mac $(CWEAVE) 3DLDFprg.web $(3dldf_CWEBS) 
	@echo 1 > partfile.tex
	@echo "\\openout\\functexifile=func1.texi" > otflnms.tex
	@echo Running \"$(CWEAVE) 3DLDFprg.web\"
	$(CWEAVE) +s 3DLDFprg.web

## ** (2)

3DLDFp02.pdf: 3DLDFp02.ps
	@echo Running \"ps2pdf 3DLDFp02.ps\"
	ps2pdf 3DLDFp02.ps

3DLDFp02.ps: 3DLDFp02.dvi
	@echo Running \"dvips -o 3DLDFp02.ps 3DLDFp02.dvi\"
	dvips -o 3DLDFp02.ps 3DLDFp02.dvi

3DLDFp02.dvi: 3DLDFadd.mac 3DLDFp02.tex cwebmac.tex 
	@echo 2 > partfile.tex
	@echo -e "\\openout\\\\functexifile=func2.texi\
\n\\openout\\syntaxtexifile=syntax2.texi" > otflnms.tex
	@echo Running \"tex 3DLDFp02.tex\"
	tex 3DLDFp02.tex


3DLDFp02.tex: 3DLDFadd.mac 3DLDFprg.mac $(CWEAVE) 3DLDFp02.web $(3dldf_CWEBS) \
              $(3dldf_PARSER_FILES)
	@echo 2 > partfile.tex
	@echo -e "\\openout\\\\functexifile=func2.texi\
\n\\openout\\syntaxtexifile=syntax2.texi" > otflnms.tex
	@echo Running \"$(CWEAVE) 3DLDFp02.web\"
	$(CWEAVE) +s 3DLDFp02.web


## ** (2)

3DLDFp03.pdf: 3DLDFp03.ps
	@echo Running \"ps2pdf 3DLDFp03.ps\"
	ps2pdf 3DLDFp03.ps

3DLDFp03.ps: 3DLDFp03.dvi
	@echo Running \"dvips -o 3DLDFp03.ps 3DLDFp03.dvi\"
	dvips -o 3DLDFp03.ps 3DLDFp03.dvi

3DLDFp03.dvi: 3DLDFadd.mac 3DLDFp03.tex cwebmac.tex 
	@echo 3 > partfile.tex
	@echo -e "\\openout\\\\functexifile=func3.texi" > otflnms.tex
	@echo Running \"tex 3DLDFp03.tex\"
	tex 3DLDFp03.tex


3DLDFp03.tex: 3DLDFadd.mac 3DLDFprg.mac $(CWEAVE) 3DLDFp03.web $(3dldf_CWEBS) \
              $(3dldf_PARSER_FILES)
	@echo 3 > partfile.tex
	@echo -e "\\openout\\\\functexifile=func3.texi" > otflnms.tex
	@echo Running \"$(CWEAVE) 3DLDFp03.web\"
	$(CWEAVE) +s 3DLDFp03.web

## * (1) conveps

conveps: conveps.c
	g++ -x c++ -o conveps -pthread -g conveps.c

conveps.c: conveps.web
	ctang3DL conveps.web

conveps.pdf: conveps.ps
	ps2pdf conveps.ps conveps.pdf

conveps.ps: conveps.dvi
	dvips -o conveps.ps conveps.dvi

conveps.dvi: conveps.tex
	tex conveps.tex

conveps.tex: conveps.web $(CWEAVE)
	$(CWEAVE) conveps.web

## * (1) purge.

.PHONY : purge
purge:
	@echo "Deleting files generated by 3dldf"
	-rm -f primes.lbn.gz
	-rm -f primes.lsm
	@echo "Deleting files generated by Metapost"
	-rm -f  $(3dldf_mpgens) 
	-rm -f sample?.mp *.mpx  ldf_?.log mpxerr.tex missfont.log
	@echo "Deleting files generated by TeX"
	-rm -f  3DLDFtex.dvi 3DLDFtex.log
	@echo "Deleting files generated by dvips and ps2pdf"
	-rm -f  3DLDFtex.ps
	-rm -f  3DLDFtex.pdf
	@echo "Deleting gzipped PostScript and PDF files"
	-rm -f  3DLDFtex.ps.gz
	-rm -f  3DLDFtex.pdf.gz
	@echo "Deleting files generated by \`conveps'"
	-rm -f  3DLDFmp_*.eps
	-rm -f  3DLDFmp_*.jpg
	-rm -f  3DLDFmp_*.png
	-rm -f  3DLDFmp_*.pnm
	-rm -f  3DLDFmp_*.ps
	@echo "Deleting files generated by \`cweav3DL'"
	-rm -f 3DLDFprg.idx
	-rm -f 3DLDFprg.log
	-rm -f 3DLDFprg.scn
	-rm -f 3DLDFprg.tex
	-rm -f 3DLDFprg.toc
	-rm -f 3DLDFprg.dvi
	-rm -f 3DLDFprg.ps
	-rm -f 3DLDFprg.pdf
	-rm -f 3DLDFp02.idx
	-rm -f 3DLDFp02.log
	-rm -f 3DLDFp02.scn
	-rm -f 3DLDFp02.tex
	-rm -f 3DLDFp02.toc
	-rm -f 3DLDFp02.dvi
	-rm -f 3DLDFp02.ps
	-rm -f 3DLDFp02.pdf
	-rm -f 3DLDFp03.idx
	-rm -f 3DLDFp03.log
	-rm -f 3DLDFp03.scn
	-rm -f 3DLDFp03.tex
	-rm -f 3DLDFp03.toc
	-rm -f 3DLDFp03.dvi
	-rm -f 3DLDFp03.ps
	-rm -f 3DLDFp03.pdf
	-rm -f func1.texi
	-rm -f func2.texi
	-rm -f syntax2.texi
	-rm -f otflnms.tex
	-rm -f polyrhyt.[0-9]* polyrhyt.ps polyrhyt.pdf polyrhyt.dvi polyrhyt.mp
	-rm -f bldelem[0-9].[0-9]* bldelem[0-9].ps bldelem[0-9].pdf bldelem[0-9].dvi bldelem[0-9].mp \
               bldelem[0-9].log bldelem[0-9].toc
	-rm -f sphrmd0[0-9].[0-9]* sphrmd0[0-9].ps sphrmd0[0-9].pdf sphrmd0[0-9].dvi sphrmd0[0-9].mp \
               sphrmd0[0-9].log sphrmd0[0-9].toc
	-rm -f texput.log

stlltn01.mp: stlltn01.ldf stlltns.lmc

polyrhyt.ps: polyrhyt.dvi 
	dvips -o polyrhyt.ps polyrhyt.dvi

polyrhyt.dvi: polyrhyt.txt polyrhyt.0
	tex polyrhyt.txt && tex polyrhyt.txt

polyrhyt.0: polyrhyt.mp
	mpost polyrhyt.mp

polyrhyt.mp: polyrhyt.ldf
	./3dldf polyrhyt.ldf

#### !! START HERE:  LDF 2012.06.18.  Add code for generating output in Letter format (8.5 x 11in).

bldelem1.ps: bldelem1.dvi 
	dvips -o bldelem1.ps bldelem1.dvi

bldelem1.dvi: bldelem1.txt bldelem1.0 fmt8511.txt fmtdina4.txt
	tex '\def\FMT{DINAFOURPORTRAIT}' '\input bldelem1.txt' && tex '\def\FMT{DINAFOURPORTRAIT}' '\input bldelem1.txt' 

bldelem1.0: bldelem1.mp
	mpost bldelem1.mp

bldelem1.mp: bldelem1.ldf bldelem1.lmc rect_prism.lmc
	./3dldf bldelem1.ldf

bldelem2.ps: bldelem2.dvi 
	dvips -o bldelem2.ps bldelem2.dvi

bldelem2.dvi: bldelem2.txt bldelem2.0 fmt8511.txt fmtdina4.txt
	tex '\def\FMT{DINAFOURPORTRAIT}' '\input bldelem2.txt' && tex '\def\FMT{DINAFOURPORTRAIT}' \
            '\input bldelem2.txt' 

bldelem2.0: bldelem2.mp
	mpost bldelem2.mp

bldelem2.mp: bldelem2.ldf bldelem1.lmc bldelem2.lmc
	./3dldf bldelem2.ldf

bldelem3.ps: bldelem3.dvi 
	dvips -o bldelem3.ps bldelem3.dvi

bldelem3.dvi: bldelem3.txt bldelem3.0 fmt8511.txt fmtdina4.txt
	tex '\def\FMT{DINAFOURPORTRAIT}' '\input bldelem3.txt' && tex '\def\FMT{DINAFOURPORTRAIT}' \
            '\input bldelem3.txt' 

bldelem3.0: bldelem3.mp
	mpost bldelem3.mp

bldelem3.mp: bldelem3.ldf bldelem1.lmc bldelem3.lmc
	./3dldf bldelem3.ldf

#### bldelem4

bldelem4.pdf: bldelem4.ps
	ps2pdf bldelem4.ps

bldelem4.ps: bldelem4.dvi 
	dvips -o bldelem4.ps bldelem4.dvi

bldelem4.dvi: bldelem4.txt bldelem4.0 fmt8511.txt fmtdina4.txt
	tex '\def\FMT{DINAFOURPORTRAIT}' '\input bldelem4.txt' && tex '\def\FMT{DINAFOURPORTRAIT}' \
            '\input bldelem4.txt' 

bldelem4.0: bldelem4.mp
	mpost bldelem4.mp

bldelem4.mp: bldelem4.ldf bldelem1.lmc bldelem4.lmc
	./3dldf bldelem4.ldf

#### bldelem5

bldelem5.pdf: bldelem5.ps
	ps2pdf bldelem5.ps

bldelem5.ps: bldelem5.dvi 
	dvips -o bldelem5.ps bldelem5.dvi

bldelem5.dvi: bldelem5.txt bldelem5.0 fmt8511.txt fmtdina4.txt
	tex '\def\FMT{DINAFOURPORTRAIT}' '\input bldelem5.txt' && tex '\def\FMT{DINAFOURPORTRAIT}' \
            '\input bldelem5.txt' 

bldelem5.0: bldelem5.mp
	mpost bldelem5.mp

bldelem5.mp: bldelem5.ldf bldelem0.lmc bldelem5.lmc
	./3dldf bldelem5.ldf


#### bldelem6

bldelem6.pdf: bldelem6.ps
	ps2pdf bldelem6.ps

bldelem6.ps: bldelem6.dvi 
	dvips -o bldelem6.ps bldelem6.dvi

bldelem6.dvi: bldelem6.txt bldelem6.0 fmt8511.txt fmtdina4.txt
	tex '\def\FMT{DINAFOURPORTRAIT}' '\input bldelem6.txt' && tex '\def\FMT{DINAFOURPORTRAIT}' \
            '\input bldelem6.txt' 

bldelem6.0: bldelem6.mp 
	mpost bldelem6.mp

bldelem6.mp: bldelem6.ldf bldelem0.lmc rctprsm.lmc
	./3dldf bldelem6.ldf

#### bldelem7

bldelem7.pdf: bldelem7.ps
	ps2pdf bldelem7.ps

bldelem7.ps: bldelem7.dvi 
	dvips -o bldelem7.ps bldelem7.dvi

bldelem7.dvi: bldelem7.txt bldelem7.0 fmt8511.txt fmtdina4.txt
	tex '\def\FMT{DINAFOURPORTRAIT}' '\input bldelem7.txt' && tex '\def\FMT{DINAFOURPORTRAIT}' \
            '\input bldelem7.txt' 

bldelem7.0: bldelem7.mp
	mpost bldelem7.mp

bldelem7.mp: bldelem7.ldf bldelem0.lmc bldelem5.lmc
	./3dldf bldelem7.ldf


#### bldelem100

bldelem100.pdf: bldelem100.ps
	ps2pdf bldelem100.ps

bldelem100.ps: bldelem100.dvi 
	dvips -o bldelem100.ps bldelem100.dvi

bldelem100.dvi: bldelem100.txt bldelem5.0 bldelem6.0 bldelem7.0 fmt8511.txt fmtdina4.txt
	tex '\def\FMT{DINAFOURPORTRAIT}' '\input bldelem100.txt' && tex '\def\FMT{DINAFOURPORTRAIT}' \
            '\input bldelem100.txt' 


## * (1) TAGS.

TAGS : 3DLDFprg.web 3DLDFp02.web 3DLDFp03.web $(3dldf_CWEBS) 
	@echo "Regenerating the tags table for the CWEB files"
	etags 3DLDFp02.web 3DLDFp03.web 3DLDFprg.web $(3dldf_CWEBS) 
  

## * show.

.PHONY: show
show:
#	echo "EXEEXT == $(EXEEXT)"
#	echo "\@LIBS\@ ==  @LIBS@"
#	echo "3dldf_OBJECTS == $(3dldf_OBJECTS)"
#	echo "CXXFLAGS == $(CXXFLAGS)"
#	echo "AM_CXXFLAGS == $(AM_CXXFLAGS)"
#	echo "YACC == $(YACC)"
#	echo "BISON == $(BISON)"
#	echo "LEX == $(LEX)"
#	echo "CWEAVE == $(CWEAVE)"
#	echo "CTANGLE == $(CTANGLE)"

## Local Variables:
## mode:Makefile
## outline-minor-mode:t
## outline-regexp:"## *\\*+"
## End:

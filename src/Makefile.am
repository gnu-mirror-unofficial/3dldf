#### 3DLDF-2.0/src/Makefile.am
#### Created by Laurence D. Finston (LDF).

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

#### !! START HERE:  LDF 2013.04.23.  Add a dummy C++ file in order to have
#### 'CXXCOMPILE' and 'CXXLINK' set.

bin_PROGRAMS = dummy$(EXEEXT) prbsnflx$(EXEEXT) 3dldf$(EXEEXT) 

lib_LTLIBRARIES = lib3dldflb.la 

# colall.web intro.web

3dldflb_CWEB_files = arc.web circles.web cncsctlt.web colors.web complex.web \
                cones.web conicsct.web crclslc.web creatnew.web cuboid.web curves.web \
                cylinder.web dashptrn.web ddchdrn.web deftfncs.web ellipses.web \
                ellpsoid.web ellpsslc.web figures.web format.web glyphs.web gsltmplt.web \
                helices.web hyprbola.web \
                imetfncs.web io.web lines.web \
                matrices.web nurbs.web origami.web parabola.web parabold.web paraellp.web \
                parahypr.web paths.web pctfncs0.web pens.web \
                pictures.web planes.web plyhdslc.web pntrvcf0.web pntrvctr.web points.web \
                polygons.web polyhed.web predctes.web primes.web prrfnc0.web \
                pspglb.web rectangs.web rhtchdrn.web scanprse.web scanprsf.web \
                sctpcrt.web sctpfncs.web shapes.web solfaced.web solids.web \
                spheres.web sphrdevl.web transfor.web triangle.web \
                utility.web


3dldflb_c_files = $(3dldflb_CWEB_files:.web=.c)
3dldflb_cpp_files = $(3dldflb_CWEB_files:.web=.c++) 
3dldflb_h_files = $(3dldflb_CWEB_files:.web=.h) 
3dldflb_hpp_files = $(3dldflb_CWEB_files:.web=.h++) loader.h++
3dldflb_lo_files = $(3dldflb_CWEB_files:.web=.lo)

3dldf_LDADD = lib3dldflb.la 

3dldf_SOURCES = main.web parser2.web scanner2.web scan.web

3dldf_cpp_files = $(3dldf_SOURCES:.web=.c++)
3dldf_c_files = $(3dldf_SOURCES:.web=.c)
3dldf_hpp_files = $(3dldf_SOURCES:.web=.h++) parser.h++ parser.hh
3dldf_h_files = $(3dldf_SOURCES:.web=.h)
3dldf_rpo_files = $(3dldf_SOURCES:.web=.rpo)

3dldf_obj_files = $(3dldf_SOURCES:.web=.o) parser.o

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

dummy_SOURCES = dummy.cxx


EXTRA_DIST = check_scan_parse_output.sh patterns.web prelims.web

CLEANFILES := $(3dldf_c_files) $(3dldf_cpp_files) $(3dldf_hpp_files) $(3dldf_h_files) \
              $(3dldf_OBJECTS) $(3dldf_rpo_files) \
              $(3dldflb_c_files) $(3dldflb_cpp_files) $(3dldflb_h_files) \
              $(3dldflb_hpp_files) $(3dldflb_lo_files) \
              loader.c loader.c++ loader.h loader.h++ \
              parser.c parser.c++ prbsnflx.c++ \
              examples.h layers.h layers.h++ parser.h++ parser.hh parser2.y++ parser.y++ \
              ldf_1.log scanner2.l++
 
# AM_CXXFLAGS =

#### ** (2) Rules

#### *** (3) Link 3dldf

3dldf: $(3dldf_obj_files) $(3dldf_LDADD) 
	@echo "Linking 3dldf"
	$(CXXLINK) $(3dldf_obj_files) -pthread $(3dldf_LDADD) $(LIBS)

lib3dldflb.la: $(3dldflb_hpp_files) $(3dldf_hpp_files) parser.hh parser.h++ $(3dldflb_lo_files) 
	$(CXXLINK) -rpath $(libdir) $(3dldflb_lo_files) $(LIBS)



#### The following implicit rule generates C++ source code and header files 
#### from the '.web' files.
#### This rule calls 'ctangle' and then compares the resulting '.c' and '.h' files
#### with the existing '.c++' and '.h++' files (if present).  Changes only
#### affecting whitespace, comments, and or "#line" directives are ignored.
#### If the '.c' file is otherwise identical to the '.c++' file, nothing further is
#### done with it and the '.c++' file remains unchanged.  
#### The same applies to the '.h' and '.h++' file.  
#### In addition, if the '.c' file has changed, the '.o' files is "touched" to 
#### update its timestamp, so that the '.web' file won't be tested again unless
#### it is changed.  However, it does seem that some unnecessary testing is performed.
####
#### If, however, a change is recognized, the '.c' file is renamed to '.c++'
#### and the '.h' file is renamed to '.h++'.
####
#### Please note that this "algorithm" has the unfortunate consequence
#### that changes to whitespace within strings are also ignored.  In this case, 
#### the corresponding '.o' file must be deleted or
#### some other change must be made to the '.web' file in order to force recompilation.
####
#### LDF 2013.04.11.

%.c++ %.h++ : %.web
	ctangle $<
	@if test -e $*.c++; \
        then \
        echo "$*.c++ exists"; \
        diff -q -w -B -I '^[[:space:]]*\(#line\|/\*\)' \
        $*.c++ $*.c > diff_c.res; \
           if test -s diff_c.res; \
           then \
              echo "$*.c++ has changed."; \
              mv $*.c $*.c++; \
           else \
              echo "$*.c++ is unchanged."; \
	      if test -s $*.o; \
	         then \
	         touch $*.o; \
	      fi; \
           fi; \
        else \
        echo "$*.c++ does not exist"; \
        mv $*.c $*.c++; \
        fi; 
####
	@if test -e $*.h++; \
        then \
        echo "$*.h++ exists"; \
        diff -q -w -B -I '^[[:space:]]*\(#line\|/\*\)' \
        $*.h++ $*.h > diff_h.res; \
           if test -s diff_h.res; \
           then \
              echo "$*.h++ has changed."; \
              mv $*.h $*.h++; \
           else \
              echo "$*.h++ is unchanged."; \
           fi; \
        else \
        echo "$*.h++ does not exist"; \
        if test -e $*.h; then \
        mv $*.h $*.h++; fi; \
        fi; 
	@rm -f diff_c.res diff_h.res 

#### *** (3) prbsnflx

## 'prbsnflx' is a trivial Flex program that removes the '#line'
## preprocessor commands and the comments that 'ctangle' writes to
## 'parser.c'.  
## LDF 2004.03.26.

#### *** (3) parser

parser.y++ : parser.w prbsnflx$(EXEEXT) $(3dldf_PARSER_FILES)
	ctangle $<
	./prbsnflx$(EXEEXT) parser.c parser.y
	check_scan_parse_output.sh parser.y parser.y++

parser.c++ parser.h++ parser.hh : parser.y++ 
	$(YACC) --debug -d -o parser.cxx $<
	check_scan_parse_output.sh parser.cxx parser.c++
	check_scan_parse_output.sh parser.hxx parser.h++

parser.o: parser.c++ parser.h++ arc.h++ circles.h++ cncsctlt.h++ colors.h++ \
                     complex.h++ cones.h++ conicsct.h++ crclslc.h++ \
                     creatnew.h++ cuboid.h++ curves.h++ cylinder.h++ \
                     dashptrn.h++ ddchdrn.h++ ellipses.h++ ellpsoid.h++ \
                     ellpsslc.h++ glyphs.h++ gsltmplt.h++ helices.h++ \
                     hyprbola.h++ io.h++ lines.h++ loader.h++ matrices.h++ nurbs.h++ \
                     origami.h++ parabola.h++ parabold.h++ paraellp.h++ \
                     parahypr.h++ paths.h++ pctfncs0.h++ pens.h++ pictures.h++ \
                     planes.h++ plyhdslc.h++ pntrvcf0.h++ pntrvctr.h++ \
                     points.h++ polygons.h++ polyhed.h++ predctes.h++ \
                     primes.h++ pspglb.h++ rectangs.h++ rhtchdrn.h++ \
                     scanprse.h++ shapes.h++ solfaced.h++ solids.h++ \
                     spheres.h++ sphrdevl.h++ transfor.h++ triangle.h++ \
                     utility.h++


#### *** (3) parser2

parser2.y++ : parser2.web prbsnflx$(EXEEXT) $(3dldf_PARSER2_FILES)
	ctangle $<
	./prbsnflx$(EXEEXT) parser2.c parser2.y
	check_scan_parse_output.sh parser2.y parser2.y++

parser2.c++ parser2.h++ : parser2.y++ 
	$(YACC) --debug -d -o parser2.cxx $<
	check_scan_parse_output.sh parser2.cxx parser2.c++
	check_scan_parse_output.sh parser2.hxx parser2.h++

parser2.o: parser2.c++ parser2.h++ arc.h++ circles.h++ cncsctlt.h++ colors.h++ \
                     complex.h++ cones.h++ conicsct.h++ crclslc.h++ \
                     creatnew.h++ cuboid.h++ curves.h++ cylinder.h++ \
                     dashptrn.h++ ddchdrn.h++ ellipses.h++ ellpsoid.h++ \
                     ellpsslc.h++ glyphs.h++ gsltmplt.h++ helices.h++ \
                     hyprbola.h++ io.h++ lines.h++ matrices.h++ nurbs.h++ \
                     origami.h++ parabola.h++ parabold.h++ paraellp.h++ \
                     parahypr.h++ paths.h++ pctfncs0.h++ pens.h++ pictures.h++ \
                     planes.h++ plyhdslc.h++ pntrvcf0.h++ pntrvctr.h++ \
                     points.h++ polygons.h++ polyhed.h++ predctes.h++ \
                     primes.h++ pspglb.h++ rectangs.h++ rhtchdrn.h++ \
                     scanprse.h++ shapes.h++ solfaced.h++ solids.h++ \
                     spheres.h++ sphrdevl.h++ transfor.h++ triangle.h++ \
                     utility.h++

scanner2.o: scanner2.c++ scanner2.h++ io.h++  loader.h++ parser2.h++ pspglb.h++

scanner2.c++ scanner2.h++ : scanner2.l++ 
	$(LEX) -o scanner2.cxx $<
	check_scan_parse_output.sh scanner2.cxx scanner2.c++
	check_scan_parse_output.sh scanner2.hxx scanner2.h++

scanner2.l++ : scanner2.web prbsnflx$(EXEEXT)
	ctangle scanner2.web
	./prbsnflx$(EXEEXT) scanner2.c scanner2.l
	check_scan_parse_output.sh scanner2.l scanner2.l++

prbsnflx$(EXEEXT): prbsnflx.c++ 
	$(CXXCOMPILE) -o $@ $<

prbsnflx.c++: prbsnflx.l++
	flex -o $@ $<
	@cat cpyrtcpp.txt > AAAtmp.txt
	@echo >> AAAtmp.txt
	@cat prbsnflx.c++ >> AAAtmp.txt
	@mv AAAtmp.txt prbsnflx.c++


#### *** (3) 

main.o: main.c++ $(3dldf_hpp_files) parser.h++ parser2.h++ parser.hh

arc.o: arc.c++ arc.h++ circles.h++ cncsctlt.h++ colors.h++ conicsct.h++ crclslc.h++ \
               creatnew.h++ curves.h++ dashptrn.h++ ellipses.h++ ellpsslc.h++ \
               hyprbola.h++ io.h++ lines.h++ loader.h++ nurbs.h++ parabola.h++ \
               paths.h++ pens.h++ pictures.h++ planes.h++ pntrvctr.h++ \
               points.h++ polygons.h++ primes.h++ pspglb.h++ rectangs.h++ \
               shapes.h++ transfor.h++ triangle.h++

circles.o: circles.c++ circles.h++ colors.h++ complex.h++ conicsct.h++ creatnew.h++ \
                       curves.h++ dashptrn.h++ ellipses.h++ io.h++ lines.h++ loader.h++ \
                       matrices.h++ nurbs.h++ paths.h++ pens.h++ pictures.h++ planes.h++ \
                       pntrvctr.h++ points.h++ polygons.h++ primes.h++ pspglb.h++ \
                       rectangs.h++ shapes.h++ transfor.h++ triangle.h++


cncsctlt.o: cncsctlt.c++ cncsctlt.h++ circles.h++ colors.h++ complex.h++ \
                         conicsct.h++ crclslc.h++ creatnew.h++ curves.h++ \
                         dashptrn.h++ ellipses.h++ ellpsslc.h++ hyprbola.h++ \
                         io.h++ lines.h++ loader.h++ matrices.h++ nurbs.h++ \
                         parabola.h++ paths.h++ pens.h++ pictures.h++ \
                         planes.h++ pntrvctr.h++ points.h++ polygons.h++ \
                         primes.h++ pspglb.h++ rectangs.h++ shapes.h++ \
                         transfor.h++ triangle.h++



colors.o: colors.c++ colors.h++ complex.h++ creatnew.h++ io.h++ loader.h++ \
                     matrices.h++ pntrvctr.h++ primes.h++ pspglb.h++


complex.o: complex.c++ complex.h++ creatnew.h++ io.h++ loader.h++ pntrvctr.h++ \
                       primes.h++ pspglb.h++


cones.o: cones.c++ cones.h++ arc.h++ circles.h++ cncsctlt.h++ colors.h++ complex.h++ \
                   conicsct.h++ crclslc.h++ creatnew.h++ cuboid.h++ \
		   curves.h++ dashptrn.h++ ddchdrn.h++ ellipses.h++ \
		   ellpsslc.h++ helices.h++ hyprbola.h++ io.h++ lines.h++ \
		   loader.h++ matrices.h++ nurbs.h++ origami.h++ \
		   parabola.h++ paths.h++ pens.h++ pictures.h++ planes.h++ \
		   plyhdslc.h++ pntrvctr.h++ points.h++ polygons.h++ \
		   polyhed.h++ primes.h++ pspglb.h++ rectangs.h++ \
		   rhtchdrn.h++ shapes.h++ solfaced.h++ solids.h++ \
		   transfor.h++ triangle.h++
 

conicsct.o: conicsct.c++ conicsct.h++ colors.h++ complex.h++ creatnew.h++ curves.h++ \
                         dashptrn.h++ io.h++ lines.h++ loader.h++ matrices.h++ \
                         nurbs.h++ paths.h++ pens.h++ pictures.h++ planes.h++ \
                         pntrvctr.h++ points.h++ polygons.h++ primes.h++ \
                         pspglb.h++ rectangs.h++ shapes.h++ transfor.h++ triangle.h++


crclslc.o: crclslc.c++ crclslc.h++ circles.h++ colors.h++ complex.h++ \
                       conicsct.h++ creatnew.h++ curves.h++ dashptrn.h++ \
                       ellipses.h++ ellpsslc.h++ io.h++ lines.h++ loader.h++ \
                       matrices.h++ nurbs.h++ paths.h++ pens.h++ pictures.h++ \
                       planes.h++ pntrvctr.h++ points.h++ polygons.h++ \
                       primes.h++ pspglb.h++ rectangs.h++ shapes.h++ \
                       transfor.h++ triangle.h++

#### TODO:  LDF 2013.06.03.  Get rid of references to the template function 
#### 'create_new'.  Then get rid of 'creatnew.web'.

creatnew.o: creatnew.c++ creatnew.h++ io.h++ loader.h++ pspglb.h++


cuboid.o: cuboid.c++ cuboid.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                     conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                     hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                     solfaced.h++ cuboid.h++

curves.o: curves.c++ curves.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++ nurbs.h++ paths.h++ curves.h++

cylinder.o: cylinder.c++ cylinder.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++   

dashptrn.o: dashptrn.c++ dashptrn.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++

ddchdrn.o: ddchdrn.c++ ddchdrn.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++

deftfncs.o: deftfncs.c++ deftfncs.h++ arc.h++ circles.h++ cncsctlt.h++ \
                         colors.h++ complex.h++ cones.h++ conicsct.h++ \
			 crclslc.h++ creatnew.h++ cuboid.h++ curves.h++ \
			 cylinder.h++ dashptrn.h++ ddchdrn.h++ ellipses.h++ \
			 ellpsoid.h++ ellpsslc.h++ figures.h++ glyphs.h++ \
			 gsltmplt.h++ helices.h++ hyprbola.h++ imetfncs.h++ \
			 io.h++ lines.h++ loader.h++ matrices.h++ nurbs.h++ \
			 origami.h++ parabola.h++ parabold.h++ paraellp.h++ \
			 parahypr.h++ parser.hh parser.h++ paths.h++ pctfncs0.h++ \
			 pens.h++ pictures.h++ planes.h++ plyhdslc.h++ \
			 pntrvcf0.h++ pntrvctr.h++ points.h++ polygons.h++ \
			 polyhed.h++ predctes.h++ primes.h++ pspglb.h++ \
			 rectangs.h++ rhtchdrn.h++ scan.h++ scanprse.h++ \
			 scanprsf.h++ shapes.h++ solfaced.h++ solids.h++ \
			 spheres.h++ sphrdevl.h++ transfor.h++ triangle.h++ \
			 utility.h++
                         

ellipses.o: ellipses.c++ ellipses.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ 

ellpsoid.o: ellpsoid.c++ ellpsoid.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++

ellpsslc.o: ellpsslc.c++ ellpsslc.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++

figures.o: figures.c++ figures.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                       cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                       paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                       predctes.h++ scanprse.h++ figures.h++

glyphs.o: glyphs.c++ glyphs.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                     conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                     hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                     solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                     cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                     paraellp.h++ parahypr.h++ glyphs.h++

gsltmplt.o: gsltmplt.c++ gsltmplt.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++

helices.o: helices.c++ helices.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++

hyprbola.o: hyprbola.c++ hyprbola.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++             

imetfncs.o: imetfncs.c++ imetfncs.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                         predctes.h++ scanprse.h++ figures.h++ parser.hh parser.h++ scan.h++ scanprsf.h++ \
                         imetfncs.h++             

io.o: io.c++ io.h++ loader.h++ pspglb.h++ io.h++

lines.o: lines.c++ lines.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                   creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                   transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++

matrices.o: matrices.c++ matrices.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++

nurbs.o: nurbs.c++ nurbs.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                   creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                   transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                   planes.h++ nurbs.h++

origami.o: origami.c++ origami.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++

parabola.o: parabola.c++ parabola.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++

parabold.o: parabold.c++ parabold.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++

paraellp.o: paraellp.c++ paraellp.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++             

parahypr.o: parahypr.c++ parahypr.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++

paths.o: paths.c++ paths.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                   creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                   transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                   planes.h++ nurbs.h++ paths.h++

pctfncs0.o: pctfncs0.c++ pctfncs0.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++

pens.o: pens.c++ pens.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ creatnew.h++ \
                 pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ transfor.h++ \
                 pens.h++         

pictures.o: pictures.c++ pictures.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++

planes.o: planes.c++ planes.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++           

plyhdslc.o: plyhdslc.c++ plyhdslc.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++

pntrvcf0.o: pntrvcf0.c++ pntrvcf0.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++

pntrvctr.o: pntrvctr.c++ pntrvctr.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++

points.o: points.c++ points.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++

polygons.o: polygons.c++ polygons.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++

polyhed.o: polyhed.c++ polyhed.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++

predctes.o: predctes.c++ predctes.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                         predctes.h++             

primes.o: primes.c++ primes.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++

prrfnc0.o: prrfnc0.c++ prrfnc0.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                       cones.h++ cylinder.h++ spheres.h++ sphrdevl.h++ parabold.h++ paraellp.h++ \
                       parahypr.h++ glyphs.h++ ellpsoid.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                       predctes.h++ scanprse.h++ figures.h++ parser.hh parser.h++ scan.h++ scanprsf.h++ \
                       imetfncs.h++ deftfncs.h++ sctpcrt.h++ sctpfncs.h++ 

pspglb.o: pspglb.c++ pspglb.h++ loader.h++ pspglb.h++

rectangs.o: rectangs.c++ rectangs.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++

rhtchdrn.o: rhtchdrn.c++ rhtchdrn.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++

scan.o: scan.c++ scan.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ creatnew.h++ \
                 pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ transfor.h++ \
                 pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ planes.h++ \
                 nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                 conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                 hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                 solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                 cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                 paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                 predctes.h++ scanprse.h++ figures.h++ parser.hh parser.h++ scan.h++

scanprse.o: scanprse.c++ scanprse.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                         predctes.h++ scanprse.h++

scanprsf.o: scanprsf.c++ scanprsf.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                         predctes.h++ scanprse.h++ figures.h++ parser.hh parser.h++ scan.h++ scanprsf.h++

sctpcrt.o: sctpcrt.c++ sctpcrt.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                       cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                       paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                       predctes.h++ scanprse.h++ figures.h++ parser.hh parser.h++ scan.h++ scanprsf.h++ \
                       imetfncs.h++ deftfncs.h++ sctpcrt.h++

sctpfncs.o: sctpfncs.c++ sctpfncs.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                         predctes.h++ scanprse.h++ figures.h++ parser.hh parser.h++ scan.h++ scanprsf.h++ \
                         imetfncs.h++ deftfncs.h++ sctpcrt.h++ sctpfncs.h++

shapes.o: shapes.c++ shapes.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++

solfaced.o: solfaced.c++ solfaced.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++             

solids.o: solids.c++ solids.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                     conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                     hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ 

spheres.o: spheres.c++ spheres.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                       cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++

sphrdevl.o: sphrdevl.c++ sphrdevl.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ 

transfor.o: transfor.c++ transfor.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ primes.h++ complex.h++ matrices.h++ \
                         colors.h++ transfor.h++   

triangle.o: triangle.c++ triangle.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ polygons.h++ triangle.h++

utility.o: utility.c++ utility.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                       cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                       paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++




.PHONY: tags

tags:
	etags $(3dldf_SOURCES) $(3dldf_PARSER_FILES)
 




.PHONY: query

query:
	@echo "3dldflb_c_files == $(3dldflb_c_files)"
	@echo "3dldflb_cpp_files == $(3dldflb_cpp_files)"
	@echo "CLEANFILES == $(CLEANFILES)"

# @echo "CXXCOMPILE == $(CXXCOMPILE)"
# @echo "CXX == $(CXX)"
# @echo "CXXLINK == $(CXXLINK)"
# @echo "CXXFLAGS == $(CXXFLAGS)"

## Local Variables:
## mode:Makefile
## outline-minor-mode:t
## outline-regexp:"## *\\*+"
## abbrev-mode:t
## End:

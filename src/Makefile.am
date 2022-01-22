#### /src/Makefile.am
#### Created by Laurence D. Finston (LDF) 2003.

#### * Copyright and License.

#### This file is part of GNU 3DLDF, a package for three-dimensional drawing. 
#### Copyright (C) 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 
#### 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022 The Free Software Foundation, Inc.

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

# dummy$(EXEEXT) 

bin_PROGRAMS = prbsnflx$(EXEEXT) 3dldf$(EXEEXT) cnepspng$(EXEEXT) srtstrin$(EXEEXT)

OUTLINEFONTDIR := Outline_Fonts
export OUTLINEFONTDIR

SUBDIRS = $(OUTLINEFONTDIR) 

# lib3dldfsp.la

lib_LTLIBRARIES = lib3dldflb.la 

# colall.web intro.web

3dldflb_CWEB_files = arc.web astronmy.web circles.web cncsctlt.web colors.web complex.web \
                cones.web conicsct.web crclslc.web creatnew.web cuboid.web curves.web \
                cylinder.web dashptrn.web ddchdrn.web deftfncs.web ellipses.web \
                ellpsoid.web ellpsslc.web figures.web glyphs.web gsltmplt.web \
                helices.web hyprbola.web \
                imetfncs.web io.web lines.web loader.web \
                matrices.web mpoutput.web newwrite.web nurbs.web origami.web \
                parabola.web parabold.web paraellp.web \
                parahypr.web paths.web pctfncs0.web pens.web \
                pictures.web planes.web plyhdslc.web pntrvcf0.web pntrvctr.web points.web \
                polygons.web polyhed.web predctes.web primes.web prrfnc0.web \
                rectangs.web rhtchdrn.web scan.web scanprse.web scanprsf.web \
                scnmptpt.web sctpcrt.web sctpfncs.web shapes.web solfaced.web solids.web \
                spheres.web sphrdevl.web transfor.web triangle.web \
                utility.web

3dldflb_c_files = $(3dldflb_CWEB_files:.web=.c)
3dldflb_cpp_files = $(3dldflb_CWEB_files:.web=.c++) 
3dldflb_h_files = $(3dldflb_CWEB_files:.web=.h) 
3dldflb_hpp_files = $(3dldflb_CWEB_files:.web=.h++) loader.h++
3dldflb_lo_files = $(3dldflb_CWEB_files:.web=.lo)
3dldflb_obj_files = $(3dldflb_CWEB_files:.web=.o)


# 3dldfsp_CWEB_files = parser2.web scanner2.web 

# 3dldfsp_c_files = $(3dldfsp_CWEB_files:.web=.c)
# 3dldfsp_cpp_files = $(3dldfsp_CWEB_files:.web=.c++) 
# 3dldfsp_h_files = $(3dldfsp_CWEB_files:.web=.h) 
# 3dldfsp_hpp_files = $(3dldfsp_CWEB_files:.web=.h++) parser_1.h++
# 3dldfsp_obj_files = $(3dldfsp_CWEB_files:.web=.o)
# 3dldfsp_lo_files = $(3dldfsp_CWEB_files:.web=.lo)


3dldf_LDADD = lib3dldflb.la # lib3dldfsp.la

3dldf_SOURCES = main.web pspglb.web 

3dldf_cpp_files = $(3dldf_SOURCES:.web=.c++)
3dldf_c_files = $(3dldf_SOURCES:.web=.c)
3dldf_hpp_files = $(3dldf_SOURCES:.web=.h++) parser.h++ parser_1.h++
3dldf_h_files = $(3dldf_SOURCES:.web=.h)
3dldf_rpo_files = $(3dldf_SOURCES:.web=.rpo)

3dldf_obj_files = $(3dldf_SOURCES:.web=.o) parser.o

3dldf_PARSER_FILES := arcexpr.w arcvexpr.w cmpxassn.w cmpxexpr.w cmpxvxpr.w \
                      cslcmnd.w cslexpr.w cslvexpr.w \
                      fcscmnd.w \
                      mtrxassn.w mtrxexpr.w mtrxvxpr.w \
                      parser.w passign.w pastrnmy.w pblexpr.w \
                      pblvexpr.w pbpexpr.w \
                      pbpvexpr.w pbsndecl.w pcbvexpr.w pcirexpr.w \
		      pclrcmnd.w pclvexpr.w pcnvexpr.w pcolexpr.w pcommand.w \
		      pcondit.w pconexpr.w pcrclslc.w pcrvexpr.w pcubexpr.w \
                      pcylexpr.w pcyvexpr.w pdatbase.w pdpvexpr.w \
                      pdrwcmnd.w pdshexpr.w pedvexpr.w peldexpr.w \
                      pellexpr.w pellpslc.w pelvexpr.w peqexpr.w \
                      pfcvexpr.w pfgopcmd.w pfocexpr.w pfuncfin.w \
                      pglvexpr.w pglyexpr.w pgrpcmnd.w \
                      phlxexpr.w phpvexpr.w phxvexpr.w phypexpr.w \
                      pinptcmd.w \
                      plblcmnd.w pldfdcl.w \
                      ploops.w pmacros.w pnbvexpr.w pnmvexpr.w \
                      pnrbexpr.w pnumexpr.w pnwwrtex.w pnwwrtvx.w \
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
                      ptglexpr.w ptgvexpr.w ptmastro.w \
                      ptokdecl.w ptrfcmnd.w \
                      ptrnexpr.w pullexpr.w pullvxpr.w pvariabl.w pvcmncmd.w \
                      reverse.w setarc.w setmatrx.w spdvexpr.w spdvvexp.w


prbsnflx_SOURCES = prbsnflx.l++

srtstrin_SOURCES = srtstrin.cxx

#dummy_SOURCES = dummy.cxx

# $(3dldfsp_CWEB_files) 

# scanner2.web parser2.web

EXTRA_DIST = check_scan_parse_output.sh compile_parser.sh \
             cpyrtcpp.txt cpyrtasc.txt cpyrtcpp.txt cpyrtc.txt cpyrtel.txt \
             cpyrtss.txt cpyrttex.txt cpyrtweb.txt \
             format.web gpl-3.0.txt gpl-3.0_a3.txt patterns.web prelims.web runit \
             sample.ldf sample0.ldf sample1.ldf sample2.ldf sample3.ldf \
             sample3.lmc sample3.aux \
             sample1.tex sample2.tex sample3.tex srtstrin.cxx \
             3DLDFmp.mp 3DLDFtex.bas 3DLDFtex.tex \
             $(3dldflb_CWEB_files) $(3dldf_SOURCES) \
             $(3dldf_PARSER_FILES) astronmy.lmc clstsph1.ldf clstsph1.aux clstsph1_sub.ldf clstsph1.tex \
             clstsph2.ldf

# scanner2.c++ scanner2.h++ scanner2.l++ parser2.y++ 

CLEANFILES := $(3dldf_c_files) $(3dldf_cpp_files) $(3dldf_hpp_files) $(3dldf_h_files) \
              $(3dldf_OBJECTS) $(3dldf_rpo_files) \
              $(3dldflb_c_files) $(3dldflb_cpp_files) $(3dldflb_h_files) \
              $(3dldflb_hpp_files) $(3dldflb_lo_files) \
              loader.c loader.c++ loader.h loader.h++ \
              parser.c parser.c++ parser_1.h++ parser.h++  parser.output parser.y++ \
              prbsnflx.c++ examples.h layers.h layers.h++ parser.h++ parser.y++ scnmptpt.l++ \
              ldf_1.log 
 
AM_CXXFLAGS = -fpermissive -fdiagnostics-show-option -Wno-return-type

# AM_LDFLAGS = -lgsl -lgslcblas -lm #### Using this didn't work.  LIBS must passed 
#                                   #### to 'configure'.  LDF 2013.11.06.

#### ** (2) Rules

.PHONY : touch

# $(3dldfsp_obj_files) 

touch:
	touch 3dldf$(EXEEXT) $(3dldf_obj_files) $(3dldflb_obj_files) \
               $(3dldf_LDADD)

lib3dldflb.c:
	touch $@

# lib3dldfsp.c:
# 	touch $@

dist-hook:
	rm -f ./lib3dldflb.c # ./lib3dldfsp.c

#### *** (3) Link 3dldf

# $(3dldfsp_obj_files)

3dldf$(EXEEXT): $(3dldf_obj_files) $(3dldf_LDADD) 
	@echo "Linking 3dldf"
	$(CXXLINK) $(3dldf_obj_files) -pthread $(3dldf_LDADD) $(LIBS)
	@touch $(3dldf_obj_files) $(3dldflb_obj_files)  \
               $(3dldf_LDADD) 3dldf$(EXEEXT) 

lib3dldflb.la: $(3dldflb_hpp_files) $(3dldf_hpp_files) parser_1.h++ parser.h++ $(3dldflb_lo_files) 
	$(CXXLINK) -rpath $(libdir) $(3dldflb_lo_files) $(LIBS)

# lib3dldfsp.la: $(3dldfsp_hpp_files) $(3dldf_hpp_files) $(3dldfsp_lo_files) 
# 	$(CXXLINK) -rpath $(libdir) $(3dldfsp_lo_files) $(LIBS)


#### The following implicit (pattern) rule generates C++ source code and header files 
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
              rm -f $*.c; \
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
              rm -f $*.h; \
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

parser.y++ parser_1.h++: parser.w prbsnflx$(EXEEXT) $(3dldf_PARSER_FILES)
	ctangle $<
	./prbsnflx$(EXEEXT) parser.c parser.y
	rm -f parser.c
	./check_scan_parse_output.sh parser.y parser.y++
	touch $@


parser.c++ parser.h++: parser.y++ 
	$(YACC) -Wno-yacc -Wno-conflicts-sr --debug -d -o parser.cxx $<
	./check_scan_parse_output.sh parser.cxx parser.c++
	./check_scan_parse_output.sh parser.hxx parser.h++
	touch $@

parser.o: parser.c++ parser.h++ parser_1.h++ arc.h++ astronmy.h++ circles.h++ cncsctlt.h++ colors.h++ \
                     complex.h++ cones.h++ conicsct.h++ crclslc.h++ \
                     creatnew.h++ cuboid.h++ curves.h++ cylinder.h++ \
                     dashptrn.h++ ddchdrn.h++ ellipses.h++ ellpsoid.h++ \
                     ellpsslc.h++ glyphs.h++ gsltmplt.h++ helices.h++ \
                     hyprbola.h++ io.h++ lines.h++ loader.h++ matrices.h++ mpoutput.h++ \
                     newwrite.h++ nurbs.h++ \
                     origami.h++ parabola.h++ parabold.h++ paraellp.h++ \
                     parahypr.h++ paths.h++ pctfncs0.h++ pens.h++ pictures.h++ \
                     planes.h++ plyhdslc.h++ pntrvcf0.h++ pntrvctr.h++ \
                     points.h++ polygons.h++ polyhed.h++ predctes.h++ \
                     primes.h++ pspglb.h++ rectangs.h++ rhtchdrn.h++ \
                     scanprse.h++ shapes.h++ solfaced.h++ solids.h++ \
                     spheres.h++ sphrdevl.h++ transfor.h++ triangle.h++ \
                     utility.h++ compile_parser.sh
	./compile_parser.sh "$(CXXCOMPILE)"

.PHONY: fp ## "force parser"

fp:
	rm -f parser.o
	$(MAKE) parser.o

.PHONY: fprog f-prog ## "force parser and prog"

fprog f-prog:
	rm -f parser.o
	$(MAKE) prog


.PHONY: f-run ## "force parser and run"

f-run:
	rm -f parser.o
	$(MAKE) run

.PHONY: f-run-bi ## "force parser and run with --bison-trace option"

f-run-bi:
	rm -f parser.o
	$(MAKE) parser.o
	$(MAKE) run-bi

.PHONY: run-s

run-s:
	3dldf$(EXEEXT) clstsph1 && 3dldf$(EXEEXT) clstsph2 && mpost -numbersystem "double" clstsph1 && \
           mpost -numbersystem "double" clstsph2 \
           && tex clstsph1 && dvips -o clstsph1.ps clstsph1.dvi

.PHONY: run-p

run-p:
	3dldf$(EXEEXT) clstsph1 && mpost -numbersystem "double" clstsph1 && tex clstsph1 && dvipdfmx clstsph1.dvi

#### *** (3) parser2

# parser2.y++ : parser2.web prbsnflx$(EXEEXT) $(3dldf_PARSER2_FILES)
# 	ctangle $<
# 	./prbsnflx$(EXEEXT) parser2.c parser2.y
# 	rm -f parser2.c
# 	./check_scan_parse_output.sh parser2.y parser2.y++
# 	@touch $@

# parser2.c++ parser2.h++ : parser2.y++ 
# 	$(YACC) --debug -d -o parser2.cxx $<
# 	./check_scan_parse_output.sh parser2.cxx parser2.c++
# 	./check_scan_parse_output.sh parser2.hxx parser2.h++
# 	@touch $@

# parser2.o: parser2.c++ parser2.h++ arc.h++ astronmy.h++ circles.h++ cncsctlt.h++ colors.h++ \
#                      complex.h++ cones.h++ conicsct.h++ crclslc.h++ \
#                      creatnew.h++ cuboid.h++ curves.h++ cylinder.h++ \
#                      dashptrn.h++ ddchdrn.h++ ellipses.h++ ellpsoid.h++ \
#                      ellpsslc.h++ glyphs.h++ gsltmplt.h++ helices.h++ \
#                      hyprbola.h++ io.h++ lines.h++ matrices.h++ mpoutput.h++ newwrite.h++ nurbs.h++ \
#                      origami.h++ parabola.h++ parabold.h++ paraellp.h++ \
#                      parahypr.h++ paths.h++ pctfncs0.h++ pens.h++ pictures.h++ \
#                      planes.h++ plyhdslc.h++ pntrvcf0.h++ pntrvctr.h++ \
#                      points.h++ polygons.h++ polyhed.h++ predctes.h++ \
#                      primes.h++ pspglb.h++ rectangs.h++ rhtchdrn.h++ \
#                      scanprse.h++ shapes.h++ solfaced.h++ solids.h++ \
#                      spheres.h++ sphrdevl.h++ transfor.h++ triangle.h++ \
#                      utility.h++
# 	$(CXXCOMPILE) -c -o $@ $<
# 	@touch $@

# scanner2.o: scanner2.c++ scanner2.h++ io.h++  loader.h++ parser2.h++ pspglb.h++
# 	$(CXXCOMPILE) -c -o $@ $<
# 	@touch $@

# scanner2.c++ scanner2.h++ : scanner2.l++ 
# 	$(LEX) -o scanner2.cxx $<
# 	./check_scan_parse_output.sh scanner2.cxx scanner2.c++
# 	./check_scan_parse_output.sh scanner2.hxx scanner2.h++
# 	@touch $@

# scanner2.l++ : scanner2.web prbsnflx$(EXEEXT)
# 	ctangle scanner2.web
# 	./prbsnflx$(EXEEXT) scanner2.c scanner2.l
# 	rm -f scanner2.c
# 	./check_scan_parse_output.sh scanner2.l scanner2.l++
# 	@touch $@

prbsnflx$(EXEEXT): prbsnflx.c++ 
	$(CXXCOMPILE) -o $@ $<

prbsnflx.c++: prbsnflx.l++
	flex -o $@ $<
	@cat cpyrtcpp.txt > AAAtmp.txt
	@echo >> AAAtmp.txt
	@cat prbsnflx.c++ >> AAAtmp.txt
	@mv AAAtmp.txt prbsnflx.c++

scnmptpt.o: scnmptpt.c++ scnmptpt.h++ pspglb.h++ io.h++ gsltmplt.h++ creatnew.h++ pntrvctr.h++ \
	    primes.h++ complex.h++ matrices.h++ colors.h++ transfor.h++ pens.h++ dashptrn.h++ \
	    shapes.h++ pictures.h++ points.h++ lines.h++ planes.h++ nurbs.h++ \
	    paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
	    conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ \
	    parabola.h++ hyprbola.h++ cncsctlt.h++ helices.h++ origami.h++ \
	    solids.h++ solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ \
	    rhtchdrn.h++ plyhdslc.h++ cones.h++ cylinder.h++ ellpsoid.h++ \
	    spheres.h++ sphrdevl.h++ parabold.h++ paraellp.h++ parahypr.h++ \
	    glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ predctes.h++ \
	    scanprse.h++ figures.h++ parser.h++ parser_1.h++ scan.h++ scanprsf.h++ \
	    imetfncs.h++ deftfncs.h++ sctpcrt.h++ sctpfncs.h++ prrfnc0.h++ \
	    mpoutput.h++
	$(CXXCOMPILE) -c -o $@ $<

scnmptpt.c++ scnmptpt.h++: scnmptpt.l++ 
	$(LEX) -o scnmptpt.c++ $<

scnmptpt.l++: scnmptpt.web 
	ctangle scnmptpt.web
	prbsnflx$(EXEEXT) scnmptpt.c scnmptpt.l++
	rm scnmptpt.c
	check_scan_parse_output.sh scnmptpt.lxx scnmptpt.l++

#### *** (3) 

# parser2.h++ 

main.o: main.c++ $(3dldf_hpp_files) parser.h++ parser_1.h++

arc.o: arc.c++ arc.h++ circles.h++ cncsctlt.h++ colors.h++ conicsct.h++ crclslc.h++ \
               creatnew.h++ curves.h++ dashptrn.h++ ellipses.h++ ellpsslc.h++ \
               hyprbola.h++ io.h++ lines.h++ loader.h++ nurbs.h++ parabola.h++ \
               paths.h++ pens.h++ pictures.h++ planes.h++ pntrvctr.h++ \
               points.h++ polygons.h++ primes.h++ pspglb.h++ rectangs.h++ \
               shapes.h++ transfor.h++ triangle.h++
	$(CXXCOMPILE) -c -o $@ $<


astronmy.o: astronmy.c++ astronmy.h++ arc.h++ circles.h++ cncsctlt.h++ colors.h++ \
	    complex.h++ cones.h++ conicsct.h++ crclslc.h++ creatnew.h++ cuboid.h++ \
	    curves.h++ cylinder.h++ dashptrn.h++ ddchdrn.h++ deftfncs.h++ \
	    ellipses.h++ ellpsoid.h++ ellpsslc.h++ figures.h++ glyphs.h++ \
	    gsltmplt.h++ helices.h++ hyprbola.h++ imetfncs.h++ io.h++ lines.h++ \
	    loader.h++ matrices.h++ newwrite.h++ origami.h++ parabola.h++ parabold.h++ \
	    paraellp.h++ parahypr.h++ parser.h++ parser_1.h++ paths.h++ \
	    pctfncs0.h++ pens.h++ pictures.h++ planes.h++ plyhdslc.h++ \
	    pntrvcf0.h++ pntrvctr.h++ points.h++ polygons.h++ polyhed.h++ \
	    predctes.h++ primes.h++ prrfnc0.h++ pspglb.h++ rectangs.h++ \
	    rhtchdrn.h++ scan.h++ scanprse.h++ scanprsf.h++ sctpcrt.h++ \
	    sctpfncs.h++ shapes.h++ solfaced.h++ solids.h++ spheres.h++ \
	    sphrdevl.h++ transfor.h++ triangle.h++ utility.h++
	$(CXXCOMPILE) -c -o $@ $<

circles.o: circles.c++ circles.h++ colors.h++ complex.h++ conicsct.h++ creatnew.h++ \
                       curves.h++ dashptrn.h++ ellipses.h++ io.h++ lines.h++ loader.h++ \
                       matrices.h++ nurbs.h++ paths.h++ pens.h++ pictures.h++ planes.h++ \
                       pntrvctr.h++ points.h++ polygons.h++ primes.h++ pspglb.h++ \
                       rectangs.h++ shapes.h++ transfor.h++ triangle.h++
	$(CXXCOMPILE) -c -o $@ $<


cncsctlt.o: cncsctlt.c++ cncsctlt.h++ circles.h++ colors.h++ complex.h++ \
                         conicsct.h++ crclslc.h++ creatnew.h++ curves.h++ \
                         dashptrn.h++ ellipses.h++ ellpsslc.h++ hyprbola.h++ \
                         io.h++ lines.h++ loader.h++ matrices.h++ nurbs.h++ \
                         parabola.h++ paths.h++ pens.h++ pictures.h++ \
                         planes.h++ pntrvctr.h++ points.h++ polygons.h++ \
                         primes.h++ pspglb.h++ rectangs.h++ shapes.h++ \
                         transfor.h++ triangle.h++
	$(CXXCOMPILE) -c -o $@ $<



colors.o: colors.c++ colors.h++ complex.h++ creatnew.h++ io.h++ loader.h++ \
                     matrices.h++ pntrvctr.h++ primes.h++ pspglb.h++
	$(CXXCOMPILE) -c -o $@ $<


complex.o: complex.c++ complex.h++ creatnew.h++ io.h++ loader.h++ pntrvctr.h++ \
                       primes.h++ pspglb.h++
	$(CXXCOMPILE) -c -o $@ $<


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
	$(CXXCOMPILE) -c -o $@ $<

conicsct.o: conicsct.c++ conicsct.h++ colors.h++ complex.h++ creatnew.h++ curves.h++ \
                         dashptrn.h++ io.h++ lines.h++ loader.h++ matrices.h++ \
                         nurbs.h++ paths.h++ pens.h++ pictures.h++ planes.h++ \
                         pntrvctr.h++ points.h++ polygons.h++ primes.h++ \
                         pspglb.h++ rectangs.h++ shapes.h++ transfor.h++ triangle.h++
	$(CXXCOMPILE) -c -o $@ $<

crclslc.o: crclslc.c++ crclslc.h++ circles.h++ colors.h++ complex.h++ \
                       conicsct.h++ creatnew.h++ curves.h++ dashptrn.h++ \
                       ellipses.h++ ellpsslc.h++ io.h++ lines.h++ loader.h++ \
                       matrices.h++ nurbs.h++ paths.h++ pens.h++ pictures.h++ \
                       planes.h++ pntrvctr.h++ points.h++ polygons.h++ \
                       primes.h++ pspglb.h++ rectangs.h++ shapes.h++ \
                       transfor.h++ triangle.h++
	$(CXXCOMPILE) -c -o $@ $<

#### TODO:  LDF 2013.06.03.  Get rid of references to the template function 
#### 'create_new'.  Then get rid of 'creatnew.web'.

creatnew.o: creatnew.c++ creatnew.h++ io.h++ loader.h++ pspglb.h++
	$(CXXCOMPILE) -c -o $@ $<

cuboid.o: cuboid.c++ cuboid.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                     conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                     hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                     solfaced.h++ cuboid.h++
	$(CXXCOMPILE) -c -o $@ $<

curves.o: curves.c++ curves.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++ nurbs.h++ paths.h++ curves.h++
	$(CXXCOMPILE) -c -o $@ $<

cylinder.o: cylinder.c++ cylinder.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ \
                         triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++   
	$(CXXCOMPILE) -c -o $@ $<

dashptrn.o: dashptrn.c++ dashptrn.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++
	$(CXXCOMPILE) -c -o $@ $<

ddchdrn.o: ddchdrn.c++ ddchdrn.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ \
                       triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++
	$(CXXCOMPILE) -c -o $@ $<

deftfncs.o: deftfncs.c++ deftfncs.h++ arc.h++ circles.h++ cncsctlt.h++ \
                         colors.h++ complex.h++ cones.h++ conicsct.h++ \
			 crclslc.h++ creatnew.h++ cuboid.h++ curves.h++ \
			 cylinder.h++ dashptrn.h++ ddchdrn.h++ ellipses.h++ \
			 ellpsoid.h++ ellpsslc.h++ figures.h++ glyphs.h++ \
			 gsltmplt.h++ helices.h++ hyprbola.h++ imetfncs.h++ \
			 io.h++ lines.h++ loader.h++ matrices.h++ newwrite.h++ nurbs.h++ \
			 origami.h++ parabola.h++ parabold.h++ paraellp.h++ \
			 parahypr.h++ parser_1.h++ parser.h++ paths.h++ pctfncs0.h++ \
			 pens.h++ pictures.h++ planes.h++ plyhdslc.h++ \
			 pntrvcf0.h++ pntrvctr.h++ points.h++ polygons.h++ \
			 polyhed.h++ predctes.h++ primes.h++ pspglb.h++ \
			 rectangs.h++ rhtchdrn.h++ scan.h++ scanprse.h++ \
			 scanprsf.h++ shapes.h++ solfaced.h++ solids.h++ \
			 spheres.h++ sphrdevl.h++ transfor.h++ triangle.h++ \
			 utility.h++
	$(CXXCOMPILE) -c -o $@ $<
                         

ellipses.o: ellipses.c++ ellipses.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ \
                         triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ 
	$(CXXCOMPILE) -c -o $@ $<

ellpsoid.o: ellpsoid.c++ ellpsoid.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ \
                         lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++
	$(CXXCOMPILE) -c -o $@ $<

ellpsslc.o: ellpsslc.c++ ellpsslc.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ \
                         rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++
	$(CXXCOMPILE) -c -o $@ $<

figures.o: figures.c++ figures.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ \
                       rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ newwrite.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                       cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                       paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                       predctes.h++ scanprse.h++ figures.h++
	$(CXXCOMPILE) -c -o $@ $<

glyphs.o: glyphs.c++ glyphs.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ \
                     rectangs.h++ \
                     conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                     hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                     solfaced.h++ cuboid.h++ newwrite.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                     cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                     paraellp.h++ parahypr.h++ utility.h++
	$(CXXCOMPILE) -c -o $@ $<

newwrite.o: newwrite.c++ newwrite.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ \
                     rectangs.h++ \
                     conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                     hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                     solfaced.h++ cuboid.h++ newwrite.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                     cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                     paraellp.h++ parahypr.h++ 
	$(CXXCOMPILE) -c -o $@ $<



gsltmplt.o: gsltmplt.c++ gsltmplt.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++
	$(CXXCOMPILE) -c -o $@ $<

helices.o: helices.c++ helices.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ \
                       rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++
	$(CXXCOMPILE) -c -o $@ $<

hyprbola.o: hyprbola.c++ hyprbola.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++             
	$(CXXCOMPILE) -c -o $@ $<

imetfncs.o: imetfncs.c++ imetfncs.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ newwrite.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                         predctes.h++ scanprse.h++ figures.h++ parser_1.h++ parser.h++ scan.h++ scanprsf.h++ \
                         astronmy.h++ imetfncs.h++             
	$(CXXCOMPILE) -c -o $@ $<

io.o: io.c++ io.h++ loader.h++ pspglb.h++ io.h++
	$(CXXCOMPILE) -c -o $@ $<

lines.o: lines.c++ lines.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                   creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                   transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++
	$(CXXCOMPILE) -c -o $@ $<

matrices.o: matrices.c++ matrices.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++
	$(CXXCOMPILE) -c -o $@ $<


mpoutput.o: paths.c++ paths.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
            creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
            transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
            planes.h++ nurbs.h++ paths.h++ mpoutput.h++ scnmptpt.h++ utility.h++
	$(CXXCOMPILE) -c -o $@ $<

nurbs.o: nurbs.c++ nurbs.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                   creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                   transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                   planes.h++ nurbs.h++
	$(CXXCOMPILE) -c -o $@ $<

origami.o: origami.c++ origami.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++
	$(CXXCOMPILE) -c -o $@ $<

parabola.o: parabola.c++ parabola.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++
	$(CXXCOMPILE) -c -o $@ $<

parabold.o: parabold.c++ parabold.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++
	$(CXXCOMPILE) -c -o $@ $<

paraellp.o: paraellp.c++ paraellp.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++             
	$(CXXCOMPILE) -c -o $@ $<

parahypr.o: parahypr.c++ parahypr.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++
	$(CXXCOMPILE) -c -o $@ $<

paths.o: paths.c++ paths.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                   creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                   transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                   planes.h++ nurbs.h++ paths.h++ scnmptpt.h++ utility.h++
	$(CXXCOMPILE) -c -o $@ $<

pctfncs0.o: pctfncs0.c++ pctfncs0.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ newwrite.h++ pctfncs0.h++
	$(CXXCOMPILE) -c -o $@ $<

pens.o: pens.c++ pens.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ creatnew.h++ \
                 pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ transfor.h++ \
                 pens.h++         
	$(CXXCOMPILE) -c -o $@ $<

pictures.o: pictures.c++ pictures.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++
	$(CXXCOMPILE) -c -o $@ $<

planes.o: planes.c++ planes.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++           
	$(CXXCOMPILE) -c -o $@ $<

plyhdslc.o: plyhdslc.c++ plyhdslc.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++
	$(CXXCOMPILE) -c -o $@ $<

pntrvcf0.o: pntrvcf0.c++ pntrvcf0.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ astronmy.h++ pctfncs0.h++ newwrite.h++ utility.h++ pntrvcf0.h++ 
	$(CXXCOMPILE) -c -o $@ $<

pntrvctr.o: pntrvctr.c++ pntrvctr.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++
	$(CXXCOMPILE) -c -o $@ $<

points.o: points.c++ points.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++
	$(CXXCOMPILE) -c -o $@ $<

polygons.o: polygons.c++ polygons.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++
	$(CXXCOMPILE) -c -o $@ $<

polyhed.o: polyhed.c++ polyhed.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++
	$(CXXCOMPILE) -c -o $@ $<

predctes.o: predctes.c++ predctes.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ newwrite.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                         predctes.h++             
	$(CXXCOMPILE) -c -o $@ $<

primes.o: primes.c++ primes.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++
	$(CXXCOMPILE) -c -o $@ $<

prrfnc0.o: prrfnc0.c++ prrfnc0.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ mpoutput.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                       cones.h++ cylinder.h++ spheres.h++ sphrdevl.h++ parabold.h++ paraellp.h++ \
                       parahypr.h++ glyphs.h++ newwrite.h++ ellpsoid.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                       predctes.h++ scanprse.h++ figures.h++ parser_1.h++ parser.h++ scan.h++ scanprsf.h++ \
                       imetfncs.h++ deftfncs.h++ sctpcrt.h++ sctpfncs.h++ astronmy.h++
	$(CXXCOMPILE) -c -o $@ $<

pspglb.o: pspglb.c++ pspglb.h++ loader.h++ pspglb.h++
	$(CXXCOMPILE) -c -o $@ $<

rectangs.o: rectangs.c++ rectangs.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++
	$(CXXCOMPILE) -c -o $@ $<

rhtchdrn.o: rhtchdrn.c++ rhtchdrn.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++
	$(CXXCOMPILE) -c -o $@ $<

#scan.h++: scan.web

scan.o: scan.c++ scan.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ creatnew.h++ \
                 pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ transfor.h++ \
                 pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ planes.h++ \
                 nurbs.h++ paths.h++ mpoutput.h++ curves.h++ polygons.h++ triangle.h++ rectangs.h++ \
                 conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                 hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                 solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                 cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                 paraellp.h++ parahypr.h++ glyphs.h++ newwrite.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                 predctes.h++ scanprse.h++ figures.h++ parser_1.h++ parser.h++ scan.h++
	$(CXXCOMPILE) -c -o $@ $<

scanprse.o: scanprse.c++ scanprse.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ mpoutput.h++ curves.h++ polygons.h++ triangle.h++ \
                         rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ newwrite.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                         predctes.h++ scanprse.h++
	$(CXXCOMPILE) -c -o $@ $<

scanprsf.o: scanprsf.c++ scanprsf.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ mpoutput.h++ curves.h++ polygons.h++ triangle.h++ \
                         rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ astronmy.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ newwrite.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                         predctes.h++ scanprse.h++ figures.h++ parser_1.h++ parser.h++ scan.h++ scanprsf.h++
	$(CXXCOMPILE) -c -o $@ $<

sctpcrt.o: sctpcrt.c++ sctpcrt.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ mpoutput.h++ curves.h++ polygons.h++ triangle.h++ \
                       rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                       cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                       paraellp.h++ parahypr.h++ glyphs.h++ newwrite.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                       predctes.h++ scanprse.h++ figures.h++ parser_1.h++ parser.h++ scan.h++ scanprsf.h++ \
                       imetfncs.h++ deftfncs.h++ astronmy.h++ sctpcrt.h++
	$(CXXCOMPILE) -c -o $@ $<

sctpfncs.o: sctpfncs.c++ sctpfncs.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ mpoutput.h++ curves.h++ polygons.h++ triangle.h++ \
                         rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                         paraellp.h++ parahypr.h++ glyphs.h++ newwrite.h++ pctfncs0.h++ utility.h++ pntrvcf0.h++ \
                         predctes.h++ scanprse.h++ figures.h++ parser_1.h++ parser.h++ scan.h++ scanprsf.h++ \
                         imetfncs.h++ deftfncs.h++ sctpcrt.h++ astronmy.h++ sctpfncs.h++
	$(CXXCOMPILE) -c -o $@ $<

shapes.o: shapes.c++ shapes.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++
	$(CXXCOMPILE) -c -o $@ $<

solfaced.o: solfaced.c++ solfaced.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ \
                         rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++             
	$(CXXCOMPILE) -c -o $@ $<

solids.o: solids.c++ solids.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                     creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                     transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                     planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ \
                     rectangs.h++ \
                     conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                     hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ 
	$(CXXCOMPILE) -c -o $@ $<

spheres.o: spheres.c++ spheres.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ \
                       rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                       cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++
	$(CXXCOMPILE) -c -o $@ $<

sphrdevl.o: sphrdevl.c++ sphrdevl.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ \
                         rectangs.h++ \
                         conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                         hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                         solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                         cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ 
	$(CXXCOMPILE) -c -o $@ $<

transfor.o: transfor.c++ transfor.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ primes.h++ complex.h++ matrices.h++ \
                         colors.h++ transfor.h++   
	$(CXXCOMPILE) -c -o $@ $<

triangle.o: triangle.c++ triangle.h++ loader.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                         creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                         transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                         planes.h++ nurbs.h++ paths.h++ polygons.h++ triangle.h++
	$(CXXCOMPILE) -c -o $@ $<

utility.o: utility.c++ utility.h++ pspglb.h++ io.h++ gsltmplt.h++ \
                       creatnew.h++ pntrvctr.h++ primes.h++ complex.h++ matrices.h++ colors.h++ \
                       transfor.h++ pens.h++ dashptrn.h++ shapes.h++ pictures.h++ points.h++ lines.h++ \
                       planes.h++ nurbs.h++ paths.h++ curves.h++ polygons.h++ triangle.h++ \
                       rectangs.h++ \
                       conicsct.h++ ellipses.h++ circles.h++ ellpsslc.h++ crclslc.h++ parabola.h++ \
                       hyprbola.h++ cncsctlt.h++ arc.h++ helices.h++ origami.h++ solids.h++ \
                       solfaced.h++ cuboid.h++ polyhed.h++ ddchdrn.h++ rhtchdrn.h++ plyhdslc.h++ \
                       cones.h++ cylinder.h++ ellpsoid.h++ spheres.h++ sphrdevl.h++ parabold.h++ \
                       paraellp.h++ parahypr.h++ glyphs.h++ newwrite.h++ pctfncs0.h++ utility.h++
	$(CXXCOMPILE) -c -o $@ $<

#### && ps2pdf 3DLDFtex.ps 3DLDFtex.pdf

.PHONY : run

#### sample3.lmc 

run: 3dldf$(EXEEXT) clstsph1.ldf clstsph1_sub.ldf clstsph1.aux astronmy.lmc 
	3dldf$(EXEEXT) --stars-limit 200 clstsph1.ldf

.PHONY : rrun

rrun:
	3dldf$(EXEEXT) clstsph1 && mpost clstsph1 -numbersystem "double" && tex clstsph1 && dvips -o clstsph1.ps clstsph1.dvi 

# sample_3_labels_sorted.tex: sample3.mp
# 	sort sample_3_labels.tex > sample_3_labels_sorted.tex	

.PHONY: pdf

pdf: clstsph1.pdf

.PHONY: ps

ps: clstsph1.ps # clstsph1_a4.ps

.PHONY: dvi

dvi: clstsph1.dvi

.PHONY: f-ps

f-ps:
	rm -f parser.o
	$(MAKE) ps

.PHONY: ff-ps

ff-ps:
	touch clstsph1.ldf
	$(MAKE) ps

.PHONY: f-pdf

f-pdf:
	rm -f parser.o
	$(MAKE) pdf

sample3.pdf: sample3.ps
	ps2pdf sample3.ps 

sample3.ps: sample3.dvi
	dvips -o sample3.ps sample3.dvi

## sample_3_labels_sorted.tex

sample3.dvi: sample3.tex sample3.0 
	tex sample3.tex

sample3.0: sample3.mp
	mpost -numbersystem "double" sample3.mp

sample3.mp: 3dldf$(EXEEXT) sample3.ldf sample3.lmc sample3.aux 
	3dldf$(EXEEXT) sample3.ldf


sample4.pdf: sample4.ps
	ps2pdf sample4.ps 

sample4.ps: sample4.dvi
	dvips -o sample4.ps sample4.dvi

sample4.dvi: sample4.tex sample4.0 
	tex sample4.tex

sample4.0: sample4.mp
	mpost -numbersystem "double" sample4.mp

sample4.mp: 3dldf$(EXEEXT) sample4.ldf sample3.lmc sample4.aux 
	3dldf$(EXEEXT) sample4.ldf

clstsph1.pdf: clstsph1.dvi
	dvipdfmx $<

clstsph1.ps: clstsph1.dvi
	dvips -o clstsph1.ps clstsph1.dvi

clstsph1.dvi: clstsph1.tex clstsph1.0 clstsph2.0 clstsph_1_star_info_combined.tex 
	tex clstsph1.tex
	tex clstsph1.tex

clstsph_1_star_info_combined.tex: clstsph_1_0.tex
	echo "Creating clstsph_1_star_info_combined.tex."
	rm -f clstsph_1_star_info_combined.tex
	cat clstsph_1_0.tex clstsph_1_1.tex clstsph_1_2.tex clstsph_1_3.tex clstsph_1_4.tex \
           clstsph_1_5.tex clstsph_1_6.tex clstsph_1_7.tex | sort -n | grep -v ^% > clstsph_1_star_info_combined.tex

clstsph1.0 clstsph1.1: clstsph1.mp 
	mpost -numbersystem "double" clstsph1.mp

clstsph1.mp clstsph_1_0.tex: 3dldf$(EXEEXT) clstsph1.ldf clstsph1_sub.ldf astronmy.lmc clstsph1.aux \
                             www.lmc xxx.lmc yyy.lmc zzz.lmc
	rm -f clstsph_1_0.tex clstsph_1_1.tex clstsph_1_2.tex clstsph_1_3.tex clstsph_1_4.tex \
            clstsph_1_5.tex clstsph_1_6.tex clstsph_1_7.tex
	3dldf$(EXEEXT) --stars-limit 200 clstsph1.ldf

clstsph2.pdf: clstsph2.dvi
	dvipdfmx $<

clstsph2.0: clstsph2.mp
	mpost -numbersystem "double" clstsph2.mp

clstsph2.mp: clstsph2.ldf clstsph1.aux clstsph1_sub.ldf astronmy.lmc www.lmc xxx.lmc yyy.lmc zzz.lmc
	3dldf$(EXEEXT) --stars-limit 200 clstsph2.ldf

clstsph3.pdf: clstsph3.dvi
	dvipdfmx $<

clstsph3.ps: clstsph3.dvi
	dvips -o clstsph3.ps clstsph3.dvi

clstsph3.dvi: clstsph3.tex clstsph3.0 
	tex clstsph3.tex
	tex clstsph3.tex

clstsph3.0 clstsph3.1: clstsph3.mp 
	mpost -numbersystem "double" clstsph3.mp

clstsph3.mp: 3dldf$(EXEEXT) clstsph3.ldf clstsph3_sub.ldf astronmy3.lmc clstsph3.aux www.lmc xxx.lmc yyy.lmc zzz.lmc
	3dldf$(EXEEXT) clstsph3.ldf

clstsph4.pdf: clstsph4.dvi
	dvipdfmx $<

clstsph4.ps: clstsph4.dvi
	dvips -o clstsph4.ps clstsph4.dvi

clstsph4.dvi: clstsph4.tex clstsph4.0 
	tex clstsph4.tex
	tex clstsph4.tex

clstsph4.0 clstsph4.1: clstsph4.mp 
	mpost -numbersystem "double" clstsph4.mp

clstsph4.mp: 3dldf$(EXEEXT) clstsph4.ldf clstsph4_sub.ldf astronmy4.lmc clstsph4.aux www.lmc xxx.lmc yyy.lmc zzz.lmc
	3dldf$(EXEEXT) clstsph4.ldf

clstsph5.pdf: clstsph5.dvi
	dvipdfmx $<

clstsph5.ps: clstsph5.dvi
	dvips -o clstsph5.ps clstsph5.dvi

clstsph5.dvi: clstsph5.tex clstsph5.0 
	tex clstsph5.tex
	tex clstsph5.tex

clstsph5.0 clstsph5.1: clstsph5.mp 
	mpost -numbersystem "double" clstsph5.mp

clstsph5.mp: 3dldf$(EXEEXT) clstsph5.ldf clstsph5_sub.ldf astronmy5.lmc clstsph5.aux www.lmc xxx.lmc yyy.lmc zzz.lmc
	3dldf$(EXEEXT) clstsph5.ldf


sphrdoms.pdf: sphrdoms.dvi
	dvipdfmx $<

sphrdoms.ps: sphrdoms.dvi
	dvips -o sphrdoms.ps sphrdoms.dvi

sphrdoms.dvi: sphrdoms.tex sphrdoms_0.eps
	tex sphrdoms.tex
	tex sphrdoms.tex

sphrdoms_0.eps sphrdoms_1.eps sphrdoms_100.eps sphrdoms_101.eps sphrdoms_200.eps sphrdoms_201.eps: sphrdoms.mp
	mpost -numbersystem "double" sphrdoms.mp

sphrdoms.mp: 3dldf$(EXEEXT) sphrdoms.ldf sphrdoms.lmc
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) sphrdoms.ldf


.PHONY: ssvg

ssvg: sphrdoms_0.svg

sphrdoms_0.svg sphrdoms_1.svg sphrdoms_100.svg sphrdoms_101.svg sphrdoms_200.svg sphrdoms_201.svg: \
   sphrdoms_svg.mp sphrdoms.mp
	mpost -numbersystem "double" sphrdoms_svg.mp

sphrdoms1.pdf: sphrdoms1.dvi
	dvipdfmx $<

sphrdoms1.ps: sphrdoms1.dvi
	dvips -o sphrdoms1.ps sphrdoms1.dvi

sphrdoms1.dvi: sphrdoms1.tex sphrdoms1_0.eps
	tex sphrdoms1.tex
	tex sphrdoms1.tex

sphrdoms1_0.svg: sphrdoms1.mp
	mpost -numbersystem "double" sphrdoms1.mp

sphrdoms1.mp: 3dldf$(EXEEXT) sphrdoms1.ldf sphrdoms.lmc
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) sphrdoms1.ldf


PHONY: purge-5

purge-5:
	rm -f clstsph5.pdf clstsph5.ps clstsph5.dvi clstsph5.log clstsph5.toc clstsph5.mp clstsph5.mpx clstsph5.0 clstsph5.1

#### psc and pdfc are to be used for updating the TOC in clstsph1.tex.
#### They run TeX twice.
#### LDF 2021.08.09.

.PHONY psc:

psc:
	$(MAKE) clstsph1.dvi
	tex clstsph1.tex
	$(MAKE) clstsph1.ps

.PHONY pdfc:

pdfc:
	$(MAKE) clstsph1.dvi
	tex clstsph1.tex
	$(MAKE) clstsph1.pdf

clstsph1_a4.dvi: clstsph1_a4.tex clstsph_1_star_info_combined.tex clstsph_1_star_info_alpha.tex starinfo_constellations.tex
	tex clstsph1_a4.tex
	tex clstsph1_a4.tex 

#### !! START HERE:  LDF 2021.09.05.  Make clstsph_1_star_info_alpha.tex be regenerated
#### when making clstsph1_a4.pdf or clstsph1_a4.ps.

clstsph_1_star_info_alpha.tex: clstsph_1_star_info_combined.tex clstsph_1_star_info_alpha_temp.tex
	cat clstsph_1_star_info_alpha_temp.tex | sort | cut -d} -f 2- > clstsph_1_star_info_alpha.tex 

clstsph_1_star_info_alpha_temp.tex: srtstrin$(EXEEXT) clstsph1_a4.tex clstsph1.0
	srtstrin$(EXEEXT)

srtstrin$(EXEEXT): srtstrin.cxx
	g++ -o srtstrin srtstrin.cxx

clstsph1_a4.ps: clstsph1_a4.dvi
	dvips -o clstsph1_a4.ps clstsph1_a4.dvi

clstsph1_a4.pdf: clstsph1_a4.dvi
	dvipdfmx $<


.PHONY : run-bi

run-bi: 3dldf$(EXEEXT) 
	3dldf$(EXEEXT) --bi clstsph1.ldf

.PHONY : run-fbi

run-fbi: 
	rm -f parser.o
	$(MAKE) 3dldf$(EXEEXT)
	3dldf$(EXEEXT) --bi clstsph1.ldf

.PHONY : run-1
run-1: 3dldf$(EXEEXT)
	echo "end" | 3dldf$(EXEEXT)

# touch sample1.ldf
# -rm -f 3DLDFtex.dvi 3DLDFtex.ps
# $(MAKE) 3DLDFtex.ps


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

3DLDFtex.dvi : 3DLDFtex.tex 3DLDFtex.bas 3DLDFmp.mp sample1.mp
	@echo "Running MetaPost on 3DLDFmp.mp to create EPS files."
	mpost -numbersystem "double" 3DLDFmp.mp
	@echo "Running TeX on 3DLDFtex.tex to create 3DLDFtex.dvi."
	tex 3DLDFtex

.PHONY : ldf
ldf : sample1.mp 

sample1.mp : sample1.ldf  
	@echo "Running \`runit'."
	$(SHELL) $(srcdir)/runit
	@mv -f sample1.mp YYY.mp
	@cp -f cpyrttex.txt sample1.mp
	@chmod u+w sample1.mp
	@cat YYY.mp >> sample1.mp
	@rm -f YYY.mp

.PHONY: prog

prog: 
	-rm -f *.h *.c
	$(MAKE) 3dldf$(EXEEXT)

conveps$(EXEEXT): conveps.o
	g++ -pthread -o $@ $<

conveps.o: conveps.c++
	g++ -DHAVE_CONFIG_H -I. -I.. -fpermissive -fdiagnostics-show-option \
            -Wno-return-type -g -O2 -MT conveps.o -MD -MP -MF .deps/conveps.Tpo -c -o conveps.o conveps.c++

conveps.c++: conveps.web
	ctangle conveps.web
	mv conveps.c conveps.c++

conveps.tex: conveps.web
	cweave conveps.web

conveps.dvi: conveps.tex
	tex conveps.tex

conveps.ps: conveps.dvi
	dvips -o conveps.ps conveps.dvi

conveps.pdf: conveps.dvi
	dvipdfmx conveps.dvi

.PHONY: headers

headers:
	make arc.h++ astronmy.h++ circles.h++ cncsctlt.h++  colors.h++ complex.h++ cones.h++ conicsct.h++ \
             conveps.h++ crclslc.h++ creatnew.h++ cuboid.h++ \
             curves.h++ cylinder.h++ dashptrn.h++ \
             ddchdrn.h++ deftfncs.h++ ellipses.h++ ellpsoid.h++ \
             ellpsslc.h++ figures.h++ glyphs.h++ newwrite.h++ gsltmplt.h++ \
             helices.h++ hyprbola.h++ imetfncs.h++ io.h++ lines.h++ \
             loader.h++ main.h++ matrices.h++ mpoutput.h++ nurbs.h++ origami.h++ \
             parabola.h++ parabold.h++ paraellp.h++ parahypr.h++ \
             paths.h++ patterns.h++ pctfncs0.h++ pens.h++ \
             pictures.h++ planes.h++ plyhdslc.h++ pntrvcf0.h++ \
             pntrvctr.h++ points.h++ polygons.h++ polyhed.h++ \
             predctes.h++ primes.h++ prrfnc0.h++ pspglb.h++ \
             rectangs.h++ rhtchdrn.h++ scanner2.h++ scanprse.h++ \
             scanprsf.h++ scan.h++ sctpcrt.h++ sctpfncs.h++ shapes.h++ \
             solfaced.h++ solids.h++ spheres.h++ sphrdevl.h++ \
             transfor.h++ triangle.h++ 


#### *** (3) purge.

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
	-rm -f 3DLDFmp.[0-9]* 3DLDFmp.log polyrhyt.[0-9]* polyrhyt.ps polyrhyt.pdf polyrhyt.dvi polyrhyt.mp
	-rm -f bldelem[0-9].[0-9]* bldelem[0-9].ps bldelem[0-9].pdf bldelem[0-9].dvi bldelem[0-9].mp \
               bldelem[0-9].log bldelem[0-9].toc
	-rm -f sphrmd0[0-9].[0-9]* sphrmd0[0-9].ps sphrmd0[0-9].pdf sphrmd0[0-9].dvi sphrmd0[0-9].mp \
               sphrmd0[0-9].log sphrmd0[0-9].toc
	-rm -f texput.log
	-rm -f *.toc clstsph1.dvi clstsph1.mp clstsph1.ps clstsph3.dvi clstsph3.mp 
	-rm -f clstsph3.ps clstsph4.mp clstsph5.dvi clstsph5.mp
	-rm -f clstsph3.[0-9]* clstsph3.log
	-rm -f clstsph4.ps clstsph4.mp clstsph4.[0-9]* clstsph4.log clstsph4.dvi clstsph4.toc
	-rm -f sphrdoms.ps sphrdoms.mp sphrdoms.[0-9]* sphrdoms.log sphrdoms.dvi sphrdoms.toc
	-rm -f sundl_04.[0-9]*
	-rm -f clstsph_1_6.tex clstsph_1_labels.tex clstsph_1_3.tex clstsph_1_5.tex \
               clstsph_1_2.tex clstsph_1_7.tex clstsph_1_4.tex clstsph_1_1.tex \
               clstsph_1_0.tex
	-rm -f sphrprj1.[0-9]* sphrprj1.mp sphrprj1.dvi sphrprj1.log sphrprj1.ps
	-rm -f sphrprj2.[0-9]* sphrprj2.mp sphrprj2.dvi sphrprj2.log sphrprj2.ps
	-rm -f sphrprj3.[0-9]* sphrprj3.mp sphrprj3.dvi sphrprj3.log sphrprj3.ps
	-rm -f cmyk_test.[0-9]* cmyk_test.mp cmyk_test.dvi cmyk_test.log cmyk_test.ps
	-rm -f 3DLDFput.mp testfont.log ttemp.dvi ttemp.log mpout.log


#### *** (3)


.PHONY: tags

tags:
	etags $(3dldflb_CWEB_files) $(3dldf_SOURCES) $(3dldf_PARSER_FILES)

.PHONY: query

query:
	@echo "CXXCOMPILE == $(CXXCOMPILE)"
	@echo "TEX == $(TEX)"
	@echo "MPOST == $(MPOST)"
	@echo "METAPOST == $(METAPOST)"

ttemp1.pdf: ttemp1.dvi
	dvipdfmx $<

ttemp1.ps: ttemp1.dvi
	dvips -o $@ $<

ttemp1.dvi: ttemp1.txt ttemp1.0
	tex $<

ttemp1.0 ttemp1.1: ttemp1.mp
	mpost -numbersystem "double" $<


.PHONY: tps

tps: ttemp.ps

ttemp.pdf: ttemp.dvi
	dvipdfmx $<

ttemp.ps: ttemp.dvi
	dvips -o $@ $<

ttemp.dvi: ttemp.txt ttemp.0
	tex $<

ttemp000.eps: ttemp.mp writemcs.mp
	mpost -numbersystem "double" $<

ttemp.mp: ttemp.ldf 3dldf$(EXEEXT)
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) ttemp.ldf

ttemp$(EXEEXT): ttemp.cxx
	g++ -o ttemp$(EXEEXT) ttemp.cxx

.PHONY: run-t

run-t: ttemp$(EXEEXT)
	./ttemp$(EXEEXT)

cnepspng$(EXEEXT): cnepspng.o
	g++ -o cnepspng$(EXEEXT) cnepspng.o

cnepspng.o: cnepspng.c++
	g++ -c -g -o cnepspng.o cnepspng.c++

cnepspng.c++: cnepspng.web
	ctangle cnepspng.web - cnepspng.c++

## Sundial plans for Zikhron Ya'akov, Israel

.PHONY: zp

zp: zikhron.pdf

zikhron.pdf: zikhron.ps
	ps2pdf zikhron.ps

zikhron.ps: zikhron.dvi
	dvips -o zikhron.ps zikhron.dvi

zikhron.dvi: zikhron.txt zikhron.1
	tex zikhron.txt

zikhron.1: zikhron.mp
	mpost -numbersystem "double" zikhron.mp

zikhron.mp: zikhron.ldf sundl_03.lmc
	3dldf$(EXEEXT) zikhron.ldf

sundl_04.mp:
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) sundl_04.ldf

sundl_04.1 sundl_04.2:
	mpost -numbersystem "double" sundl_04.mp

sundl_04.dvi: sundl_04.tex 
	tex sundl_04.tex
	tex sundl_04.tex

sundl_04.ps: sundl_04.dvi
	dvips -o sundl_04.ps sundl_04.dvi

sundl_04.pdf: sundl_04.dvi
	dvipdfmx sundl_04.dvi

.PHONY: run-sn

run-sn: sundl_04.pdf

small_rhombi.pdf: small_rhombi.dvi
	dvipdfmx small_rhombi.dvi

small_rhombi.ps: small_rhombi.dvi
	dvips -o small_rhombi.ps small_rhombi.dvi

small_rhombi.dvi: small_rhombi.tex small_rhombi.1
	$(TEX) small_rhombi.tex
	$(TEX) small_rhombi.tex

small_rhombi.1: small_rhombi.mp
	mpost -numbersystem "double" small_rhombi.mp

small_rhombi.mp: small_rhombi.ldf small_rhombi.lmc
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) small_rhombi.ldf

.PHONY: run-ph

pentahex.pdf: pentahex.dvi
	dvipdfmx pentahex.dvi

pentahex.ps: pentahex.dvi
	dvips -o pentahex.ps pentahex.dvi

pentahex.dvi: pentahex.tex pentahex.1
	$(TEX) pentahex.tex
	$(TEX) pentahex.tex

pentahex.1: pentahex.mp
	mpost -numbersystem "double" pentahex.mp

pentahex.mp: pentahex.ldf pentahex.lmc
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) pentahex.ldf


disdyakis.pdf: disdyakis.dvi
	dvipdfmx disdyakis.dvi

disdyakis.ps: disdyakis.dvi
	dvips -o disdyakis.ps disdyakis.dvi

disdyakis.dvi: disdyakis.tex disdyakis.1
	$(TEX) disdyakis.tex
	$(TEX) disdyakis.tex

disdyakis.1: disdyakis.mp
	mpost -numbersystem "double" disdyakis.mp

disdyakis.mp: disdyakis.ldf disdyakis.lmc 3dldf$(EXEEXT)
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) disdyakis.ldf

mathmdls.ps: mathmdls.dvi
	dvips -o mathmdls.ps mathmdls.dvi

mathmdls.pdf: mathmdls.dvi
	dvipdfmx mathmdls.dvi

mathmdls.dvi: mathmdls.tex
	$(TEX) mathmdls.tex
	$(TEX) mathmdls.tex

.PHONY: math-upd

math-upd:
	cp mathmdls.tex ~/3DLDF-3.0_web/3dldf/SRC_CODE/mathmdls.txt
	cp mathmdls.pdf ~/3DLDF-3.0_web/3dldf/graphics/mathmdls.pdf

.PHONY: trchd

trchd: trchd_1.pdf trchd_1.ps

trchd_1.mp: trchd_1.ldf 3dldf$(EXEEXT)
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) trchd_1.ldf 

trchd_1.1: trchd_1.mp
	mpost trchd_1.mp 

trchd_1.dvi: trchd_1.tex trchd_1.1
	tex trchd_1.tex

trchd_1.pdf: trchd_1.dvi
	dvipdfmx trchd_1.dvi

trchd_1.ps: trchd_1.dvi
	dvips -o trchd_1.ps trchd_1.dvi 

grrhm_06.mp: grrhm_06.ldf 3dldf$(EXEEXT)
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) grrhm_06.ldf 

grrhm_06.1: grrhm_06.mp
	mpost grrhm_06.mp 

grrhm_06.dvi: grrhm_06.tex grrhm_06.1
	tex grrhm_06.txt 

grrhm_06.ps: grrhm_06.dvi
	dvips -o grrhm_06.ps grrhm_06.dvi

grrhm_06.pdf: grrhm_06.dvi
	dvipdfmx grrhm_06.dvi

sphrprj1.mp: sphrprj1.ldf 3dldf$(EXEEXT)
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) sphrprj1.ldf 

sphrprj1.1: sphrprj1.mp
	mpost -numbersystem "double" sphrprj1.mp

sphrprj1.dvi: sphrprj1.txt sphrprj1.1
	tex sphrprj1.txt

sphrprj1.pdf: sphrprj1.dvi
	dvipdfmx sphrprj1.dvi 

sphrprj2.mp: sphrprj2.ldf sphrproj.lmc 3dldf$(EXEEXT)
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) sphrprj2.ldf 

sphrprj2.1: sphrprj2.mp
	mpost -numbersystem "double" sphrprj2.mp

sphrprj2.dvi: sphrprj2.txt sphrprj2.1
	tex sphrprj2.txt

sphrprj2.pdf: sphrprj2.dvi
	dvipdfmx sphrprj2.dvi 

sphrprj2_a3.dvi: sphrprj2_a3.txt sphrprj2.1
	tex sphrprj2_a3.txt

sphrprj3.mp: sphrprj3.ldf sphrproj.lmc 3dldf$(EXEEXT)
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) sphrprj3.ldf 

sphrprj3.1: sphrprj3.mp
	mpost -numbersystem "double" sphrprj3.mp

sphrprj3.dvi: sphrprj3.txt sphrprj3.1
	tex sphrprj3.txt

sphrprj3.pdf: sphrprj3.dvi
	dvipdfmx sphrprj3.dvi 

color_samples.mp: color_samples.ldf 3dldf$(EXEEXT)
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) color_samples.ldf 

color_samples.0 color_samples.1: color_samples.mp
	mpost -numbersystem "double" color_samples.mp

color_samples.dvi: color_samples.txt color_samples.0
	tex color_samples.txt

color_samples.pdf: color_samples.dvi
	dvipdfmx color_samples.dvi 

color_samples_a3.dvi: color_samples_a3.txt color_samples.1
	tex color_samples_a3.txt

color_samples_a3.pdf: color_samples_a3.dvi
	dvipdfmx color_samples_a3.dvi 

atemp.mp: atemp.ldf 3dldf$(EXEEXT)
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) atemp.ldf

atemp0.eps atemp1.eps: atemp.mp
	mpost -numbersystem "double" atemp.mp

ctemp.dvi: ctemp.0 ctemp.1 ctemp.txt
	tex ctemp.txt

ctemp.ps: ctemp.dvi
	dvips -o ctemp.ps ctemp.dvi

ctemp.pdf: ctemp.dvi
	dvipdfmx ctemp.dvi

ctemp.0 ctemp.1: ctemp.mp
	mpost -numbersystem "double" ctemp.mp

.PHONY: flp

flp: flpld_3.pdf

flpld_3.dvi: flpld_3.1 flpld_3.tex
	tex flpld_3.tex

flpld_3.ps: flpld_3.dvi
	dvips -o flpld_3.ps flpld_3.dvi

flpld_3.pdf: flpld_3.dvi
	dvipdfmx flpld_3.dvi

flpld_3.1: flpld_3.mp
	mpost -numbersystem "double" flpld_3.mp

flpld_3.mp: flpld_3.ldf 3dldf$(EXEEXT)
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) flpld_3.ldf

.PHONY: purge-s

purge-s:
	rm -f sundl_04.mp sundl_04.[0-9] sundl_04.[0-9]* sundl_04.dvi sundl_04.ps sundl_04.pdf 

.PHONY: purge-st

purge-st:
	rm -f starinfo_*.tex 

.PHONY: purge-sm

purge-sm:
	rm -f small_rhombi.1 small_rhombi.log  small_rhombi.mpx  small_rhombi.toc small_rhombi.dvi  \
           small_rhombi.mp small_rhombi.pdf

# @echo "3dldflb_c_files == $(3dldflb_c_files)"
# @echo "3dldflb_cpp_files == $(3dldflb_cpp_files)"
# @echo "CLEANFILES == $(CLEANFILES)"

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

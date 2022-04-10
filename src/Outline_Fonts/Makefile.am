#### src/Outline_Fonts/Makefile.am
#### Created by Laurence D. Finston (LDF) Fri 24 Dec 2021 07:16:44 AM CET

#### * Copyright and License.

#### This file is part of GNU 3DLDF, a package for three-dimensional drawing. 
#### Copyright (C) 2021, 2022 The Free Software Foundation, Inc.

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

eps: tex_logo000.eps # hollow_ssb000.eps # ttemp065.eps # 
dvi: tex_logo.dvi    # hollow_ssb.dvi    # ttemp.dvi    # 
ps:  tex_logo.ps     # hollow_ssb.ps     # ttemp.ps     #  
pdf: tex_logo.pdf    # hollow_ssb.pdf    # ttemp.pdf    # 

ttemp065.eps ttemp165.eps: ttemp.mp outline_ttemp.mac
	mpost -tex=etex -numbersystem "double" ttemp.mp

ttemp.dvi: ttemp.txt ttemp065.eps ttemp165.eps
	tex ttemp.txt

ttemp.ps: ttemp.dvi
	dvips -o ttemp.ps ttemp.dvi

ttemp.pdf: ttemp.ps
	ps2pdf ttemp.ps

hollow_ssb000.eps hollow_ssb100.eps: hollow_ssb.mp outline_hollow_ssb.mac
	mpost -tex=etex -numbersystem "double" hollow_ssb.mp

hollow_ssb.dvi: hollow_ssb.txt hollow_ssb000.eps hollow_ssb100.eps
	tex hollow_ssb.txt

hollow_ssb.ps: hollow_ssb.dvi
	dvips -o hollow_ssb.ps hollow_ssb.dvi

hollow_ssb.pdf: hollow_ssb.ps
	ps2pdf hollow_ssb.ps

tex_logo000.eps tex_logo100.eps: tex_logo.mp outline_tex_logo.mac
	mpost -tex=etex -numbersystem "double" tex_logo.mp

tex_logo.dvi: tex_logo.txt tex_logo000.eps tex_logo100.eps
	tex tex_logo.txt

tex_logo.ps: tex_logo.dvi
	dvips -o tex_logo.ps tex_logo.dvi

tex_logo.pdf: tex_logo.ps
	ps2pdf tex_logo.ps

.PHONY: ef

ef: euler_fraktur.pdf

euler_fraktur000.eps: euler_fraktur.mp outline_euler_fraktur.mac
	mpost -tex=etex -numbersystem "double" euler_fraktur.mp

euler_fraktur.dvi: euler_fraktur.txt euler_fraktur000.eps
	tex euler_fraktur.txt

euler_fraktur.ps: euler_fraktur.dvi
	dvips -o euler_fraktur.ps euler_fraktur.dvi
euler_fraktur.pdf: euler_fraktur.ps
	ps2pdf euler_fraktur.ps

#### ** (2) eurm_test

eurm_test065.eps: eurm_test.mp outline_eurm_test.mac
	mpost -tex=etex -numbersystem "double" eurm_test.mp

eurm_test.dvi: eurm_test.txt eurm_test065.eps
	tex eurm_test.txt

eurm_test.ps: eurm_test.dvi
	dvips -o eurm_test.ps eurm_test.dvi

eurm_test.pdf: eurm_test.dvi
	dvipdfmx eurm_test.dvi

.PHONY: tags

tags:
	etags *.ldf *.lmc *.sh *.tex *.txt *.mp *.mac Makefile.am 

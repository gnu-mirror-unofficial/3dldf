#### Makefile.am
#### Created by Laurence D. Finston (LDF) Sat 23 Apr 2022 05:09:47 PM CEST

## * (1) Copyright and License.

#### This file is part of GNU 3DLDF, a package for three-dimensional drawing. 
#### Copyright (C) 2022 The Free Software Foundation, Inc.

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
#### The mailing list info-3dldf@gnu.org is for the maintainer of 
#### GNU 3DLDF to send announcements to users. 
#### To subscribe to these mailing lists, send an 
#### email with ``subscribe <email-address>'' as the subject.  

#### The author can be contacted at: 

#### Laurence D. Finston 
#### Kreuzbergring 41 
#### D-37075 Goettingen 
#### Germany 

#### Laurence.Finston@gmx.de 
 
## * (1)

.PHONY: hps

hps: hollow_test.ps

hollow_test.ps: hollow_test.dvi
	dvips -o hollow_test.ps hollow_test.dvi

hpdf: hollow_test.pdf

hollow_test.pdf: hollow_test.dvi
	dvipdfmx hollow_test.dvi

.PHONY: htd

htd: hollow_test.dvi

hollow_test.dvi: hollow_test.tex hollow.600pk
	tex hollow_test.tex




#### * (1) hollow.ldf, etc.


#### ** (2) mode == ultre (1200dpi)

hollow.1200gf: hollow1200.mf hollow.mf
	mf $<
	mv hollow1200.1200gf hollow.1200gf 
	mv hollow1200.tfm hollow.tfm

hollow.1315gf: hollow1315.mf
	mf $<
	mv hollow1315.1315gf hollow.1315gf hollow.mf
	mv hollow1315.tfm hollow.tfm

hollow.1440gf: hollow1440.mf hollow.mf
	mf $<
	mv hollow1440.1440gf hollow.1440gf
	mv hollow1440.tfm hollow.tfm

hollow.1728gf: hollow1728.mf hollow.mf
	mf $<
	mv hollow1728.1728gf hollow.1728gf
	mv hollow1728.tfm hollow.tfm

hollow.2074gf: hollow2074.mf hollow.mf
	mf $<
	mv hollow2074.2074gf hollow.2074gf
	mv hollow2074.tfm hollow.tfm

hollow.2488gf: hollow2488.mf hollow.mf
	mf $<
	mv hollow2488.2488gf hollow.2488gf
	mv hollow2488.tfm hollow.tfm

hollow.2986gf: hollow2986.mf hollow.mf
	mf $<
	mv hollow2986.2986gf hollow.2986gf
	mv hollow2986.tfm hollow.tfm

#### ** (2) mode == ljfour (600dpi)

hollow.600gf: hollow600.mf hollow.mf
	mf $<
	mv hollow600.600gf hollow.600gf 
	mv hollow600.tfm hollow.tfm


hollow.657gf: hollow657.mf hollow.mf
	mf $<
	mv hollow657.657gf hollow.657gf
	mv hollow657.tfm hollow.tfm

hollow.720gf: hollow720.mf hollow.mf
	mf $<
	mv hollow720.720gf hollow.720gf
	mv hollow720.tfm hollow.tfm

hollow.864gf: hollow864.mf hollow.mf
	mf $<
	mv hollow864.864gf hollow.864gf
	mv hollow864.tfm hollow.tfm

hollow.1037gf: hollow1037.mf hollow.mf
	mf $<
	mv hollow1037.1037gf hollow.1037gf
	mv hollow1037.tfm hollow.tfm

hollow.1244gf: hollow1244.mf hollow.mf
	mf $<
	mv hollow1244.1244gf hollow.1244gf
	mv hollow1244.tfm hollow.tfm

hollow.1493gf: hollow1493.mf hollow.mf
	mf $<
	mv hollow1493.1493gf hollow.1493gf
	mv hollow1493.tfm hollow.tfm


hollow.1792gf: hollow1792.mf hollow.mf
	mf $<
	mv hollow1792.1792gf hollow.1792gf
	mv hollow1792.tfm hollow.tfm

#### ** (2)

.PHONY: pk

pk: hollow.1200pk hollow.1315pk hollow.1440pk hollow.1728pk hollow.2074pk \
    hollow.2488pk hollow.2986pk hollow.600pk hollow.657pk hollow.720pk \
    hollow.864pk hollow.1037pk hollow.1244pk hollow.1493pk hollow.1792pk 

hollow.%pk: hollow.%gf 
	gftopk $<

#### *** (3) 

gf: hollow.1200gf hollow.1315gf hollow.1440gf hollow.1728gf hollow.2074gf \
    hollow.2488gf hollow.2986gf


hollow.mf hollow.mp: hollow.ldf
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) hollow.ldf

hollow.ps: hollow.dvi
	dvips -o hollow.ps hollow.dvi

hollow.pdf: hollow.dvi
	dvipdfmx hollow.dvi

hollow065.eps hollow165.eps hollow103.eps hollow104.eps: hollow.mp
	mpost -numbersystem "double" hollow.mp

#hollow.600pk 

hollow.dvi: hollow.tex hollow103.eps hollow104.eps
	tex hollow.tex

#### * (1) hollow bit-map fonts

# .PHONY: pk

# pk: hollow.600pk hollow.657pk hollow.720pk hollow.864pk hollow.1037pk \
#     hollow.1244pk hollow.1493pk hollow.1792pk hollow.2602pk

#### Normal size, mode == ljfour

hollow.600pk: hollow.600gf 
	gftopk hollow.600gf

#### magstep.5 (magstephalf), mode == ljfour

hollow.657pk: hollow.657gf 
	gftopk hollow.657gf

#### magstep1, mode == ljfour
hollow.720pk: hollow.720gf
	gftopk hollow.720gf

#### magstep2, mode == ljfour
hollow.864pk: hollow.864gf
	gftopk hollow.864gf

#### magstep3, mode == ljfour
hollow.1037pk: hollow.1037gf
	gftopk hollow.1037gf

#### magstep4
hollow.1244pk: hollow.1244gf
	gftopk hollow.1244gf

#### magstep5
hollow.1493pk: hollow.1493gf
	gftopk hollow.1493gf

#### magstep6
hollow.1792pk: hollow.1792gf
	gftopk hollow.1792gf

#### mode == proofing

hollow.2602pk: hollow.2602gf
	gftopk hollow.2602gf

#### * (1) Font hollowmftest and TeX file hollow_mf_test.tex

.PHONY: hmt

hmt: hollow_mf_test.pdf

hollowmftest.600gf hollowmftest.tfm: hollowmftest.mf
	mf hollowmftest.mf

hollowmftest.600pk: hollowmftest.600gf
	gftopk hollowmftest.600gf 

hollow_mf_test.dvi: hollow_mf_test.tex hollowmftest.600pk hollowmftest.tfm
	tex hollow_mf_test.tex

hollow_mf_test.ps: hollow_mf_test.dvi
	dvips -o hollow_mf_test.ps hollow_mf_test.dvi

hollow_mf_test.pdf: hollow_mf_test.dvi
	dvipdfmx hollow_mf_test.dvi

#### * (1) 

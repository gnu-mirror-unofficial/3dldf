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

hollow_test.dvi: hollow_test.tex hollowg.600pk
	tex hollow_test.tex




#### * (1) hollowg.ldf, etc.


#### ** (2) mode == ultre (1200dpi)

hollowg.1200gf: hollow1200.mf hollowg.mf
	mf $<
	mv hollow1200.1200gf hollowg.1200gf 
	mv hollow1200.tfm hollowg.tfm

hollowg.1315gf: hollow1315.mf
	mf $<
	mv hollow1315.1315gf hollowg.1315gf hollowg.mf
	mv hollow1315.tfm hollowg.tfm

hollowg.1440gf: hollow1440.mf hollowg.mf
	mf $<
	mv hollow1440.1440gf hollowg.1440gf
	mv hollow1440.tfm hollowg.tfm

hollowg.1728gf: hollow1728.mf hollowg.mf
	mf $<
	mv hollow1728.1728gf hollowg.1728gf
	mv hollow1728.tfm hollowg.tfm

hollowg.2074gf: hollow2074.mf hollowg.mf
	mf $<
	mv hollow2074.2074gf hollowg.2074gf
	mv hollow2074.tfm hollowg.tfm

hollowg.2488gf: hollow2488.mf hollowg.mf
	mf $<
	mv hollow2488.2488gf hollowg.2488gf
	mv hollow2488.tfm hollowg.tfm

hollowg.2986gf: hollow2986.mf hollowg.mf
	mf $<
	mv hollow2986.2986gf hollowg.2986gf
	mv hollow2986.tfm hollowg.tfm

#### ** (2) mode == ljfour (600dpi)

hollowg.600gf: hollow600.mf hollowg.mf
	mf $<
	mv hollow600.600gf hollowg.600gf 
	mv hollow600.tfm hollowg.tfm


hollowg.657gf: hollow657.mf hollowg.mf
	mf $<
	mv hollow657.657gf hollowg.657gf
	mv hollow657.tfm hollowg.tfm

hollowg.720gf: hollow720.mf hollowg.mf
	mf $<
	mv hollow720.720gf hollowg.720gf
	mv hollow720.tfm hollowg.tfm

hollowg.864gf: hollow864.mf hollowg.mf
	mf $<
	mv hollow864.864gf hollowg.864gf
	mv hollow864.tfm hollowg.tfm

hollowg.1037gf: hollow1037.mf hollowg.mf
	mf $<
	mv hollow1037.1037gf hollowg.1037gf
	mv hollow1037.tfm hollowg.tfm

hollowg.1244gf: hollow1244.mf hollowg.mf
	mf $<
	mv hollow1244.1244gf hollowg.1244gf
	mv hollow1244.tfm hollowg.tfm

hollowg.1493gf: hollow1493.mf hollowg.mf
	mf $<
	mv hollow1493.1493gf hollowg.1493gf
	mv hollow1493.tfm hollowg.tfm


hollowg.1792gf: hollow1792.mf hollowg.mf
	mf $<
	mv hollow1792.1792gf hollowg.1792gf
	mv hollow1792.tfm hollowg.tfm

#### ** (2)

.PHONY: pk

pk: hollowg.1200pk hollowg.1315pk hollowg.1440pk hollowg.1728pk hollowg.2074pk \
    hollowg.2488pk hollowg.2986pk hollowg.600pk hollowg.657pk hollowg.720pk \
    hollowg.864pk hollowg.1037pk hollowg.1244pk hollowg.1493pk hollowg.1792pk 

hollowg.%pk: hollowg.%gf 
	gftopk $<

#### *** (3) 

gf: hollowg.1200gf hollowg.1315gf hollowg.1440gf hollowg.1728gf hollowg.2074gf \
    hollowg.2488gf hollowg.2986gf

hollowg.mf hollowg.mp: hollowg.ldf
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) hollowg.ldf

hollow.dvi: hollow.tex hollowA000.eps hollowg200.eps 
	tex hollow.tex

hollow.ps: hollow.dvi
	dvips -o hollow.ps hollow.dvi

hollow.pdf: hollow.dvi
	dvipdfmx hollow.dvi

.PHONY: mp

#mp: hollowg.mp

.PHONY: eps

#eps: hollowg000.eps

hollowg000.eps hollowg065.eps hollowg165.eps hollowg200.eps: hollowg.mp
	mpost -numbersystem "double" hollowg.mp

#### * (1)

hollowA.mf hollowA.mp: hollowA.ldf
	LDF_ASTRONOMY=0 LDF_DATABASE=0 3dldf$(EXEEXT) hollowA.ldf

mp: hollowA.mp

eps: hollowA000.eps

hollowA000.eps hollowA001.eps hollowA002.eps hollowA003.eps: hollowA.mp
	mpost -numbersystem "double" hollowA.mp

#### * (1) hollow bit-map fonts

# .PHONY: pk

# pk: hollowg.600pk hollowg.657pk hollowg.720pk hollowg.864pk hollowg.1037pk \
#     hollowg.1244pk hollowg.1493pk hollowg.1792pk hollowg.2602pk

#### Normal size, mode == ljfour

hollowg.600pk: hollowg.600gf 
	gftopk hollowg.600gf

#### magstep.5 (magstephalf), mode == ljfour

hollowg.657pk: hollowg.657gf 
	gftopk hollowg.657gf

#### magstep1, mode == ljfour
hollowg.720pk: hollowg.720gf
	gftopk hollowg.720gf

#### magstep2, mode == ljfour
hollowg.864pk: hollowg.864gf
	gftopk hollowg.864gf

#### magstep3, mode == ljfour
hollowg.1037pk: hollowg.1037gf
	gftopk hollowg.1037gf

#### magstep4
hollowg.1244pk: hollowg.1244gf
	gftopk hollowg.1244gf

#### magstep5
hollowg.1493pk: hollowg.1493gf
	gftopk hollowg.1493gf

#### magstep6
hollowg.1792pk: hollowg.1792gf
	gftopk hollowg.1792gf

#### mode == proofing

hollowg.2602pk: hollowg.2602gf
	gftopk hollowg.2602gf

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

#### * (1) End of Makefile.am


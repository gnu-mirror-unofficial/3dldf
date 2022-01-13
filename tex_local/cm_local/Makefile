#### Makefile
#### Created by Laurence D. Finston (LDF) Tue 11 Jan 2022 05:45:35 AM CET

## * (1) Top

## ** (2)

.PHONY: gray-dvi
dvi: cmssbxldf.dvi 

.PHONY: gray-ps
ps: cmssbxldf.ps 

.PHONY: gray-pdf
pdf: cmssbxldf.pdf 

## cmssbx10ldf.* is the proofing output (with grayfont).  LDF 2022.01.11.

cmssbx10ldf.ps: cmssbx10ldf.dvi
	dvips -o cmssbx10ldf.ps cmssbx10ldf.dvi

cmssbx10ldf.pdf: cmssbx10ldf.dvi
	dvipdfmx cmssbx10ldf.dvi

cmssbx10ldf.dvi: cmssbx10ldf.2602gf
	gftodvi cmssbx10ldf.2602gf

cmssbx10ldf.2602gf cmssbx10ldf.tfm: cmssbx10ldf.mf romanldf.mf romanuldf.mf cmbaseldf.mf
	mf cmssbx10ldf.mf

# cmssbx10ldf.8000gf: cmssbx10ldf.mf romanldf.mf romanuldf.mf cmbaseldf.mf
# 	mf '\mode:=dpdfezzz;' input cmssbx10ldf.mf

# cmssbx10ldf.8000pk: cmssbx10ldf.8000gf
# 	gftopk cmssbx10ldf.8000gf

cmssbx10ldf.2400gf: cmssbx10ldf.mf romanldf.mf romanuldf.mf cmbaseldf.mf
	mf '\mode:=supre;' input cmssbx10ldf.mf

cmssbx10ldf.2400pk: cmssbx10ldf.2400gf
	gftopk cmssbx10ldf.2400gf

cmssbx10ldf.1200gf: cmssbx10ldf.mf romanldf.mf romanuldf.mf cmbaseldf.mf
	mf '\mode:=ultre;' input cmssbx10ldf.mf

cmssbx10ldf.1200pk: cmssbx10ldf.1200gf
	gftopk cmssbx10ldf.1200gf


#### ** (2)

cmbx12ldf.ps: cmbx12ldf.dvi
	dvips -o cmbx12ldf.ps cmbx12ldf.dvi

cmbx12ldf.pdf: cmbx12ldf.dvi
	dvipdfmx cmbx12ldf.dvi

cmbx12ldf.dvi: cmbx12ldf.2602gf
	gftodvi cmbx12ldf.2602gf

cmbx12ldf.2602gf cmbx12ldf.tfm: cmbx12ldf.mf romanldf.mf romanuldf.mf cmbaseldf.mf
	mf cmbx12ldf.mf

# cmbx12ldf.8000gf: cmbx12ldf.mf romanldf.mf romanuldf.mf cmbaseldf.mf
# 	mf '\mode:=dpdfezzz;' input cmbx12ldf.mf

# cmbx12ldf.8000pk: cmbx12ldf.8000gf
# 	gftopk cmbx12ldf.8000gf

cmbx12ldf.2400gf: cmbx12ldf.mf romanldf.mf romanuldf.mf cmbaseldf.mf
	mf '\mode:=supre;' input cmbx12ldf.mf

cmbx12ldf.2400pk: cmbx12ldf.2400gf
	gftopk cmbx12ldf.2400gf

cmbx12ldf.1200gf: cmbx12ldf.mf romanldf.mf romanuldf.mf cmbaseldf.mf
	mf '\mode:=ultre;' input cmbx12ldf.mf

cmbx12ldf.1200pk: cmbx12ldf.1200gf
	gftopk cmbx12ldf.1200gf

#### ** (2)

cldf.dvi: cldf.tex cmssbx10ldf.tfm 
	tex cldf.tex

cldf.ps: cldf.dvi cmssbx10ldf.2400pk
	dvips -D 2400 -Z -o cldf.ps cldf.dvi

cldf.pdf: cldf.ps
	ps2pdf cldf.ps

## ** (2)

.PHONY: dvi
dvi: cmssbxldf.dvi 

.PHONY: ps
ps: cmssbxldf.ps 

.PHONY: pdf
pdf: cmssbxldf.pdf 

cmssbxldf.dvi: cmssbxldf.tex cmssbx10ldf.tfm
	tex cmssbxldf.tex

cmssbxldf.ps: cmssbxldf.dvi cmssbx10ldf.2400pk
	dvips -D 2400 -Z cmssbxldf.ps cmssbxldf.dvi

cmssbxldf.pdf: cmssbxldf.ps
	ps2pdf cmssbxldf.ps


.PHONY: pl

pl: cmssbx10ldf.pl

cmssbx10ldf.pl: cmssbx10ldf.tfm
	tftopl cmssbx10ldf.tfm

## * (1) End

## Local Variables:
## eval:(outline-minor-mode t)
## outline-regexp:"## *\\*+\\|@\\*[0-9]*"
## abbrev-mode:t
## End:

#### Makefile.am
#### Created by Laurence D. Finston (LDF) Fri 24 Dec 2021 07:16:44 AM CET

.PHONY: eps
.PHONY: dvi
.PHONY: ps
.PHONY: pdf

eps: hollow_ssb065.eps # ttemp065.eps 
dvi: hollow_ssb.dvi    # ttemp.dvi
ps: hollow_ssb.ps      # ttemp.ps
pdf: hollow_ssb.pdf    # ttemp.pdf

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

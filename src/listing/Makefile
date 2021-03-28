#### Makefile
#### Created by Laurence D. Finston 10.2017  

.PHONY: all

.PHONY: run-a

.PHONY: run

.PHONY: pdf

.PHONY: ps

.PHONY: dvi

.PHONY: clean

pdf: 3DLDF_listing.pdf

ps: 3DLDF_listing.ps

dvi: 3DLDF_listing.dvi

all: run 

run: 3DLDF_listing.dvi

## run-a:  Update TOC file

run-a: 
	tex 3DLDF_listing.tex && tex 3DLDF_listing.tex

3DLDF_listing.pdf: 3DLDF_listing.ps
	ps2pdf 3DLDF_listing.ps

3DLDF_listing.ps: 3DLDF_listing.dvi 
	dvips -o 3DLDF_listing.ps 3DLDF_listing.dvi

3DLDF_listing.dvi: 3DLDF_listing.tex 
	tex 3DLDF_listing.tex

clean:  
	rm -f *.dvi *.ps *.pdf *.log *.toc







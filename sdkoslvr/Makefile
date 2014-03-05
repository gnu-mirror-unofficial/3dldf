#### Makefile
#### Created by Laurence D. Finston (LDF) Wed Mar  5 12:07:54 CET 2014

sudoku.cxx : sudoku.web
	ctangle sudoku.web
	mv sudoku.c sudoku.cxx

sudoku.o: sudoku.cxx fldtype.hxx
	g++ -D DEBUG_COMPILE=1 -I. -c -g -o sudoku.o sudoku.cxx

fldtype.cxx fldtype.hxx: fldtype.web
	ctangle fldtype.web
	mv fldtype.c fldtype.cxx

fldtype.o: fldtype.cxx
	g++ -D DEBUG_COMPILE=1 -I. -c -g -o fldtype.o fldtype.cxx

sudoku$(EXEEXT): sudoku.o fldtype.o
	g++ -o sudoku$(EXEEXT) sudoku.o fldtype.o

.PHONY: run

run: sudoku$(EXEEXT)
	./sudoku$(EXEEXT)


.PHONY: run-t

run-t: sudoku$(EXEEXT)
	./sudoku$(EXEEXT) 2> ttemp.txt

.PHONY: run-p

run-p: sudoku$(EXEEXT)
	./sudoku$(EXEEXT) $(PASS) 2> ttemp.txt


.PHONY: query

query: 
	echo "A == $A"

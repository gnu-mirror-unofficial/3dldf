#! /bin/bash -x

#### rebuild.sh
#### [...]/3dldf/rebuild.sh

#### Created by Laurence D. Finston (LDF) Mon Jun  3 20:42:11 CEST 2013

cd /home/lfinsto/3dldf

#echo "Number of args:  $#"

if test $# -gt 0
then
   make maintainer-clean 
fi

libtoolize && aclocal && autoconf && autoheader && automake \
   && configure --prefix=`pwd` LIBS="-lgsl -lgslcblas -lm"
r=$?

if test $r -eq 0 -a $# -gt 1
then
make
fi


exit 0

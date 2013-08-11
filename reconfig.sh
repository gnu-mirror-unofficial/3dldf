#! /bin/bash

#### reconfig.sh
#### /home/lfinsto/3dldf_savannah/master/reconfig.sh

#### Created by Laurence D. Finston (LDF) Sun Aug  4 18:59:09 CEST 2013

if test $# -gt 0 
then
   if test $1 -ne 0 
   then
      echo "Not building  shared libraries"
      CONF_STATIC="--disable-shared " 
   else
      echo "Building  shared libraries"
   fi
   else
      echo "Building  shared libraries"
fi

configure CPPFLAGS="-I.." --prefix=`pwd` $CONF_STATIC LIBS="-lgsl -lgslcblas -lm"

if test $# -gt 1
then
   echo "Calling make"
   make
fi

exit 0
